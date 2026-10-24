# probe_respStep

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
      "line": 27473,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65aa5cda-a821-b45b-e2a0-f74048fe207b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8cd37bb6-d25d-1919-602b-6f3acc086f87",
  "kind": "theorem",
  "lexical_name": "probe_respStep",
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
  "slug": "probe-respstep--b9bef572f3d9742462f2ba37",
  "source": {
    "blob": "c43dd61c35d3d36651c01f53530ca36ac91fcb76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27502,
    "line": 27473,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9bef572f3d9742462f2ba373bc4138c33ecb04b24c3b903528d5ad7d95cf3bc",
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

Occurrence: `result:8cd37bb6-d25d-1919-602b-6f3acc086f87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27473–27502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem probe_respStep {i y z : Expr S}
    (hi : HasType P Γ i B.xPredType) (mi : WellModed γ i .data)
    (hy : HasType P Γ y B.yType) (my : WellModed γ y .data)
    (hz : HasType P Γ z B.yType) (mz : WellModed γ z .data)
    (hex : Proves P Γ γ (B.relational.extensional L.code KY.code KP.code i)) :
    Proves P Γ γ (B.respStep L.code KY.code KP.code (B.relational.probeFor L.code KY.code KP.code i) y z) := by
  have hp := H.relational_formed.probeFor_typed KY KP hi mi
  apply L.imp_intro_future (H.relation_formula KY KP hy my hz mz)
    (L.iff_formula (H.diamond_formula KY KP hp.1 hp.2 hy my) (H.diamond_formula KY KP hp.1 hp.2 hz mz))
  intro Δ δ e he
  simp only [relation_rename] at he
  simp only [LogicSetup.iff_rename,diamond_rename,RelationalCode.probeFor_rename,relational_rename]
  have hi' := xPred_typed_rename e hi
  have hy' := y_typed_rename (B := B) e hy
  have hz' := y_typed_rename (B := B) e hz
  have hex' := hex.rename e
  simp only [RelationalCode.extensional_rename] at hex'
  have ly := (H.rename e).lift_typed (KY.rename e) (KP.rename e) hy' (e.moded my)
  have lz := (H.rename e).lift_typed (KY.rename e) (KP.rename e) hz' (e.moded mz)
  have pr := (H.rename e).relational_formed.probeFor_typed (KY.rename e) (KP.rename e) hi' (e.moded mi)
  have e1 := (H.rename e).probe_exact (KY.rename e) (KP.rename e) hi' (e.moded mi) hy' (e.moded my) hex'
  have e3 := (H.rename e).probe_exact (KY.rename e) (KP.rename e) hi' (e.moded mi) hz' (e.moded mz) hex'
  have e2 := (H.rename e).relational_formed.extensional_elim (KY.rename e) (KP.rename e) hi' (e.moded mi) ly.1 ly.2 lz.1 lz.2 hex'
    ((H.rename e).lift_congr (KY.rename e) (KP.rename e) hy' (e.moded my) hz' (e.moded mz) he)
  have f1 := (H.rename e).diamond_formula (KY.rename e) (KP.rename e) pr.1 pr.2 hy' (e.moded my)
  have f4 := (H.rename e).diamond_formula (KY.rename e) (KP.rename e) pr.1 pr.2 hz' (e.moded mz)
  have f2 := (H.rename e).relational_formed.channel.eval_formula (H.rename e).relational_formed.probe.carrier_sorted (H.rename e).relational_formed.probe.carrier_mode hi' (e.moded mi) ly.1 ly.2
  have f3 := (H.rename e).relational_formed.channel.eval_formula (H.rename e).relational_formed.probe.carrier_sorted (H.rename e).relational_formed.probe.carrier_mode hi' (e.moded mi) lz.1 lz.2
  exact (L.rename e).iff_of_equivalent f1 f4 (f1.equivalent_trans f3 f4 (f1.equivalent_trans f2 f3 e1 e2) e3.symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean#L27473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43dd61c35d3d36651c01f53530ca36ac91fcb76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
