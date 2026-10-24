# valuedCompletion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d898568b2fb8b7f37305fdece9fe3e47dfa8a7470c667fc2e85a7f3950a68727",
  "kind": "instance",
  "lexical_name": "valuedCompletion",
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
  "slug": "valuedcompletion--034fd4a1f9dedb5b5927747b",
  "source": {
    "blob": "629b7e1b7e879a2fbaa8c6ea97246011f0c44131",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 565,
    "line": 514,
    "path": "GRWTSK/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:034fd4a1f9dedb5b5927747b897b9807372b6d483ab45449d6b5bd195b4b1aa5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d898568b2fb8b7f37305fdece9fe3e47dfa8a7470c667fc2e85a7f3950a68727`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–565.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance valuedCompletion : Valued (hat K) Γ₀ where
  v := extensionValuation
  is_topological_valuation s := by
    suffices HasBasis (𝓝 (0 : hat K)) (fun _ ↦ True)
        fun γ : (ValueGroup₀ (.ofClass hv.v))ˣ ↦ { x | extensionValuation x <
          (Units.map (ValueGroup₀.embedding (f := (.ofClass hv.v))) γ).1 } by
      rw [this.mem_iff]
      simp only [extensionValuation_toFun, Units.coe_map, MonoidHom.coe_coe, true_and]
      have (x : hat K) (γ : (ValueGroup₀ (.ofClass hv.v))ˣ) : extensionValuation.restrict x <
          ((Units.map valueGroup₀_equiv_extensionValuation.toMonoidHom) γ).1 ↔
          embedding (extension x) < embedding γ.1 := by
        simp only [MulEquiv.toMonoidHom_eq_coe, Units.coe_map, MonoidHom.coe_coe]
        rw [embedding_strictMono.lt_iff_lt, Valuation.restrict_def, restrict₀_apply]
        by_cases hx0 : x = 0
        · simp only [hx0]
          rw [dite_eq_left (map_zero _)]
          · simp only [valueGroup₀_equiv_extensionValuation, valueGroup₀_hom_extensionValuation,
              MulEquiv.ofBijective_apply, coe_mk, ZeroHom.coe_mk]
            rw [Valuation.restrict_def, restrict₀_apply, dite_eq_right]
            · have hext : hv.extension 0 = 0 := by rw [extension_eq_zero_iff]
              simp [hext]
            · simp [← v.restrict.zero_iff, v.restrict_def,
                (restrict₀_surjective (.ofClass hv.v) _).choose_spec]
        · rw [dite_eq_right (by simp [hx0])]
          · set y := (restrict₀_surjective (.ofClass hv.v) γ).choose with hy_def
            have hy := (restrict₀_surjective (.ofClass hv.v) γ).choose_spec
            apply_fun embedding at hy
            simp only [← hy_def, embedding_restrict₀, coe_ofClass] at hy
            simp only [coe_ofClass, extensionValuation_toFun, valueGroup₀_equiv_extensionValuation,
              valueGroup₀_hom_extensionValuation, MulEquiv.ofBijective_apply, coe_mk,
              ZeroHom.coe_mk]
            rw [Valuation.restrict_def, restrict₀_apply, ← hy_def, dite_eq_right]
            · simp only [coe_ofClass, extensionValuation_toFun, extension_extends,
              Valuation.embedding_restrict, WithZero.coe_lt_coe, Subtype.mk_lt_mk,
              ← Units.val_lt_val, Units.val_mk0]
              convert embedding_strictMono (f := (.ofClass hv.v)).lt_iff_lt
            · simp only [coe_ofClass, extensionValuation_apply_coe, map_eq_zero, ← ne_eq]
              apply_fun v
              simp [hy]
      refine ⟨fun ⟨γ, h⟩ ↦ ?_, fun ⟨γ, h⟩ ↦ ?_⟩
      · use Units.map valueGroup₀_equiv_extensionValuation.toMonoidHom γ
        convert! h
        apply this
      · use Units.map valueGroup₀_equiv_extensionValuation.symm.toMonoidHom γ
        convert! h
        rw [← this]
        simp [Valuation.restrict_def, restrict₀_apply]
    simp_rw [← closure_coe_completion_v_lt, Units.coe_map]
    convert! (hasBasis_nhds_zero K Γ₀).hasBasis_of_isDenseInducing Completion.isDenseInducing_coe
    rw [Valuation.restrict_lt_iff_lt_embedding]; rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `629b7e1b7e879a2fbaa8c6ea97246011f0c44131` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
