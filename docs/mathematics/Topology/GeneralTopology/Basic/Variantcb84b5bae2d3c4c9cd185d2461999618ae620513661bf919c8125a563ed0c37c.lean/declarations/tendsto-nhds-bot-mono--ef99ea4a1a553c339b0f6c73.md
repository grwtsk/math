# tendsto_nhds_bot_mono'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05ae35ef-2a88-7581-239b-6310d502bfe0",
  "kind": "theorem",
  "lexical_name": "tendsto_nhds_bot_mono'",
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
  "slug": "tendsto-nhds-bot-mono--ef99ea4a1a553c339b0f6c73",
  "source": {
    "blob": "ebab0ef499c76aefe53ee57a5050f62c02a43f3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 355,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcb84b5bae2d3c4c9cd185d2461999618ae620513661bf919c8125a563ed0c37c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef99ea4a1a553c339b0f6c738957c1cb7c9d3a04b6be093386e7adbddf918eeb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantcb84b5bae2d3c4c9cd185d2461999618ae620513661bf919c8125a563ed0c37c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05ae35ef-2a88-7581-239b-6310d502bfe0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_nhds_bot_mono' [TopologicalSpace β] [Preorder β] [OrderBot β] [OrderTopology β]
    {l : Filter α} {f g : α → β} (hf : Tendsto f l (𝓝 ⊥)) (hg : g ≤ f) : Tendsto g l (𝓝 ⊥) :=
  tendsto_nhds_bot_mono hf (Eventually.of_forall hg)

section LinearOrder

variable [TopologicalSpace α] [LinearOrder α]

section OrderTopology

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantcb84b5bae2d3c4c9cd185d2461999618ae620513661bf919c8125a563ed0c37c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantcb84b5bae2d3c4c9cd185d2461999618ae620513661bf919c8125a563ed0c37c.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebab0ef499c76aefe53ee57a5050f62c02a43f3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
