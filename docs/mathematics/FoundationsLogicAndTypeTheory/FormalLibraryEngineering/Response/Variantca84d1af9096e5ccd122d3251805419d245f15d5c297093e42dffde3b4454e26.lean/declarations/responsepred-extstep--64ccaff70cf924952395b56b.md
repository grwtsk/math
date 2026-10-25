# responsePred_extStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5e3adf5-755b-c953-21a0-283fa8ed2e66",
  "kind": "theorem",
  "lexical_name": "responsePred_extStep",
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
  "slug": "responsepred-extstep--64ccaff70cf924952395b56b",
  "source": {
    "blob": "dadbac3f37913f76c505e2bf432f231738d76805",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1002,
    "line": 969,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variantca84d1af9096e5ccd122d3251805419d245f15d5c297093e42dffde3b4454e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64ccaff70cf924952395b56b9187cff06f641650484dcb25570e2e3e5af53fe6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variantca84d1af9096e5ccd122d3251805419d245f15d5c297093e42dffde3b4454e26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5e3adf5-755b-c953-21a0-283fa8ed2e66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 969–1002.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem responsePred_extStep {v x y : Expr S}
    (hv : HasType P Γ v B.relational.probe.carrier) (mv : WellModed γ v .data)
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data)
    (hy : HasType P Γ y B.xType) (my : WellModed γ y .data)
    (hr : Proves P Γ γ (B.response L.code KY.code KP.code v)) :
    Proves P Γ γ (B.relational.extStep L.code KY.code KP.code (B.responsePred L.code KY.code
      KP.code v) x y) := by
  have iv := H.responsePred_typed KY KP hv mv
  apply L.imp_intro_future (H.relational_formed.xCompare_formula KY KP hx mx hy my)
    (L.iff_formula (H.relational_formed.channel.eval_formula
      H.relational_formed.probe.carrier_sorted H.relational_formed.probe.carrier_mode iv.1
      iv.2 hx mx)
      (H.relational_formed.channel.eval_formula H.relational_formed.probe.carrier_sorted
        H.relational_formed.probe.carrier_mode iv.1 iv.2 hy my))
  intro Δ δ e he
  simp only [RelationalCode.xCompare_rename] at he
  simp only [LogicSetup.iff_rename,ChannelCode.eval_rename,ProbeCode.carrier_rename,
    responsePred_rename]
  have hr' := hr.rename e
  simp only [response_rename] at hr'
  have hv' := carrier_typed_rename e hv
  have hx' := x_typed_rename (B := B) e hx
  have hy' := x_typed_rename (B := B) e hy
  have iv' := (H.rename e).responsePred_typed (KY.rename e) (KP.rename e) hv' (e.moded mv)
  have ee := (H.rename e).responsePred_respect (KY.rename e) (KP.rename e) hv' (e.moded mv)
    hx' (e.moded mx) hy' (e.moded my) hr' he
  exact (L.rename e).iff_of_equivalent
    ((H.rename e).relational_formed.channel.eval_formula (H.rename
      e).relational_formed.probe.carrier_sorted (H.rename
      e).relational_formed.probe.carrier_mode iv'.1 iv'.2 hx' (e.moded mx))
    ((H.rename e).relational_formed.channel.eval_formula (H.rename
      e).relational_formed.probe.carrier_sorted (H.rename
      e).relational_formed.probe.carrier_mode iv'.1 iv'.2 hy' (e.moded my)) ee

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variantca84d1af9096e5ccd122d3251805419d245f15d5c297093e42dffde3b4454e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variantca84d1af9096e5ccd122d3251805419d245f15d5c297093e42dffde3b4454e26.lean#L969).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dadbac3f37913f76c505e2bf432f231738d76805` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
