# exists_Ico_subset_of_mem_nhds'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1721b6c2-e8a0-50fe-d9f1-8a5c8100bd3f",
  "kind": "theorem",
  "lexical_name": "exists_Ico_subset_of_mem_nhds'",
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
  "slug": "exists-ico-subset-of-mem-nhds--a7ccec01d5681fb283debab4",
  "source": {
    "blob": "ebab0ef499c76aefe53ee57a5050f62c02a43f3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 388,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcb84b5bae2d3c4c9cd185d2461999618ae620513661bf919c8125a563ed0c37c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7ccec01d5681fb283debab4b235b0c58a11835ba10029dc50293bf8a8b80680",
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

Occurrence: `result:1721b6c2-e8a0-50fe-d9f1-8a5c8100bd3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_Ico_subset_of_mem_nhds' [OrderTopology α] {a : α} {s : Set α} (hs : s ∈ 𝓝 a) {u : α}
    (hu : a < u) : ∃ u' ∈ Ioc a u, Ico a u' ⊆ s := by
  simpa only [OrderDual.exists, exists_prop, Ico_toDual, Ioc_toDual] using
    exists_Ioc_subset_of_mem_nhds' (show ofDual ⁻¹' s ∈ 𝓝 (toDual a) from hs) hu.dual

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantcb84b5bae2d3c4c9cd185d2461999618ae620513661bf919c8125a563ed0c37c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantcb84b5bae2d3c4c9cd185d2461999618ae620513661bf919c8125a563ed0c37c.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebab0ef499c76aefe53ee57a5050f62c02a43f3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
