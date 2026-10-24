# lift_openEmbedding_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f800be8-3839-7284-7125-4a82810c2106",
  "kind": "lemma",
  "lexical_name": "lift_openEmbedding_symm",
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
  "slug": "lift-openembedding-symm--49ec8d7a96f29bbf054cdd51",
  "source": {
    "blob": "7081bfe57cfeb1b95e0f3e64abb3886e18892e27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 415,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variantace8d9c2cf6341ae90d876fdd13aea8a2275b8c78e27eff8bb714208924fff13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49ec8d7a96f29bbf054cdd51709664ec66e6b08fc02fde973470ec0dd78c9e62",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variantace8d9c2cf6341ae90d876fdd13aea8a2275b8c78e27eff8bb714208924fff13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f800be8-3839-7284-7125-4a82810c2106`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lift_openEmbedding_symm (e : OpenPartialHomeomorph X Z) (hf : IsOpenEmbedding f) :
    (e.lift_openEmbedding hf).symm = f ∘ e.symm := rfl

@[simp, mfld_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variantace8d9c2cf6341ae90d876fdd13aea8a2275b8c78e27eff8bb714208924fff13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variantace8d9c2cf6341ae90d876fdd13aea8a2275b8c78e27eff8bb714208924fff13.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7081bfe57cfeb1b95e0f3e64abb3886e18892e27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
