# isConjExponent_iff_eq_conjExponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ad05334-39b7-9e17-4631-4b9a67a77857",
  "kind": "lemma",
  "lexical_name": "isConjExponent_iff_eq_conjExponent",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "isconjexponent-iff-eq-conjexponent--8698dbe6de9d9886803711f5",
  "source": {
    "blob": "8c52788e88744124b23a343548bf79c62bd274c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 713,
    "line": 581,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ConjExponents/Variantbe5869b1d089c3cf61d0353465150d3d6766965a0aa085cbeee6c921f8214974.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8698dbe6de9d9886803711f58920ec1d68697cbef8520d3d2a3502bf47500d48",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ConjExponents/Variantbe5869b1d089c3cf61d0353465150d3d6766965a0aa085cbeee6c921f8214974.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ad05334-39b7-9e17-4631-4b9a67a77857`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 581–713.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isConjExponent_iff_eq_conjExponent (hp : 1 ≤ p) : p.HolderConjugate q ↔ q = 1 + (p - 1)⁻¹ :=
  ⟨fun h ↦ h.conj_eq, by rintro rfl; exact .conjExponent hp⟩

end ENNReal

namespace Real

@[deprecated (since := "2025-03-14")] alias IsConjExponent := HolderConjugate
@[deprecated (since := "2025-03-14")] alias isConjExponent_iff := holderConjugate_iff
@[deprecated (since := "2025-03-14")] alias IsConjExponent.one_lt := HolderTriple.lt
@[deprecated (since := "2025-03-14")] alias IsConjExponent.inv_add_inv_conj :=
  HolderConjugate.inv_add_inv_eq_one

namespace IsConjExponent

@[deprecated (since := "2025-03-14")] alias pos := HolderTriple.pos
@[deprecated (since := "2025-03-14")] alias nonneg := HolderTriple.nonneg
@[deprecated (since := "2025-03-14")] alias ne_zero := HolderTriple.ne_zero
@[deprecated (since := "2025-03-14")] alias sub_one_pos := HolderConjugate.sub_one_pos
@[deprecated (since := "2025-03-14")] alias sub_one_ne_zero := HolderConjugate.sub_one_ne_zero
@[deprecated (since := "2025-03-14")] alias inv_pos := HolderTriple.inv_pos
@[deprecated (since := "2025-03-14")] alias inv_nonneg := HolderTriple.inv_nonneg
@[deprecated (since := "2025-03-14")] alias inv_ne_zero := HolderTriple.inv_ne_zero
@[deprecated (since := "2025-03-14")] alias one_div_pos := HolderTriple.one_div_pos
@[deprecated (since := "2025-03-14")] alias one_div_nonneg := HolderTriple.one_div_nonneg
@[deprecated (since := "2025-03-14")] alias one_div_ne_zero := HolderTriple.one_div_ne_zero
@[deprecated (since := "2025-03-14")] alias conj_eq := HolderConjugate.conjugate_eq
@[deprecated (since := "2025-03-14")] alias conjExponent_eq := HolderConjugate.conjExponent_eq
@[deprecated (since := "2025-03-14")] alias one_sub_inv := HolderConjugate.one_sub_inv
@[deprecated (since := "2025-03-14")] alias inv_sub_one := HolderConjugate.inv_sub_one
@[deprecated (since := "2025-03-14")] alias sub_one_mul_conj := HolderConjugate.sub_one_mul_conj
@[deprecated (since := "2025-03-14")] alias mul_eq_add := HolderConjugate.mul_eq_add
@[deprecated (since := "2025-03-14")] alias symm := HolderConjugate.symm
@[deprecated (since := "2025-03-14")] alias div_conj_eq_sub_one :=
  HolderConjugate.div_conj_eq_sub_one
@[deprecated (since := "2025-03-14")] alias inv_inv := HolderConjugate.inv_inv
@[deprecated (since := "2025-03-14")] alias inv_one_sub_inv := HolderConjugate.inv_one_sub_inv
@[deprecated (since := "2025-03-14")] alias one_sub_inv_inv := HolderConjugate.one_sub_inv_inv
@[deprecated (since := "2025-03-14")] alias inv_add_inv_conj_ennreal :=
  HolderConjugate.inv_add_inv_ennreal

end IsConjExponent

@[deprecated (since := "2025-03-14")] alias isConjExponent_comm := holderConjugate_comm
@[deprecated (since := "2025-03-14")] alias isConjExponent_iff_eq_conjExponent :=
  holderConjugate_iff_eq_conjExponent
@[deprecated (since := "2025-03-14")] alias IsConjExponent.conjExponent :=
  HolderConjugate.conjExponent
@[deprecated (since := "2025-03-14")] alias isConjExponent_one_div := holderConjugate_one_div

end Real

namespace NNReal

@[deprecated (since := "2025-03-14")] alias IsConjExponent := HolderConjugate
@[deprecated (since := "2025-03-14")] alias isConjExponent_iff := holderConjugate_iff
@[deprecated (since := "2025-03-14")] alias IsConjExponent.one_lt := HolderTriple.lt
@[deprecated (since := "2025-03-14")] alias IsConjExponent.inv_add_inv_conj :=
  HolderConjugate.inv_add_inv_eq_one
@[deprecated (since := "2025-03-14")] alias isConjExponent_coe := holderConjugate_coe_iff
@[deprecated (since := "2025-03-14")] alias IsConjExponent.coe := HolderConjugate.coe

namespace IsConjExponent

@[deprecated (since := "2025-03-14")] alias one_le := HolderTriple.lt
@[deprecated (since := "2025-03-14")] alias pos := HolderTriple.pos
@[deprecated (since := "2025-03-14")] alias nonneg := HolderTriple.nonneg
@[deprecated (since := "2025-03-14")] alias ne_zero := HolderTriple.ne_zero
@[deprecated (since := "2025-03-14")] alias sub_one_pos := HolderConjugate.sub_one_pos
@[deprecated (since := "2025-03-14")] alias sub_one_ne_zero := HolderConjugate.sub_one_ne_zero
@[deprecated (since := "2025-03-14")] alias inv_pos := HolderTriple.inv_pos
@[deprecated (since := "2025-03-14")] alias inv_nonneg := HolderTriple.inv_nonneg
@[deprecated (since := "2025-03-14")] alias inv_ne_zero := HolderTriple.inv_ne_zero
@[deprecated (since := "2025-03-14")] alias one_div_pos := HolderTriple.one_div_pos
@[deprecated (since := "2025-03-14")] alias one_div_nonneg := HolderTriple.one_div_nonneg
@[deprecated (since := "2025-03-14")] alias one_div_ne_zero := HolderTriple.one_div_ne_zero
@[deprecated (since := "2025-03-14")] alias conj_eq := HolderConjugate.conjugate_eq
@[deprecated (since := "2025-03-14")] alias conjExponent_eq := HolderConjugate.conjExponent_eq
@[deprecated (since := "2025-03-14")] alias one_sub_inv := HolderConjugate.one_sub_inv
@[deprecated (since := "2025-03-14")] alias sub_one_mul_conj := HolderConjugate.sub_one_mul_conj
@[deprecated (since := "2025-03-14")] alias mul_eq_add := HolderConjugate.mul_eq_add
@[deprecated (since := "2025-03-14")] alias symm := HolderConjugate.symm
@[deprecated (since := "2025-03-14")] alias div_conj_eq_sub_one :=
  HolderConjugate.div_conj_eq_sub_one
@[deprecated (since := "2025-03-14")] alias inv_inv := HolderConjugate.inv_inv
@[deprecated (since := "2025-03-14")] alias inv_one_sub_inv := HolderConjugate.inv_one_sub_inv
@[deprecated (since := "2025-03-14")] alias one_sub_inv_inv := HolderConjugate.one_sub_inv_inv
@[deprecated (since := "2025-03-14")] alias inv_add_inv_conj_ennreal :=
  HolderConjugate.inv_add_inv_ennreal

end IsConjExponent

@[deprecated (since := "2025-03-14")] alias isConjExponent_comm := holderConjugate_comm
@[deprecated (since := "2025-03-14")] alias isConjExponent_iff_eq_conjExponent :=
  holderConjugate_iff_eq_conjExponent
@[deprecated (since := "2025-03-14")] alias IsConjExponent.conjExponent :=
  HolderConjugate.conjExponent
@[deprecated (since := "2025-03-14")] alias isConjExponent_one_div := holderConjugate_one_div

end NNReal

@[deprecated (since := "2025-03-14")] alias Real.IsConjExponent.toNNReal :=
  Real.HolderTriple.toNNReal

namespace ENNReal

@[deprecated (since := "2025-03-14")] alias IsConjExponent := HolderConjugate
@[deprecated (since := "2025-03-14")] alias isConjExponent_iff := holderConjugate_iff
@[deprecated (since := "2025-03-14")] alias isConjExopnent_coe := holderConjugate_coe_iff
@[deprecated (since := "2025-03-14")] alias _root_.NNReal.IsConjExponent.coe_ennreal :=
  NNReal.HolderConjugate.coe_ennreal

namespace IsConjExponent

@[deprecated (since := "2025-03-14")] alias conjExponent := HolderConjugate.conjExponent
@[deprecated (since := "2025-03-14")] alias symm := HolderConjugate.symm
@[deprecated (since := "2025-03-14")] alias one_le := HolderTriple.le
@[deprecated (since := "2025-03-14")] alias pos := HolderConjugate.pos
@[deprecated (since := "2025-03-14")] alias ne_zero := HolderConjugate.ne_zero
@[deprecated (since := "2025-03-14")] alias one_sub_inv := HolderConjugate.one_sub_inv
@[deprecated (since := "2025-03-14")] alias conjExponent_eq := HolderConjugate.conjExponent_eq
@[deprecated (since := "2025-03-14")] alias conj_eq := HolderConjugate.conj_eq
@[deprecated (since := "2025-03-14")] alias mul_eq_add := HolderConjugate.mul_eq_add
@[deprecated (since := "2025-03-14")] alias div_conj_eq_sub_one :=
  HolderConjugate.div_conj_eq_sub_one
@[deprecated (since := "2025-03-14")] alias inv_inv := HolderConjugate.inv_inv
@[deprecated (since := "2025-03-14")] alias inv_one_sub_inv := HolderConjugate.inv_one_sub_inv
@[deprecated (since := "2025-03-14")] alias one_sub_inv_inv := HolderConjugate.one_sub_inv_inv
@[deprecated (since := "2025-03-14")] alias top_one := HolderConjugate.top_one
@[deprecated (since := "2025-03-14")] alias one_top := HolderConjugate.one_top

end IsConjExponent
end ENNReal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/ConjExponents/Variantbe5869b1d089c3cf61d0353465150d3d6766965a0aa085cbeee6c921f8214974.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ConjExponents/Variantbe5869b1d089c3cf61d0353465150d3d6766965a0aa085cbeee6c921f8214974.lean#L581).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c52788e88744124b23a343548bf79c62bd274c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
