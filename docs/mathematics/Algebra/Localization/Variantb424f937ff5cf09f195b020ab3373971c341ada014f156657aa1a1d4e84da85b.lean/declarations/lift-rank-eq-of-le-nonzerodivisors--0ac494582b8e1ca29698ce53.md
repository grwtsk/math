# lift_rank_eq_of_le_nonZeroDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32120bab-4839-b439-0550-8a451c5610a6",
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
  "slug": "lift-rank-eq-of-le-nonzerodivisors--0ac494582b8e1ca29698ce53",
  "source": {
    "blob": "b6e48f687edfe37badd7e42a91fbb3efc69885a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 201,
    "path": "GRWTSK/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ac494582b8e1ca29698ce53d5b44069474c8784b9c8b7dbb99fe3c4b272ff79",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32120bab-4839-b439-0550-8a451c5610a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–219.

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

[Verification target and public status](../../../../../verification/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6e48f687edfe37badd7e42a91fbb3efc69885a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
