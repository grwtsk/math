# valueGroup₀_hom_extensionValuation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c8e3e80c8258827d48acf205016e3dd1af1c285c4ca87e62795a6decdaf4c0e",
  "kind": "def",
  "lexical_name": "valueGroup₀_hom_extensionValuation",
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
  "slug": "valuegroup-hom-extensionvaluation--4122591667fa6e6f7db84e8d",
  "source": {
    "blob": "52ee14416de300957883ed402d9fc6fe7f66c27e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 431,
    "path": "GRWTSK/Topology/GeneralTopology/ValuedField/Variant26ff73e4b36cddb7d32358767926a72f313b73391afd1e4387cf8350a4652f82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4122591667fa6e6f7db84e8d9c5f287808d0f431d5a4e8a443a2a8c8e6c97248",
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

Occurrence: `declaration:2c8e3e80c8258827d48acf205016e3dd1af1c285c4ca87e62795a6decdaf4c0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def valueGroup₀_hom_extensionValuation :
    ValueGroup₀ (.ofClass hv.v) →*₀ ValueGroup₀ (.ofClass hv.extensionValuation) where
  toFun x := hv.extensionValuation.restrict (restrict₀_surjective (.ofClass hv.v) x).choose
  map_zero' := by simp [Valuation.restrict_def]
  map_one' := by
    apply_fun embedding using embedding_injective
    simpa using (restrict₀_surjective (.ofClass hv.v) 1).choose_spec
  map_mul' a b := by
    set x := (restrict₀_surjective (.ofClass hv.v) a).choose with hx_def
    have hx := (restrict₀_surjective (.ofClass hv.v) a).choose_spec
    set y := (restrict₀_surjective (.ofClass hv.v) b).choose with hy_def
    have hy := (restrict₀_surjective (.ofClass hv.v) b).choose_spec
    set xy := (restrict₀_surjective (.ofClass hv.v) (a * b)).choose with hxy_def
    have hxy := (restrict₀_surjective (.ofClass hv.v) (a * b)).choose_spec
    rw [← hx_def] at hx
    rw [← hy_def] at hy
    rw [← hxy_def] at hxy
    apply_fun embedding at hxy
    apply_fun embedding at hx
    apply_fun embedding at hy
    simp only [embedding_restrict₀, coe_ofClass, map_mul] at hxy hx hy
    simp only [Valuation.restrict_def, restrict₀_apply, coe_ofClass, extensionValuation_apply_coe,
      map_eq_zero, mul_dite, mul_zero, dite_mul, zero_mul]
    by_cases hx0 : x = 0
    · simpa [← hx, hx0] using hxy
    · by_cases hy0 : y = 0
      · simpa [← hy, hy0] using hxy
      · rw [dite_eq_right, dite_eq_right, dite_eq_right]
        · simp only [← WithZero.coe_mul, MulMemClass.mk_mul_mk, WithZero.coe_inj, Subtype.mk.injEq]
          rw [← Units.mk0_mul]
          · ext
            simp [Units.val_mk0, hx, hy, hxy]
          · aesop
        · simpa
        · simpa
        · simp [extensionValuation_apply_coe, hxy, ← hx, ← hy, hx0, hy0]

set_option backward.isDefEq.respectTransparency.types false in
/-- The zero-preserving monoid homomorphism from the `ValueGroup₀` of the valuation on `K` to
  that of the extension to its completion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuedField/Variant26ff73e4b36cddb7d32358767926a72f313b73391afd1e4387cf8350a4652f82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuedField/Variant26ff73e4b36cddb7d32358767926a72f313b73391afd1e4387cf8350a4652f82.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52ee14416de300957883ed402d9fc6fe7f66c27e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
