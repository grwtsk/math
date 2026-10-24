# patch_bound_to_config_digest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71a0301e7107de58d9d1875e9b6b4bea4c8f9503",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 462,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebe44b4f762c137f941303628e34f9b86c47f49b1a90f43276dc5983dbcb5585.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:508e36e8-0346-91af-f387-d1fed5d66cdf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d8af317-fe98-b271-470e-8a4c50de179e",
  "kind": "theorem",
  "lexical_name": "patch_bound_to_config_digest",
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
  "slug": "patch-bound-to-config-digest--01cd7689891f3e5deaa346d6",
  "source": {
    "blob": "71a0301e7107de58d9d1875e9b6b4bea4c8f9503",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 471,
    "line": 462,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SurgicalSitePlan/Variantebe44b4f762c137f941303628e34f9b86c47f49b1a90f43276dc5983dbcb5585.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01cd7689891f3e5deaa346d638c77f38a1e7810a670927e0ac294a557152a41e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SurgicalSitePlan/Variantebe44b4f762c137f941303628e34f9b86c47f49b1a90f43276dc5983dbcb5585.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d8af317-fe98-b271-470e-8a4c50de179e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–471.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem patch_bound_to_config_digest
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (authorized : AuthorizedSurgicalSitePlan State decomposition objective) :
    authorized.reviewed.plan.digestBinding.configDigest =
      authorized.reviewed.plan.selectionTrace.rootConfigDigest :=
  authorized.reviewed.plan.config_digest_exact

/-- SEL-07: the authorized proposal retains the exact registry digest. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SurgicalSitePlan/Variantebe44b4f762c137f941303628e34f9b86c47f49b1a90f43276dc5983dbcb5585.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SurgicalSitePlan/Variantebe44b4f762c137f941303628e34f9b86c47f49b1a90f43276dc5983dbcb5585.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71a0301e7107de58d9d1875e9b6b4bea4c8f9503` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
