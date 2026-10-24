# edge_to_tagged

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c43dd61c35d3d36651c01f53530ca36ac91fcb76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa827e67-22ee-22c4-46b1-f0f4bcd85392",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b0b2cb6-9c07-295a-0aa3-16ef593a168e",
  "kind": "theorem",
  "lexical_name": "edge_to_tagged",
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
  "slug": "edge-to-tagged--da3a3c4ba6e74dc79bb9b468",
  "source": {
    "blob": "c43dd61c35d3d36651c01f53530ca36ac91fcb76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28182,
    "line": 28158,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da3a3c4ba6e74dc79bb9b4689961dd1be674e1df6f9db15420ef9a2d62ef789e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b0b2cb6-9c07-295a-0aa3-16ef593a168e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28158–28182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edge_to_tagged (t : Bool) {y x : Expr S}
    (hy : HasType P Γ y B.yType) (my : WellModed γ y .data)
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data)
    (he : Proves P Γ γ (B.edge L.code KY.code KP.code t y (B.observation.tagged L.code (if t then 2 else 1) x))) :
    Proves P Γ γ (B.relation L.code KY.code KP.code y (B.observation.tagged L.code 0 x)) := by
  have hxt := H.observation.tagged_typed (if t then 2 else 1) hx mx
  have hx0 := H.observation.tagged_typed 0 hx mx
  apply H.edge_witness_elim KY KP t hy my hxt.1 hxt.2 (H.relation_formula KY KP hy my hx0.1 hx0.2) he
  intro Δ δ e a ha ma hp
  simp only [relation_rename,ObservationCode.tagged_rename] at hp ⊢
  have hy' := y_typed_rename (B := B) e hy
  have hx' := x_typed_rename (B := B) e hx
  have hxt' := (H.rename e).observation.tagged_typed (if t then 2 else 1) hx' (e.moded mx)
  have hx0' := (H.rename e).observation.tagged_typed 0 hx' (e.moded mx)
  have hat := (H.rename e).observation.tagged_typed (if t then 2 else 1) ha ma
  have ha0 := (H.rename e).observation.tagged_typed 0 ha ma
  have fy := (H.rename e).relation_formula (KY.rename e) (KP.rename e) hy' (e.moded my) ha0.1 ha0.2
  have fx := (H.rename e).relation_formula (KY.rename e) (KP.rename e) hxt'.1 hxt'.2 hat.1 hat.2
  have ey := (L.rename e).conj_left fy fx hp
  have ex := (L.rename e).conj_right fy fx hp
  have eu := ((H.rename e).relation_tagged_same (KY.rename e) (KP.rename e) (if t then 2 else 1) hx' (e.moded mx) ha ma).1.prove ex
  have eux := (H.rename e).relational_formed.xCompare_symm (KY.rename e) (KP.rename e) hx' (e.moded mx) ha ma eu
  have e0 := ((H.rename e).relation_tagged_same (KY.rename e) (KP.rename e) 0 ha ma hx' (e.moded mx)).2.prove eux
  exact (H.rename e).relation_trans (KY.rename e) (KP.rename e) hy' (e.moded my) ha0.1 ha0.2 hx0'.1 hx0'.2 ey e0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean#L28158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43dd61c35d3d36651c01f53530ca36ac91fcb76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
