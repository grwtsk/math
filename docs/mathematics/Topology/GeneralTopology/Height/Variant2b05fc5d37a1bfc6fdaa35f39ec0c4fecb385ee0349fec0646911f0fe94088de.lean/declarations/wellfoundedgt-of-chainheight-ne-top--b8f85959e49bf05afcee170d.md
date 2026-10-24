# wellFoundedGT_of_chainHeight_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a8aa040-e1fb-f428-a420-8c4e80b0b3aa",
  "kind": "theorem",
  "lexical_name": "wellFoundedGT_of_chainHeight_ne_top",
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
  "slug": "wellfoundedgt-of-chainheight-ne-top--b8f85959e49bf05afcee170d",
  "source": {
    "blob": "b9e91d9826e1c6a06557f242ca2bca1374a91406",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 359,
    "path": "GRWTSK/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8f85959e49bf05afcee170db08a77ccd63db13ea40417e4c10420c04b497bff",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a8aa040-e1fb-f428-a420-8c4e80b0b3aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wellFoundedGT_of_chainHeight_ne_top (s : Set α) (hs : s.chainHeight ≠ ⊤) :
    WellFoundedGT s := by
  -- Porting note: added
  haveI : IsTrans { x // x ∈ s } (↑· < ↑·) := inferInstance

  obtain ⟨n, hn⟩ := WithTop.ne_top_iff_exists.1 hs
  refine' ⟨RelEmbedding.wellFounded_iff_no_descending_seq.2 ⟨fun f ↦ _⟩⟩
  refine' n.lt_succ_self.not_le (WithTop.coe_le_coe.1 <| hn.symm ▸ _)
  refine'
    le_iSup₂_of_le _
      ⟨chain'_map_of_chain' ((↑) : {x // x ∈ s} → α) (fun _ _ ↦ id)
          (chain'_iff_pairwise.2 <| pairwise_ofFn.2 fun i j ↦ f.map_rel_iff.2),
        fun i h ↦ _⟩
      _
  · exact n.succ
  · obtain ⟨a, -, rfl⟩ := mem_map.1 h
    exact a.prop
  · rw [length_map, length_ofFn]
    exact le_rfl
#align set.well_founded_gt_of_chain_height_ne_top Set.wellFoundedGT_of_chainHeight_ne_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9e91d9826e1c6a06557f242ca2bca1374a91406` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
