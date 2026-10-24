# prepartition_isPartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f518a51f-b203-7faf-e68e-91ef92e773d2",
  "kind": "theorem",
  "lexical_name": "prepartition_isPartition",
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
  "slug": "prepartition-ispartition--d88182134ca585d97b719899",
  "source": {
    "blob": "3af570881246cfb1f2e43a1449c16fc587faac05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 316,
    "path": "GRWTSK/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d88182134ca585d97b719899ae6f142b653034ca3500b279fe51ed7168be342d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f518a51f-b203-7faf-e68e-91ef92e773d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prepartition_isPartition {B : Box ι} (hB : hasIntegralVertices B) :
    (prepartition n B).IsPartition := by
  refine fun x hx ↦ ⟨box n (index n x), ?_, mem_box_iff_index.mpr rfl⟩
  rw [TaggedPrepartition.mem_toPrepartition, mem_prepartition_iff]
  exact ⟨index n x, mem_admissibleIndex_of_mem_box n hB hx, rfl⟩

open Submodule Pointwise BigOperators

open scoped Pointwise

variable (c : ℝ) (s : Set (ι → ℝ)) (F : (ι → ℝ) → ℝ)

-- The image of `ι → ℤ` inside `ι → ℝ`
local notation "L" => span ℤ (Set.range (Pi.basisFun ℝ ι))

variable {n} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3af570881246cfb1f2e43a1449c16fc587faac05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
