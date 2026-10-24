# map_functorPullback_mem_coverings

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2910c2ae389da3516752425d9d3369913895f2b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57eb776c-61f1-3469-c493-faf63ebc228f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a31b9bf-59f5-6f36-1089-82bcc07d6a5f",
  "kind": "lemma",
  "lexical_name": "map_functorPullback_mem_coverings",
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
  "slug": "map-functorpullback-mem-coverings--15bdae451b15ca210be552cd",
  "source": {
    "blob": "2910c2ae389da3516752425d9d3369913895f2b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 47,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15bdae451b15ca210be552cdd22c3a35ddb4f8b83270218cc2710e717a5273a2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a31b9bf-59f5-6f36-1089-82bcc07d6a5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma map_functorPullback_mem_coverings (hPQ : P ≤ Q) (X : Q.Over ⊤ S)
    {R : Presieve ((MorphismProperty.Over.forget Q ⊤ S).obj X)}
    (hR : R ∈ ((precoverage P).over S).coverings ((MorphismProperty.Over.forget Q ⊤ S).obj X)) :
    letI F := MorphismProperty.Over.forget Q ⊤ S
    (R.functorPullback F).map F ∈ ((precoverage P).over S).coverings (F.obj X) := by
  have hle : precoverage P ≤ Q.precoverage := fun _ _ hR _ _ hf ↦ hPQ _ (hR.2 hf)
  obtain ⟨T, rfl⟩ := MorphismProperty.exists_map_eq_of_presieve (precoverage P) hle hR
  simpa using hR

variable [P.IsStableUnderBaseChange]

/-- The presieve defined by a `P`-cover of `S`-schemes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2910c2ae389da3516752425d9d3369913895f2b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
