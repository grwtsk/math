# Complete source: GRWTSK.Algebra.LinearAlgebra.SmithCertificate.Variant797456fb622a8d590113b4cb0223da5dad8dfd11fa647f983c80a12a1cefd1e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23ce3de2fb204e802692326e08de25e8b6d0afc3` · SHA-256 `d1524c460e138bb23fcc9b17a68edf75cc86071556d0c22f221c39c0220813aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.DegreeSmithCertificate.Variant662216bee9f04ce3b65792cd15427f4d57ec0a6741ea9e9bbc9e190eb5b319a7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"662216bee9f04ce3b65792cd15427f4d57ec0a6741ea9e9bbc9e190eb5b319a7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.DegreeSmithCertificate.Variant662216bee9f04ce3b65792cd15427f4d57ec0a6741ea9e9bbc9e190eb5b319a7","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"662216bee9f04ce3b65792cd15427f4d57ec0a6741ea9e9bbc9e190eb5b319a7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/SmithCertificate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.DegreeHomology
import Mathlib.LinearAlgebra.FreeModule.PID
import Mathlib.LinearAlgebra.FreeModule.Finite.Basic

/-!
# Compatible Smith certificate for one homology degree

Homology torsion is computed from the inclusion
`im ∂(r+1) ≤ ker ∂r`.  Independent Smith forms of adjacent boundary
matrices are not sufficient.  The persisted certificate therefore contains
a Smith basis for the boundary submodule inside the cycle module and an exact
free-plus-finite decomposition of the resulting quotient.
-/


namespace GRWTSK.Algebra.LinearAlgebra.DegreeSmithCertificate.Variant662216bee9f04ce3b65792cd15427f4d57ec0a6741ea9e9bbc9e190eb5b319a7

namespace Mathematics.Homology

noncomputable section

/-- Finite torsion coordinates selected by normalized invariant factors. -/
abbrev SmithTorsionCoordinates
    {count : Nat} (orders : Fin count → Nat) :=
  ∀ index, ZMod (orders index)

/-- Executable and kernel-facing Smith data for one degree. -/
structure DegreeSmithCertificate
    (chain : FiniteIntegralChain) (degree : Nat) where
  cycleRank : Nat
  boundaryRank : Nat
  smith :
    Module.Basis.SmithNormalForm
      (chain.boundaries degree)
      (Fin cycleRank)
      boundaryRank
  torsionCount : Nat
  torsionOrders : Fin torsionCount → Nat
  orders_ge_two :
    ∀ index, 2 ≤ torsionOrders index
  orders_dvd_next :
    ∀ {left right},
      left.val + 1 = right.val →
        torsionOrders left ∣ torsionOrders right
  torsionIndex : Fin torsionCount ↪ Fin boundaryRank
  torsion_matches_smith :
    ∀ index,
      Int.natAbs (smith.a (torsionIndex index)) =
        torsionOrders index
  torsion_complete :
    ∀ smithIndex,
      1 < Int.natAbs (smith.a smithIndex) →
        ∃ torsionIndexValue,
          torsionIndex torsionIndexValue = smithIndex
  freeRank : Nat
  decomposition :
    chain.DegreeHomology degree ≃+
      (FiniteFree freeRank ×
        SmithTorsionCoordinates torsionOrders)
  sourceDigest : Digest
  smithReceipt : ObjectAddress
  kernelCertificate : ObjectAddress

namespace DegreeSmithCertificate

variable
    {chain : FiniteIntegralChain} {degree : Nat}
    (certificate : DegreeSmithCertificate chain degree)

/-- Every displayed torsion order is nonzero. -/
theorem torsionOrder_ne_zero
    (index : Fin certificate.torsionCount) :
    certificate.torsionOrders index ≠ 0 :=
  Nat.ne_of_gt (lt_of_lt_of_le Nat.zero_lt_two
    (certificate.orders_ge_two index))

/-- The certified finite coordinate sector is enumerable. -/
noncomputable instance torsionFintype :
    Fintype (SmithTorsionCoordinates certificate.torsionOrders) := by
  letI (index : Fin certificate.torsionCount) :
      NeZero (certificate.torsionOrders index) :=
    ⟨certificate.torsionOrder_ne_zero index⟩
  infer_instance

end DegreeSmithCertificate

end

end Mathematics.Homology
```
