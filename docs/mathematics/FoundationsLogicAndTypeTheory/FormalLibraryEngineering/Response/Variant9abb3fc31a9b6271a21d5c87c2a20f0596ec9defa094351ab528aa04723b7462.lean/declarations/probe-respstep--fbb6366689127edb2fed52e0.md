# probe_respStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a4cf91f-65c1-b540-2154-1cbc82f93860",
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
  "slug": "probe-respstep--fbb6366689127edb2fed52e0",
  "source": {
    "blob": "ca38a90ef5aa26680fc0cb9639d5d19aa2114c73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 898,
    "line": 858,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variant9abb3fc31a9b6271a21d5c87c2a20f0596ec9defa094351ab528aa04723b7462.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbb6366689127edb2fed52e0584445abefc0af425b980978dc26d0388d3afc33",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variant9abb3fc31a9b6271a21d5c87c2a20f0596ec9defa094351ab528aa04723b7462.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a4cf91f-65c1-b540-2154-1cbc82f93860`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 858–898.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem probe_respStep {i y z : Expr S}
    (hi : HasType P Γ i B.xPredType) (mi : WellModed γ i .data)
    (hy : HasType P Γ y B.yType) (my : WellModed γ y .data)
    (hz : HasType P Γ z B.yType) (mz : WellModed γ z .data)
    (hex : Proves P Γ γ (B.relational.extensional L.code KY.code KP.code i)) :
    Proves P Γ γ (B.respStep L.code KY.code KP.code (B.relational.probeFor L.code KY.code
      KP.code i) y z) := by
  have hp := H.relational_formed.probeFor_typed KY KP hi mi
  apply L.imp_intro_future (H.relation_formula KY KP hy my hz mz)
    (L.iff_formula (H.diamond_formula KY KP hp.1 hp.2 hy my) (H.diamond_formula KY KP hp.1
      hp.2 hz mz))
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
  have pr := (H.rename e).relational_formed.probeFor_typed (KY.rename e) (KP.rename e) hi'
    (e.moded mi)
  have e1 := (H.rename e).probe_exact (KY.rename e) (KP.rename e) hi' (e.moded mi) hy'
    (e.moded my) hex'
  have e3 := (H.rename e).probe_exact (KY.rename e) (KP.rename e) hi' (e.moded mi) hz'
    (e.moded mz) hex'
  have e2 := (H.rename e).relational_formed.extensional_elim (KY.rename e) (KP.rename e) hi'
    (e.moded mi) ly.1 ly.2 lz.1 lz.2 hex'
    ((H.rename e).lift_congr (KY.rename e) (KP.rename e) hy' (e.moded my) hz' (e.moded mz) he)
  have f1 := (H.rename e).diamond_formula (KY.rename e) (KP.rename e) pr.1 pr.2 hy' (e.moded my)
  have f4 := (H.rename e).diamond_formula (KY.rename e) (KP.rename e) pr.1 pr.2 hz' (e.moded mz)
  have f2 := (H.rename e).relational_formed.channel.eval_formula (H.rename
    e).relational_formed.probe.carrier_sorted (H.rename
    e).relational_formed.probe.carrier_mode hi' (e.moded mi) ly.1 ly.2
  have f3 := (H.rename e).relational_formed.channel.eval_formula (H.rename
    e).relational_formed.probe.carrier_sorted (H.rename
    e).relational_formed.probe.carrier_mode hi' (e.moded mi) lz.1 lz.2
  exact (L.rename e).iff_of_equivalent f1 f4 (f1.equivalent_trans f3 f4 (f1.equivalent_trans
    f2 f3 e1 e2) e3.symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variant9abb3fc31a9b6271a21d5c87c2a20f0596ec9defa094351ab528aa04723b7462.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variant9abb3fc31a9b6271a21d5c87c2a20f0596ec9defa094351ab528aa04723b7462.lean#L858).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca38a90ef5aa26680fc0cb9639d5d19aa2114c73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
