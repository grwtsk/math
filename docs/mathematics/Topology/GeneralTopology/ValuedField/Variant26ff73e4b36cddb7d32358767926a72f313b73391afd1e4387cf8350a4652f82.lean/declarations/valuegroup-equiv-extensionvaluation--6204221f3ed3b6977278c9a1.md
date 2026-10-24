# valueGroup₀_equiv_extensionValuation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73c68a76fd73b5da21937a521ca777f35cd707ead5be3d4a6159f7aaab5f5e47",
  "kind": "def",
  "lexical_name": "valueGroup₀_equiv_extensionValuation",
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
  "slug": "valuegroup-equiv-extensionvaluation--6204221f3ed3b6977278c9a1",
  "source": {
    "blob": "52ee14416de300957883ed402d9fc6fe7f66c27e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 471,
    "path": "GRWTSK/Topology/GeneralTopology/ValuedField/Variant26ff73e4b36cddb7d32358767926a72f313b73391afd1e4387cf8350a4652f82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6204221f3ed3b6977278c9a13a93e4676914dad4de1eacab0bbf044e4eb4b27a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuedField/Variant26ff73e4b36cddb7d32358767926a72f313b73391afd1e4387cf8350a4652f82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73c68a76fd73b5da21937a521ca777f35cd707ead5be3d4a6159f7aaab5f5e47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def valueGroup₀_equiv_extensionValuation :
    ValueGroup₀ (.ofClass hv.v) ≃* ValueGroup₀ (.ofClass hv.extensionValuation) := by
  refine MulEquiv.ofBijective (valueGroup₀_hom_extensionValuation (hv := hv)) ⟨?_, ?_⟩
  · intro a b hab
    set x := (restrict₀_surjective (.ofClass hv.v) a).choose with hx_def
    have hx := (restrict₀_surjective (.ofClass hv.v) a).choose_spec
    set y := (restrict₀_surjective (.ofClass hv.v) b).choose with hy_def
    have hy := (restrict₀_surjective (.ofClass hv.v) b).choose_spec
    apply_fun embedding using embedding_injective
    apply_fun embedding at hx
    apply_fun embedding at hy
    simp only [← hx_def, embedding_restrict₀, coe_ofClass, ← hy_def] at hx hy
    simp only [valueGroup₀_hom_extensionValuation, coe_mk, ZeroHom.coe_mk] at hab
    have : hv.extensionValuation.restrict (algebraMap K _ x) =
       hv.extensionValuation.restrict (algebraMap _ _ y) := hab
    simp only [Valuation.restrict_def, restrict₀_apply, extensionValuation_coe_apply, map_eq_zero,
      extension_eq_zero_iff] at this
    by_cases ha0 : a = 0
    · have h0 : extension ((algebraMap K (hat K)) x) = 0 := by
        simpa [ha0, extension_eq_zero_iff, map_eq_zero] using hx
      simp [h0, reduceDIte, extension_eq_zero_iff, map_eq_zero,
        left_eq_dite_iff, WithZero.zero_ne_coe, imp_false, not_not] at this
      simp [ha0, ← hy, this]
    · apply_fun embedding at ha0 using embedding_injective (f := (.ofClass hv.v))
      have h0 : extension ((algebraMap K (hat K)) x) ≠ 0 := by
        simp only [ne_eq, extension_eq_zero_iff, map_eq_zero]
        intro h
        simp [h, ← hx] at ha0
      have h0' : extension ((algebraMap K (hat K)) y) ≠ 0 := by
        have hb0 : b ≠ 0 := by
          apply_fun embedding at hab using embedding_injective (f := (.ofClass hv.v))
          simp only [← hx_def, Valuation.embedding_restrict, extensionValuation_apply_coe,
            ← hy_def] at hab
          simpa [← hx, hab, hy] using ha0
        apply_fun embedding at hb0 using embedding_injective (f := (.ofClass hv.v))
        simp only [ne_eq, extension_eq_zero_iff, map_eq_zero]
        intro h
        simp [h, ← hy] at hb0
      simp only [map_eq_zero, h0, reduceDIte, h0', WithZero.coe_inj, Subtype.mk.injEq,
        Units.mk0_inj, embedding_inj] at this
      simp only [Completion.algebraMap_def, Algebra.algebraMap_self, RingHom.id_apply,
        extension_extends, Valuation.restrict_inj] at this
      rwa [← hx, ← hy]
  · intro x
    obtain ⟨k', hk'⟩ := restrict₀_surjective (.ofClass hv.extensionValuation) x
    use extension k'
    have := (restrict₀_surjective (.ofClass hv.v) (extension k')).choose_spec
    apply_fun embedding at this
    simpa [← embedding_inj, valueGroup₀_hom_extensionValuation, Valuation.restrict_def, ← hk',
      ← extensionValuation_toFun] using this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuedField/Variant26ff73e4b36cddb7d32358767926a72f313b73391afd1e4387cf8350a4652f82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuedField/Variant26ff73e4b36cddb7d32358767926a72f313b73391afd1e4387cf8350a4652f82.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52ee14416de300957883ed402d9fc6fe7f66c27e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
