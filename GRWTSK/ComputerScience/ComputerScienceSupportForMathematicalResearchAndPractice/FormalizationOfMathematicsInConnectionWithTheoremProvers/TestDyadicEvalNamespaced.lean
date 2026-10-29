-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestI.Variant58dc88914741ae4b1f5bc8a1739c10f3e5d753b5ad59d40bc37bc682c8241c5e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"58dc88914741ae4b1f5bc8a1739c10f3e5d753b5ad59d40bc37bc682c8241c5e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TestI.Variant58dc88914741ae4b1f5bc8a1739c10f3e5d753b5ad59d40bc37bc682c8241c5e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"58dc88914741ae4b1f5bc8a1739c10f3e5d753b5ad59d40bc37bc682c8241c5e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/TestDyadicEval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Tests for dyadic interval evaluation of sinc, arsinh, and transcendental compositions.
Verifies that `evalIntervalDyadic` produces correct enclosures for these functions.
-/
import LeanCert.Engine.IntervalEvalDyadic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestI.Variant58dc88914741ae4b1f5bc8a1739c10f3e5d753b5ad59d40bc37bc682c8241c5e

open LeanCert.Core
open LeanCert.Engine

/-! ### Test intervals -/

/-- [0.5, 1.5] -/
def testI : IntervalRat := ⟨1/2, 3/2, by norm_num⟩
/-- [-2, 2] -/
def wideI : IntervalRat := ⟨-2, 2, by norm_num⟩
/-- [-0.1, 0.1] near zero -/
def nearZeroI : IntervalRat := ⟨-1/10, 1/10, by norm_num⟩
/-- [0, 0] singleton -/
def zeroI : IntervalRat := ⟨0, 0, by norm_num⟩

def toDyadic (I : IntervalRat) : IntervalDyadic := IntervalDyadic.ofIntervalRat I (-53)

def env (I : IntervalRat) : IntervalDyadicEnv := fun _ => toDyadic I

def cfg : DyadicConfig := {}

/-! ### sinc tests -/

-- sinc(x) on [0.5, 1.5]: should be within [-1, 1]
#eval do
  let r := evalIntervalDyadic (Expr.sinc (Expr.var 0)) (env testI) cfg
  IO.println s!"sinc([0.5, 1.5]): [{r.lo.toRat}, {r.hi.toRat}]"

-- sinc(x) on [-0.1, 0.1]: near-zero region, sinc(0) = 1
#eval do
  let r := evalIntervalDyadic (Expr.sinc (Expr.var 0)) (env nearZeroI) cfg
  IO.println s!"sinc([-0.1, 0.1]): [{r.lo.toRat}, {r.hi.toRat}]"

-- sinc(x) on [-2, 2]: wide interval
#eval do
  let r := evalIntervalDyadic (Expr.sinc (Expr.var 0)) (env wideI) cfg
  IO.println s!"sinc([-2, 2]): [{r.lo.toRat}, {r.hi.toRat}]"

/-! ### arsinh tests -/

-- arsinh(x) on [0.5, 1.5]
#eval do
  let r := evalIntervalDyadic (Expr.arsinh (Expr.var 0)) (env testI) cfg
  IO.println s!"arsinh([0.5, 1.5]): [{r.lo.toRat}, {r.hi.toRat}]"

-- arsinh(x) on [-2, 2]
#eval do
  let r := evalIntervalDyadic (Expr.arsinh (Expr.var 0)) (env wideI) cfg
  IO.println s!"arsinh([-2, 2]): [{r.lo.toRat}, {r.hi.toRat}]"

-- arsinh(0) = 0, so on [0, 0] should contain 0
#eval do
  let r := evalIntervalDyadic (Expr.arsinh (Expr.var 0)) (env zeroI) cfg
  IO.println s!"arsinh([0, 0]): [{r.lo.toRat}, {r.hi.toRat}]"

/-! ### Composition tests: sinc and arsinh with other functions -/

-- sin(arsinh(x)) on [0.5, 1.5]
#eval do
  let e := Expr.sin (Expr.arsinh (Expr.var 0))
  let r := evalIntervalDyadic e (env testI) cfg
  IO.println s!"sin(arsinh([0.5, 1.5])): [{r.lo.toRat}, {r.hi.toRat}]"

-- exp(sinc(x)) on [-2, 2]: sinc ∈ [-1,1] so exp(sinc) ∈ [1/e, e]
#eval do
  let e := Expr.exp (Expr.sinc (Expr.var 0))
  let r := evalIntervalDyadic e (env wideI) cfg
  IO.println s!"exp(sinc([-2, 2])): [{r.lo.toRat}, {r.hi.toRat}]"

-- arsinh(sin(x)) on [-2, 2]
#eval do
  let e := Expr.arsinh (Expr.sin (Expr.var 0))
  let r := evalIntervalDyadic e (env wideI) cfg
  IO.println s!"arsinh(sin([-2, 2])): [{r.lo.toRat}, {r.hi.toRat}]"

-- sinc(x) * arsinh(x) + cos(x) on [0.5, 1.5]
#eval do
  let e := Expr.add
    (Expr.mul (Expr.sinc (Expr.var 0)) (Expr.arsinh (Expr.var 0)))
    (Expr.cos (Expr.var 0))
  let r := evalIntervalDyadic e (env testI) cfg
  IO.println s!"sinc(x)*arsinh(x)+cos(x) on [0.5, 1.5]: [{r.lo.toRat}, {r.hi.toRat}]"
