# MutuallySingular.disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a65dfa52-140b-a33a-0b94-58dfc8a60137",
  "kind": "lemma",
  "lexical_name": "MutuallySingular.disjoint",
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
  "slug": "mutuallysingular-disjoint--b7e0d676ced9e746b44d4a47",
  "source": {
    "blob": "e1e8b887dba8de2d09e29c25b2909c8b7aff8b28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 232,
    "path": "GRWTSK/Analysis/MeasureTheory/MutuallySingular/Variant4525f79b216a0b853f4effdf4b62dd48a53e15695cc1ce5a7365c4015dcab3e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7e0d676ced9e746b44d4a471db589fa59a7a96eeb7cd702cf37a7781b93eacb",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MutuallySingular/Variant4525f79b216a0b853f4effdf4b62dd48a53e15695cc1ce5a7365c4015dcab3e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a65dfa52-140b-a33a-0b94-58dfc8a60137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MutuallySingular.disjoint (h : μ ⟂ₘ ν) : Disjoint μ ν := by
  have h_bot_iff (ξ : Measure α) : ξ ≤ ⊥ ↔ ξ = 0 := by
    rw [le_bot_iff]
    rfl
  intro ξ hξμ hξν
  rw [h_bot_iff]
  ext s hs
  simp only [Measure.coe_zero, Pi.zero_apply]
  rw [← inter_union_compl s h.nullSet, measure_union, add_eq_zero]
  · exact ⟨measure_inter_null_of_null_right _ <| absolutelyContinuous_of_le hξμ h.measure_nullSet,
      measure_inter_null_of_null_right _ <| absolutelyContinuous_of_le hξν h.measure_compl_nullSet⟩
  · exact Disjoint.mono inter_subset_right inter_subset_right disjoint_compl_right
  · exact hs.inter h.measurableSet_nullSet.compl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MutuallySingular/Variant4525f79b216a0b853f4effdf4b62dd48a53e15695cc1ce5a7365c4015dcab3e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MutuallySingular/Variant4525f79b216a0b853f4effdf4b62dd48a53e15695cc1ce5a7365c4015dcab3e8.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1e8b887dba8de2d09e29c25b2909c8b7aff8b28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
