# Complete source: GRWTSK.Algebra.LinearAlgebra.FiniteChain.Variant9e1a8b74abc46dda1ef75e67500a957a8ad4b1fc284f6abfddf6b80fb2209793

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8013473400ad9e0d1e641781aa5834c347b909a` · SHA-256 `85a3198cb4370ee0850a44cd9c1fea1bd7d6adfe84e6f07fcc6a7778840cfb0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FiniteIntegralChain.Variant926221d0973e1de2699a628ad2a5aa8cc2da1e2f51b6f92487285d50300f5558","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"926221d0973e1de2699a628ad2a5aa8cc2da1e2f51b6f92487285d50300f5558","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.FiniteIntegralChain.Variant926221d0973e1de2699a628ad2a5aa8cc2da1e2f51b6f92487285d50300f5558","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"926221d0973e1de2699a628ad2a5aa8cc2da1e2f51b6f92487285d50300f5558","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/FiniteChain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.Event
import Mathlib.LinearAlgebra.Matrix.ToLin

/-!
# Finite integral chain shells

The chain group in degree `r` is the finite free module
`Fin (rank r) → ℤ`.  Matrix rows are targets and columns are sources, so
`boundaryMatrix r` represents `C_(r+1) → C_r`.  Degree zero has the implicit
zero outgoing differential.

This graded object is intentionally separate from the single-carrier cubical
endomorphism used elsewhere in the project.
-/


namespace GRWTSK.Algebra.LinearAlgebra.FiniteIntegralChain.Variant926221d0973e1de2699a628ad2a5aa8cc2da1e2f51b6f92487285d50300f5558

namespace Mathematics.Homology

abbrev FiniteFree (rank : Nat) := Fin rank → ℤ

/-- A finite graded free integral chain complex with its source certificate. -/
structure FiniteIntegralChain where
  rank : Nat → Nat
  boundaryMatrix :
    (degree : Nat) →
      Matrix (Fin (rank degree)) (Fin (rank (Nat.succ degree))) ℤ
  boundary_squared :
    ∀ degree,
      boundaryMatrix degree * boundaryMatrix (Nat.succ degree) = 0
  sourceAddress : ObjectAddress
  chainCertificate : ObjectAddress

namespace FiniteIntegralChain

/-- The linear boundary map represented by the persisted integer matrix. -/
def boundaryMap
    (chain : FiniteIntegralChain) (degree : Nat) :
    FiniteFree (chain.rank (Nat.succ degree)) →ₗ[ℤ]
      FiniteFree (chain.rank degree) :=
  Matrix.toLin' (chain.boundaryMatrix degree)

/-- The represented linear differential squares to zero in every degree. -/
theorem boundaryMap_squared
    (chain : FiniteIntegralChain) (degree : Nat) :
    (chain.boundaryMap degree).comp
        (chain.boundaryMap (Nat.succ degree)) =
      0 := by
  unfold boundaryMap
  rw [← Matrix.toLin'_mul]
  rw [chain.boundary_squared degree]
  exact map_zero Matrix.toLin'

end FiniteIntegralChain

end Mathematics.Homology
```
