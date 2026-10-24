# union_at_witness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:739c94b5-1563-1a7a-cf7f-dc6a23954460",
  "kind": "theorem",
  "lexical_name": "union_at_witness",
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
  "slug": "union-at-witness--809192bbadaf3be5a1a2d3c7",
  "source": {
    "blob": "8d364e9c3ed17618824ff839edb851a0b5ac042b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26342,
    "line": 26310,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:809192bbadaf3be5a1a2d3c76c23d398c4336c90215e91d5a2e8c1ee0b212347",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:739c94b5-1563-1a7a-cf7f-dc6a23954460`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26310–26342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem union_at_witness (t : Fin 3) {y z x : Expr S}
    (hy : HasType P Γ y B.yType) (my : WellModed γ y .data)
    (hz : HasType P Γ z B.yType) (mz : WellModed γ z .data)
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data)
    (ey : Proves P Γ γ (B.relation L.code KY.code KP.code y (B.observation.tagged L.code 0 x)))
    (ez : Proves P Γ γ (B.relation L.code KY.code KP.code z (B.observation.tagged L.code t x))) :
    Proves P Γ γ (B.eAt L.code KY.code KP.code t (B.unionPred L.code KY.code KP.code y z) x) := by
  have hu := H.unionPred_typed KY KP hy my hz mz
  apply H.eAt_intro KY KP t hu.1 hu.2 hx mx
  intro Δ δ e w hw mw
  simp only [eStep,unionPred_rename]
  have hy' := y_typed_rename (B := B) e hy
  have hz' := y_typed_rename (B := B) e hz
  have hx' := x_typed_rename (B := B) e hx
  have ey' := ey.rename e
  have ez' := ez.rename e
  simp only [relation_rename,ObservationCode.tagged_rename] at ey' ez'
  have ht0 := (H.rename e).observation.tagged_typed 0 hx' (e.moded mx)
  have htt := (H.rename e).observation.tagged_typed t hx' (e.moded mx)
  have hu' := (H.rename e).unionPred_typed (KY.rename e) (KP.rename e) hy' (e.moded my) hz' (e.moded mz)
  have fy := (H.rename e).relation_formula (KY.rename e) (KP.rename e) hw mw hy' (e.moded my)
  have fz := (H.rename e).relation_formula (KY.rename e) (KP.rename e) hw mw hz' (e.moded mz)
  have gy := (H.rename e).observation.ae_formula (KY.rename e) (KP.rename e) hw mw ht0.1 ht0.2
  have gz := (H.rename e).observation.ae_formula (KY.rename e) (KP.rename e) hw mw htt.1 htt.2
  have ee := (H.rename e).union_evaluation (KY.rename e) (KP.rename e) hy' (e.moded my) hz' (e.moded mz) hw mw
  have ec := (L.rename e).disj_congr fy gy fz gz
    ((H.rename e).relation_observation_congr (KY.rename e) (KP.rename e) hy' (e.moded my) ht0.1 ht0.2 hw mw ey')
    ((H.rename e).relation_observation_congr (KY.rename e) (KP.rename e) hz' (e.moded mz) htt.1 htt.2 hw mw ez')
  exact (L.rename e).iff_of_equivalent ((H.rename e).ev_formula hu'.1 hu'.2 hw mw)
    ((L.rename e).disj_formula gy gz)
    (((H.rename e).ev_formula hu'.1 hu'.2 hw mw).equivalent_trans
      ((L.rename e).disj_formula fy fz) ((L.rename e).disj_formula gy gz) ee ec)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean#L26310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d364e9c3ed17618824ff839edb851a0b5ac042b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
