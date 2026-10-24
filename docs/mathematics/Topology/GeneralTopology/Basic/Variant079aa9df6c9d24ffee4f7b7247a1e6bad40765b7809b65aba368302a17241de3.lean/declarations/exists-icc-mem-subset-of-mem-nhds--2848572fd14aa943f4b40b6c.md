# exists_Icc_mem_subset_of_mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9db5d03e-ef11-8715-af83-7b2cf707324a",
  "kind": "theorem",
  "lexical_name": "exists_Icc_mem_subset_of_mem_nhds",
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
  "slug": "exists-icc-mem-subset-of-mem-nhds--2848572fd14aa943f4b40b6c",
  "source": {
    "blob": "7efd25fe736c11d967d9c8c43876cdde33cbfb01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1271,
    "line": 1261,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2848572fd14aa943f4b40b6c3791fb9952b3de60d8c7638eb5c33860814f3bc4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9db5d03e-ef11-8715-af83-7b2cf707324a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1261–1271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_Icc_mem_subset_of_mem_nhds {a : α} {s : Set α} (hs : s ∈ 𝓝 a) :
    ∃ b c, a ∈ Icc b c ∧ Icc b c ∈ 𝓝 a ∧ Icc b c ⊆ s := by
  rcases exists_Icc_mem_subset_of_mem_nhdsWithin_Iic (nhdsWithin_le_nhds hs) with
    ⟨b, hba, hb_nhds, hbs⟩
  rcases exists_Icc_mem_subset_of_mem_nhdsWithin_Ici (nhdsWithin_le_nhds hs) with
    ⟨c, hac, hc_nhds, hcs⟩
  refine' ⟨b, c, ⟨hba, hac⟩, _⟩
  rw [← Icc_union_Icc_eq_Icc hba hac, ← nhds_left_sup_nhds_right]
  exact ⟨union_mem_sup hb_nhds hc_nhds, union_subset hbs hcs⟩
#align exists_Icc_mem_subset_of_mem_nhds exists_Icc_mem_subset_of_mem_nhds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean#L1261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7efd25fe736c11d967d9c8c43876cdde33cbfb01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
