# positive_defect_gives_visible_projectedDifferential

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbc65271-8a29-2e16-520b-c12c7fb9afd2",
  "kind": "theorem",
  "lexical_name": "positive_defect_gives_visible_projectedDifferential",
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
  "slug": "positive-defect-gives-visible-projecteddifferential--ccc56f846b515c7636dffeaf",
  "source": {
    "blob": "81048ef07bd78d3939a23b71a2bf913d39912841",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 168,
    "path": "GRWTSK/Algebra/LinearAlgebra/3b190c43599a1ba5e59ef7c615826ae6b6ca0265002099df1c2ef12fbfe2ca6eInterventionDefe/Variant1b5ddca8c2946807c6866a00a0087adfdf612dc7d5882b1dd8bd40648b0c0f2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccc56f846b515c7636dffeaf53747100c4a33c534bb39a82b6e79b5cd18a5eac",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/3b190c43599a1ba5e59ef7c615826ae6b6ca0265002099df1c2ef12fbfe2ca6eInterventionDefe/Variant1b5ddca8c2946807c6866a00a0087adfdf612dc7d5882b1dd8bd40648b0c0f2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbc65271-8a29-2e16-520b-c12c7fb9afd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_defect_gives_visible_projectedDifferential
    (I : LinearIntervention X V) (x : X)
    (hpos : 0 < C.interventionDefectEnergy I x) :
    G.Visible (C.projectedDifferential I x) ∧
      C.projectedDifferential I x ≠ 0 := by
  have hvisible :=
    (C.interventionDefectEnergy_pos_iff_visible I x).1 hpos
  exact ⟨hvisible, G.visible_ne_zero hvisible⟩

end PositiveCommutingInvolutions

end FormalResearch.PositiveAtlas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/3b190c43599a1ba5e59ef7c615826ae6b6ca0265002099df1c2ef12fbfe2ca6eInterventionDefe/Variant1b5ddca8c2946807c6866a00a0087adfdf612dc7d5882b1dd8bd40648b0c0f2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/3b190c43599a1ba5e59ef7c615826ae6b6ca0265002099df1c2ef12fbfe2ca6eInterventionDefe/Variant1b5ddca8c2946807c6866a00a0087adfdf612dc7d5882b1dd8bd40648b0c0f2a.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81048ef07bd78d3939a23b71a2bf913d39912841` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
