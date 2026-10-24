# Filter.Tendsto.rpow_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f0e29d8-d4af-4dd5-7425-1e0f1a4ea1f1",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.rpow_const",
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
  "slug": "filter-tendsto-rpow-const--d745284e4975e4fb2453181f",
  "source": {
    "blob": "d84da246704873bac04e2cb536cc0cd81ee3b9bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 287,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d745284e4975e4fb2453181f7460161f30e0c46887a6b8d0bce90a91b83a1194",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f0e29d8-d4af-4dd5-7425-1e0f1a4ea1f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.rpow_const {l : Filter α} {f : α → ℝ} {x p : ℝ} (hf : Tendsto f l (𝓝 x))
    (h : x ≠ 0 ∨ 0 ≤ p) : Tendsto (fun a => f a ^ p) l (𝓝 (x ^ p)) :=
  if h0 : 0 = p then h0 ▸ by simp [tendsto_const_nhds]
  else hf.rpow tendsto_const_nhds (h.imp id fun h' => h'.lt_of_ne h0)
#align filter.tendsto.rpow_const Filter.Tendsto.rpow_const

variable [TopologicalSpace α] {f g : α → ℝ} {s : Set α} {x : α} {p : ℝ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d84da246704873bac04e2cb536cc0cd81ee3b9bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
