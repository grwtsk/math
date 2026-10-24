# neg_lt_of_tendsto_zero_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b74f71e753dbe5fa1ca6c81cb207feef2a35498f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d950c6544b43bad24506be00a4afcb78ed3cf5f4d709b77d874fc44294c52c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33dabe2b-16d1-795c-b19b-c23b713669e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c579482-82d0-10ba-ebe3-30f610e16db6",
  "kind": "theorem",
  "lexical_name": "neg_lt_of_tendsto_zero_of_pos",
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
  "slug": "neg-lt-of-tendsto-zero-of-pos--bef0f29ed22e2b6a2d34494f",
  "source": {
    "blob": "b74f71e753dbe5fa1ca6c81cb207feef2a35498f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 178,
    "path": "GRWTSK/Topology/GeneralTopology/Hyperreal/Variant9d950c6544b43bad24506be00a4afcb78ed3cf5f4d709b77d874fc44294c52c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bef0f29ed22e2b6a2d34494f847d1f575bbea9b755ed78486bd5205703bc05c2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hyperreal/Variant9d950c6544b43bad24506be00a4afcb78ed3cf5f4d709b77d874fc44294c52c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c579482-82d0-10ba-ebe3-30f610e16db6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neg_lt_of_tendsto_zero_of_pos {f : ℕ → ℝ} (hf : Tendsto f atTop (𝓝 0)) :
    ∀ {r : ℝ}, 0 < r → (-r : ℝ*) < ofSeq f := fun hr =>
  have hg := hf.neg
  neg_lt_of_neg_lt (by rw [neg_zero] at hg; exact lt_of_tendsto_zero_of_pos hg hr)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hyperreal/Variant9d950c6544b43bad24506be00a4afcb78ed3cf5f4d709b77d874fc44294c52c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hyperreal/Variant9d950c6544b43bad24506be00a4afcb78ed3cf5f4d709b77d874fc44294c52c0.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b74f71e753dbe5fa1ca6c81cb207feef2a35498f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
