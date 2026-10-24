# UniformContinuous.inf_rng

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ef169b1cee415481d609f5882d80f61e629ae56",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 499,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5ae83779595b586d778403507894af21ff64111723322afa63d32d1a6c14dbe6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82323d69-6a0c-dd4a-6011-f5afdab87b83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2bed42f-5fca-2baa-c701-dfa0ffe5aaad",
  "kind": "theorem",
  "lexical_name": "UniformContinuous.inf_rng",
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
  "slug": "uniformcontinuous-inf-rng--338e427fd2b7aef00322092f",
  "source": {
    "blob": "2ef169b1cee415481d609f5882d80f61e629ae56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 499,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Basic/Variant5ae83779595b586d778403507894af21ff64111723322afa63d32d1a6c14dbe6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:338e427fd2b7aef00322092f51a56b05b8deabe69c6923eda90a6a380da8c627",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Basic/Variant5ae83779595b586d778403507894af21ff64111723322afa63d32d1a6c14dbe6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2bed42f-5fca-2baa-c701-dfa0ffe5aaad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UniformContinuous.inf_rng {f : α → β} {u₁ : UniformSpace α} {u₂ u₃ : UniformSpace β}
    (h₁ : UniformContinuous[u₁, u₂] f) (h₂ : UniformContinuous[u₁, u₃] f) :
    UniformContinuous[u₁, u₂ ⊓ u₃] f :=
  tendsto_inf.mpr ⟨h₁, h₂⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Basic/Variant5ae83779595b586d778403507894af21ff64111723322afa63d32d1a6c14dbe6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Basic/Variant5ae83779595b586d778403507894af21ff64111723322afa63d32d1a6c14dbe6.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ef169b1cee415481d609f5882d80f61e629ae56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
