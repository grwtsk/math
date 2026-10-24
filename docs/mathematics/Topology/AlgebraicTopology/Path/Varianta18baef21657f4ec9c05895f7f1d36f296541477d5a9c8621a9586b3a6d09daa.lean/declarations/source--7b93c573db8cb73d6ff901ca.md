# source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31c358d6c2b2c0dd75cff6a5c8d912cf56088bb3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a18baef21657f4ec9c05895f7f1d36f296541477d5a9c8621a9586b3a6d09daa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:adc95bff-daa4-96b9-115f-8ff67f5ac3d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84fc7f7b-b9d9-d624-445f-132f4686a463",
  "kind": "theorem",
  "lexical_name": "source",
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
  "slug": "source--7b93c573db8cb73d6ff901ca",
  "source": {
    "blob": "31c358d6c2b2c0dd75cff6a5c8d912cf56088bb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 64,
    "path": "GRWTSK/Topology/AlgebraicTopology/Path/Varianta18baef21657f4ec9c05895f7f1d36f296541477d5a9c8621a9586b3a6d09daa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b93c573db8cb73d6ff901cace5013cfc24b7afa59c5a96d758cf6fb6eca2a42",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Path/Varianta18baef21657f4ec9c05895f7f1d36f296541477d5a9c8621a9586b3a6d09daa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84fc7f7b-b9d9-d624-445f-132f4686a463`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source (F : Homotopy p₀ p₁) (t : I) : F (t, 0) = x₀ :=
  calc F (t, 0) = p₀ 0 := ContinuousMap.HomotopyRel.eq_fst _ _ (.inl rfl)
  _ = x₀ := p₀.source
#align path.homotopy.source Path.Homotopy.source

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Path/Varianta18baef21657f4ec9c05895f7f1d36f296541477d5a9c8621a9586b3a6d09daa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Path/Varianta18baef21657f4ec9c05895f7f1d36f296541477d5a9c8621a9586b3a6d09daa.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31c358d6c2b2c0dd75cff6a5c8d912cf56088bb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
