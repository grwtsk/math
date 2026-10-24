# lift_rank_eq_of_le_nonZeroDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f33952f3-f621-d39a-4d17-98bbedccd63d",
  "kind": "theorem",
  "lexical_name": "lift_rank_eq_of_le_nonZeroDivisors",
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
  "slug": "lift-rank-eq-of-le-nonzerodivisors--00fd9cc02d1683cf4556f202",
  "source": {
    "blob": "a4b6334ddb351d490a462226043d9218842e47b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 122,
    "path": "GRWTSK/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00fd9cc02d1683cf4556f202438e2634b48cd1c80257a7ca33532f0880d0e591",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f33952f3-f621-d39a-4d17-98bbedccd63d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_rank_eq_of_le_nonZeroDivisors :
    Cardinal.lift.{uM} (Module.rank T P) = Cardinal.lift.{uP} (Module.rank R M) := by
  rw [← lift_inj.{_, max uS uT uN}, lift_lift, lift_lift]
  let ST := S ⊗[R] T
  conv_rhs => rw [← lift_lift.{uN, max uS uT uP}, ← IsLocalizedModule.lift_rank_eq p f hp,
    ← IsLocalization.rank_eq S p hp, lift_lift, ← lift_lift.{max uS uT, max uM uP},
    ← rank_baseChange (R := ST), ← lift_id'.{max uS uT, max uS uT uN} (Module.rank ..),
    lift_lift, ← lift_lift.{max uS uT uP, uM}]
  let _ : Algebra T ST := Algebra.TensorProduct.rightAlgebra
  set pT := Algebra.algebraMapSubmonoid T p
  have : IsLocalization pT ST := isLocalizedModule_iff_isLocalization.mp
    (IsLocalization.tensorProduct_isLocalizedModule ..)
  rw [← lift_lift.{max uS uT, max uM uN}, ← lift_umax.{uP},
    ← IsLocalizedModule.lift_rank_eq pT (mk T ST P 1) hpT,
    ← IsLocalization.rank_eq ST pT hpT, lift_id'.{uP, max uS uT},
    ← lift_id'.{max uS uT, max uS uT uP} (Module.rank ..), lift_lift,
    ← lift_lift.{max uS uT uN, uM}, lift_inj]
  exact LinearEquiv.lift_rank_eq <| AlgebraTensorModule.congr (.refl ST ST) bc.equiv.symm ≪≫ₗ
    AlgebraTensorModule.cancelBaseChange .. ≪≫ₗ (AlgebraTensorModule.cancelBaseChange ..).symm ≪≫ₗ
    AlgebraTensorModule.congr (.refl ..) ((isLocalizedModule_iff_isBaseChange p S f).mp ‹_›).equiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4b6334ddb351d490a462226043d9218842e47b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
