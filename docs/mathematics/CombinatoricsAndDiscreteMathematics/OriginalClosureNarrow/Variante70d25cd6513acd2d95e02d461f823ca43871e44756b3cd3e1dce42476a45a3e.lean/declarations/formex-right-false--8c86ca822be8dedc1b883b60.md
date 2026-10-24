# formEx_right_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c62b7a69-6588-5150-b533-7d0af68cc8c8",
  "kind": "theorem",
  "lexical_name": "formEx_right_false",
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
  "slug": "formex-right-false--8c86ca822be8dedc1b883b60",
  "source": {
    "blob": "8d364e9c3ed17618824ff839edb851a0b5ac042b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28247,
    "line": 28227,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c86ca822be8dedc1b883b60e72cbbaa6c2a8d283dcb9938b2f2fe43ef91cfdf",
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

Occurrence: `result:c62b7a69-6588-5150-b533-7d0af68cc8c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28227–28247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem formEx_right_false {v x : Expr S}
    (hv : HasType P Γ v B.predType) (mv : WellModed γ v .data)
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data) :
    Proves P Γ γ (L.neg (L.code.ex KY.code B.yType
      (B.formExBody L.code KY.code KP.code v (B.observation.tagged L.code 2 x)))) := by
  have ht := H.observation.tagged_typed 2 hx mx
  apply L.imp_intro_future (L.ex_formula KY H.y_sorted H.y_mode (H.formExBody_family KY KP hv mv ht.1 ht.2)) L.bottom_formula
  intro Δ δ e he
  simp only [LogicCode.ex_rename,formExBody_rename,ObservationCode.tagged_rename,yType_rename] at he
  rw [LogicSetup.bottom_rename]
  have hx' := x_typed_rename (B := B) e hx
  have ht' := (H.rename e).observation.tagged_typed 2 hx' (e.moded mx)
  apply (H.rename e).formEx_elim (KY.rename e) (KP.rename e) (v_typed_rename (B := B) e hv) (e.moded mv) ht'.1 ht'.2 (L.rename e).bottom_formula he
  intro Θ θ f y hy my hed _
  rw [LogicSetup.bottom_rename]
  simp only [ObservationCode.tagged_rename] at hed
  have hx'' := x_typed_rename (B := B.rename e.names) f hx'
  have ht'' := ((H.rename e).rename f).observation.tagged_typed 2 hx'' (f.moded (e.moded mx))
  have hn := ((H.rename e).rename f).edge_wrong_tag ((KY.rename e).rename f) ((KP.rename e).rename f) false 2 (by decide) hy my hx'' (f.moded (e.moded mx))
  exact ((L.rename e).rename f).imp_elim (((H.rename e).rename f).edge_formula ((KY.rename e).rename f) ((KP.rename e).rename f) false hy my ht''.1 ht''.2) ((L.rename e).rename f).bottom_formula hn hed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean#L28227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d364e9c3ed17618824ff839edb851a0b5ac042b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
