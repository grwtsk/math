# residual_autonomous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32dc3c712e2d463e3fc4a9c3a7a741c00388b65c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f69da93-bd4d-702c-e7d9-3eab97d5af2e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb14642a-58b7-4591-791c-72f00dfbb0e4",
  "kind": "theorem",
  "lexical_name": "residual_autonomous",
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
  "slug": "residual-autonomous--973b4a970370beedfbac46f4",
  "source": {
    "blob": "32dc3c712e2d463e3fc4a9c3a7a741c00388b65c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 105,
    "path": "GRWTSK/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:973b4a970370beedfbac46f41a7e6575b79308e6e00bf3f534764b5e26953725",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb14642a-58b7-4591-791c-72f00dfbb0e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_autonomous (S : BlockSchurSolver G) (u : U) :
    S.projector.residualMap (autonomousInclusion u) =
      autonomousInclusion u - provenanceInclusion (S.solve u) := by
  rw [ProvenanceProjector.residualMap_apply, S.project_autonomous]

/-- The positive Schur residual on autonomous coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32dc3c712e2d463e3fc4a9c3a7a741c00388b65c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
