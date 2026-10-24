# responsePair_member_imp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27314e7c-9cff-360e-4048-ec90d0688cde",
  "kind": "theorem",
  "lexical_name": "responsePair_member_imp",
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
  "slug": "responsepair-member-imp--c34f96099b1724294c406440",
  "source": {
    "blob": "8d364e9c3ed17618824ff839edb851a0b5ac042b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28667,
    "line": 28641,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c34f96099b1724294c40644098702d7711589332effd84e7402323e1a2f05d3f",
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

Occurrence: `result:27314e7c-9cff-360e-4048-ec90d0688cde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28641–28667.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem responsePair_member_imp {v x y : Expr S}
    (hv : HasType P Γ v B.relational.probe.carrier) (mv : WellModed γ v .data)
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data)
    (hy : HasType P Γ y B.xType) (my : WellModed γ y .data)
    (hr : Proves P Γ γ (B.response L.code KY.code KP.code v))
    (hl : Proves P Γ γ (B.relational.le L.code KY.code KP.code (B.responsePred L.code KY.code KP.code v) x))
    (hu : Proves P Γ γ (B.relational.valid L.code KY.code KP.code y)) :
    Proves P Γ γ (L.imp (B.ev (B.pair L.code KY.code KP.code (B.part L.code KY.code KP.code v) (B.observation.tagged L.code 0 x)) (B.observation.tagged L.code 2 y)) (B.relational.le L.code KY.code KP.code (B.rPred L.code KY.code KP.code (B.pair L.code KY.code KP.code (B.part L.code KY.code KP.code v) (B.observation.tagged L.code 0 x))) y)) := by
  have pv := H.part_typed KY KP hv mv
  have tx := H.tagged_typed 0 hx mx
  have px := H.pair_typed KY KP pv.1 pv.2 tx.1 tx.2
  have ir := H.rPred_typed KY KP px.1 px.2
  have ty := H.tagged_typed 2 hy my
  apply L.imp_intro_future (H.ev_formula px.1 px.2 ty.1 ty.2) (H.relational_formed.le_formula KY KP ir.1 ir.2 hy my)
  intro Δ δ e hp
  simp only [RelationalCode.le_rename,rPred_rename,ev_rename,pair_rename,part_rename,ObservationCode.tagged_rename] at hp ⊢
  have hr' := hr.rename e
  simp only [response_rename] at hr'
  have hl' := hl.rename e
  simp only [RelationalCode.le_rename,responsePred_rename] at hl'
  have hv' := carrier_typed_rename e hv
  have hx' := x_typed_rename (B := B) e hx
  have hu' := hu.rename e
  simp only [RelationalCode.valid_rename] at hu'
  exact (H.rename e).responsePair_member_le (KY.rename e) (KP.rename e) hv' (e.moded mv) hx' (e.moded mx)
    (x_typed_rename (B := B) e hy) (e.moded my) hr' hl' hu' hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean#L28641).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d364e9c3ed17618824ff839edb851a0b5ac042b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
