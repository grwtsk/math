# isSelfAdjoint_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31f7d28198a95c423d9866a99cb1ed340e2ae343",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec58134c-68cf-4dc6-a0ae-1e90a3589ad5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9b2dd4a-1cc5-d753-fe0f-4b0c3ac31684",
  "kind": "theorem",
  "lexical_name": "isSelfAdjoint_def",
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
  "slug": "isselfadjoint-def--e35e7ef5b7018b2f42eb752a",
  "source": {
    "blob": "31f7d28198a95c423d9866a99cb1ed340e2ae343",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 224,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e35e7ef5b7018b2f42eb752a0c0869636b46ecfc7f84ca4d9794893da69d6bd4",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9b2dd4a-1cc5-d753-fe0f-4b0c3ac31684`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSelfAdjoint_def : IsSelfAdjoint A ↔ A† = A := Iff.rfl

/-- Every self-adjoint `LinearPMap` has dense domain.

This is not true by definition since we define the adjoint without the assumption that the
domain is dense, but the choice of the junk value implies that a `LinearPMap` cannot be self-adjoint
if it does not have dense domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f7d28198a95c423d9866a99cb1ed340e2ae343` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
