# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EulerProduct.Variant8ae9e90626fd46817a99af7c9fcaeb97b979ac0ab60ca348a3df15992a29b921

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d34b2849eb9056a176a6affa17fd398927d3855` · SHA-256 `030f3ae219ecd4c5d4eab92895dfa1d08c37f3d67a808901f4f864ae1f960704`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrimeWindow.Variant8c76a0b9093198eda9304e2f5679b03d8189bdc634a06a127de09be2a11a5c5e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c76a0b9093198eda9304e2f5679b03d8189bdc634a06a127de09be2a11a5c5e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PrimeWindow.Variant8c76a0b9093198eda9304e2f5679b03d8189bdc634a06a127de09be2a11a5c5e","mathematical_subject":"Computation.DataStructures","original_sha256":"8c76a0b9093198eda9304e2f5679b03d8189bdc634a06a127de09be2a11a5c5e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Number/EulerProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Number.ArithmeticFunction

/-!
# Finite Euler products

Finite Euler windows belong to `Number`.

An infinite Euler product identity is not a finite arithmetic object.  It enters
later through `AnalyticNumber.EulerProduct` with convergence and product
identity authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrimeWindow.Variant8c76a0b9093198eda9304e2f5679b03d8189bdc634a06a127de09be2a11a5c5e

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
