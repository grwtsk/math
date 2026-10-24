# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EulerProduct.Varianta7228b034d62ac7bc0883724e68bea123595dd026654c628f9e1d6cfa85a8489

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c76bd8fe844b70ba4f5272d0a4d50aafca727fe8` · SHA-256 `4d468412cd92b958b026c325ff97ef0444f4d19534192528f0a9f87d83efea01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrimeWindow.Variant7b4e2bfc434913fafbfb9ee2d5233395f406fbcca1de5b36d5ae808262c62f3f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b4e2bfc434913fafbfb9ee2d5233395f406fbcca1de5b36d5ae808262c62f3f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PrimeWindow.Variant7b4e2bfc434913fafbfb9ee2d5233395f406fbcca1de5b36d5ae808262c62f3f","mathematical_subject":"Computation.DataStructures","original_sha256":"7b4e2bfc434913fafbfb9ee2d5233395f406fbcca1de5b36d5ae808262c62f3f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Application Support/Claude/local-agent-mode-sessions/ca894c7e-fbfc-4f86-9031-8b5d43fd5945/be06d025-2292-49e3-808a-dc51ca23d607/local_0de9d1e0-f1a1-472f-98ec-503d7f23f427/outputs/formal 2/lib/Number/EulerProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Number.ArithmeticFunction

/-!
# Finite Euler products

Finite Euler windows belong to `Number`.

An infinite Euler product identity is not a finite arithmetic object. It enters
later through `AnalyticNumber.EulerProduct` with convergence and product
identity authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrimeWindow.Variant7b4e2bfc434913fafbfb9ee2d5233395f406fbcca1de5b36d5ae808262c62f3f

namespace Number

/-- Finite list of primes with a certificate-gated primality/soundness claim. -/
structure PrimeWindow where
  primes : List Nat
  primeSound : Prop
  primeSoundProof : primeSound

/-- One finite local Euler factor. -/
structure LocalEulerFactor where
  prime : Nat
  coeffs : List Int
  factorSound : Prop
  factorSoundProof : factorSound

/-- A finite Euler product window. -/
structure FiniteEulerProduct where
  window : PrimeWindow
  factors : List LocalEulerFactor
  expandedCoeffs : List Int
  expansionSound : Prop
  expansionProof : expansionSound

theorem prime_window_sound
    (W : PrimeWindow) :
    W.primeSound :=
  W.primeSoundProof

theorem local_euler_factor_sound
    (F : LocalEulerFactor) :
    F.factorSound :=
  F.factorSoundProof

theorem finite_euler_product_expansion_sound
    (P : FiniteEulerProduct) :
    P.expansionSound :=
  P.expansionProof

/-- A finite Euler product does not prove an infinite Euler product identity. -/
def FiniteEulerProductProvesInfiniteEulerProduct
    (_P : FiniteEulerProduct) : Prop :=
  False

theorem finite_euler_product_not_infinite_identity
    (P : FiniteEulerProduct) :
    ¬ FiniteEulerProductProvesInfiniteEulerProduct P := by
  intro h
  exact h

end Number
```
