# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Li2CertificateTest.Variant985be961175fbbcd38eca47fae2e53e1a4bda45a9056d32cdf75c8f313c98914

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5e109b40eae27248f9c783dc95568152f0a442d` · SHA-256 `46ca5b6f3ab4eff1bf437ec5e4d65efd0e6b8eb91949c107b03a843625b1c120`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GAltExpr.Variant3e06cbfe429fae4db0663536452d49113dc44c9f64e2de85784c35bd883f3df0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e06cbfe429fae4db0663536452d49113dc44c9f64e2de85784c35bd883f3df0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GAltExpr.Variant3e06cbfe429fae4db0663536452d49113dc44c9f64e2de85784c35bd883f3df0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3e06cbfe429fae4db0663536452d49113dc44c9f64e2de85784c35bd883f3df0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Examples/Li2CertificateTest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Validity.Bounds

/-!
# Certificate-Based Integration Test for li(2)

This file tests the certificate-based integration approach, which separates
the search phase (finding good partitions) from the verification phase
(checking that the bounds are valid).

## Key Insight

Standard approach: `native_decide` on 3000-partition uniform integration
- Kernel executes: evalInterval?1 3000 times, with branching/control flow

Certificate approach: Pre-compute partition bounds, verify linearly
- Certificate: List of (domain, bound) pairs
- Kernel executes: for each entry, verify bound is valid + sum is correct
- NO branching, NO recursion, just linear iteration

## Example Usage

The workflow is:
1. Run buildCertificate in untrusted code (Python, or `#eval` during development)
2. Save the certificate as a literal List of PartitionEntry
3. Use checkIntegralCertLowerBound/checkIntegralCertUpperBound for verification
4. The kernel only runs the linear checker, not the adaptive search
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GAltExpr.Variant3e06cbfe429fae4db0663536452d49113dc44c9f64e2de85784c35bd883f3df0

namespace Li2CertificateTest

open LeanCert.Core
open LeanCert.Engine
open LeanCert.Validity.CertificateIntegration

/-- g(t) = log(1-t²) / (log(1+t) · log(1-t)) - the integrand for li(2) -/
def g_alt_expr : Expr :=
  Expr.mul
    (Expr.log (Expr.add (Expr.const 1)
      (Expr.neg (Expr.mul (Expr.var 0) (Expr.var 0)))))
    (Expr.inv
      (Expr.mul
        (Expr.log (Expr.add (Expr.const 1) (Expr.var 0)))
        (Expr.log (Expr.add (Expr.const 1) (Expr.neg (Expr.var 0))))))

/-- Small test interval [0.2, 0.8] for quick verification -/
def small_interval : IntervalRat := ⟨1/5, 4/5, by norm_num⟩

/-! ### Example: Manually constructed certificate

This demonstrates the certificate structure. In practice, you would:
1. Run `buildCertificate` during development
2. Copy the partition entries to a literal list
3. Use the literal list for verification

For now, we construct a single-partition certificate inline.
The key point is that verification is LINEAR - no search logic.
-/

/-- Manually constructed partition entry.
    Domain: [1/5, 4/5]
    Bound: Computed from evalInterval?1 g_alt_expr [1/5, 4/5]

    In practice, these would be pre-computed and stored as literals. -/
def manual_entry : PartitionEntry :=
  match evalInterval?1 g_alt_expr small_interval with
  | some computed =>
    let width := small_interval.hi - small_interval.lo
    let blo := min (computed.lo * width) (computed.hi * width)
    let bhi := max (computed.lo * width) (computed.hi * width)
    { domain := small_interval
      bound := ⟨blo, bhi, le_max_of_le_left (min_le_left _ _)⟩ }
  | none => default  -- Fallback (should not happen)

/-- Manual certificate with single partition -/
def manual_cert : IntegralCertificate :=
  { expr_id := "g_alt_test"
    domain := small_interval
    partitions := [manual_entry]
  }

-- Debug: Check each component of verification individually
-- First, let's verify the partition entry is created correctly
#eval do
  let entry := manual_entry
  IO.println s!"Entry domain: [{entry.domain.lo}, {entry.domain.hi}]"
  IO.println s!"Entry bound: [{entry.bound.lo}, {entry.bound.hi}]"

-- The single partition check should work
-- example : checkPartitionBound g_alt_expr manual_entry = true := by native_decide
#eval checkPartitionBound g_alt_expr manual_entry

-- Coverage check passes (single partition covers the domain)
-- example : checkCoverage manual_cert.partitions manual_cert.domain = true := by native_decide
#eval checkCoverage manual_cert.partitions manual_cert.domain

-- All bounds check passes
-- example : checkAllBounds g_alt_expr manual_cert.partitions = true := by native_decide
#eval checkAllBounds g_alt_expr manual_cert.partitions

-- Check sum computation
#eval do
  let sum := sumBounds manual_cert.partitions
  IO.println s!"Sum of bounds: [{sum.lo}, {sum.hi}]"

-- Check target containment (need large target for single-partition case)
#eval checkSumInTarget manual_cert.partitions ⟨-100, 100, by norm_num⟩

-- Full verification with large target
#eval verifyCertificate g_alt_expr manual_cert ⟨-100, 100, by norm_num⟩

-- Verified example with native_decide
example : verifyCertificate g_alt_expr manual_cert
    ⟨-100, 100, by norm_num⟩ = true := by native_decide

/-! ### Comparison: Certificate vs Uniform

Both approaches verify the same thing, but certificate checking is LINEAR
while uniform partitioning involves the search/subdivision logic.
-/

-- Quick smoke test: uniform integration works on small interval
example : (LeanCert.Validity.Integration.integratePartitionWithInv g_alt_expr small_interval 10).isSome = true := by
  native_decide

end Li2CertificateTest
```
