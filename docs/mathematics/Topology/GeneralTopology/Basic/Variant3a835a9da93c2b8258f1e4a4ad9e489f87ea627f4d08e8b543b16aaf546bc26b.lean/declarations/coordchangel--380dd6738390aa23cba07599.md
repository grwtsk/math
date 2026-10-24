# coordChangeL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78f028edf9d70bbb5956ee6b803b57d6a03201bafc4b477e03c7305e42859120",
  "kind": "def",
  "lexical_name": "coordChangeL",
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
  "slug": "coordchangel--380dd6738390aa23cba07599",
  "source": {
    "blob": "bdcce71ab4bd64bf7c87dfd0cffc8624d418e43c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 244,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3a835a9da93c2b8258f1e4a4ad9e489f87ea627f4d08e8b543b16aaf546bc26b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:380dd6738390aa23cba07599e5dd5f009cab560571055cfbdc1d9b6c9281a026",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3a835a9da93c2b8258f1e4a4ad9e489f87ea627f4d08e8b543b16aaf546bc26b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78f028edf9d70bbb5956ee6b803b57d6a03201bafc4b477e03c7305e42859120`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coordChangeL (e e' : Trivialization F (π F E)) [e.IsLinear R] [e'.IsLinear R] (b : B) :
    F ≃L[R] F :=
  { toLinearEquiv := if hb : b ∈ e.baseSet ∩ e'.baseSet
      then (e.linearEquivAt R b (hb.1 :)).symm.trans (e'.linearEquivAt R b hb.2)
      else LinearEquiv.refl R F
    continuous_toFun := by
      by_cases hb : b ∈ e.baseSet ∩ e'.baseSet
      · rw [dif_pos hb]
        refine (e'.continuousOn.comp_continuous ?_ ?_).snd
        · exact e.continuousOn_symm.comp_continuous (Continuous.prodMk_right b) fun y =>
            mk_mem_prod hb.1 (mem_univ y)
        · exact fun y => e'.mem_source.mpr hb.2
      · rw [dif_neg hb]
        exact continuous_id
    continuous_invFun := by
      by_cases hb : b ∈ e.baseSet ∩ e'.baseSet
      · rw [dif_pos hb]
        refine (e.continuousOn.comp_continuous ?_ ?_).snd
        · exact e'.continuousOn_symm.comp_continuous (Continuous.prodMk_right b) fun y =>
            mk_mem_prod hb.2 (mem_univ y)
        exact fun y => e.mem_source.mpr hb.1
      · rw [dif_neg hb]
        exact continuous_id }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3a835a9da93c2b8258f1e4a4ad9e489f87ea627f4d08e8b543b16aaf546bc26b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3a835a9da93c2b8258f1e4a4ad9e489f87ea627f4d08e8b543b16aaf546bc26b.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdcce71ab4bd64bf7c87dfd0cffc8624d418e43c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
