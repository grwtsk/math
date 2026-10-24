# IsPrimitiveRoot.autToPow_eq_modularCyclotomicCharacter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:247f0f75-2caf-8bea-e5b6-95e318b1af0e",
  "kind": "lemma",
  "lexical_name": "IsPrimitiveRoot.autToPow_eq_modularCyclotomicCharacter",
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
  "slug": "isprimitiveroot-auttopow-eq-modularcyclotomiccharacter--015890b461eda5f282dab55f",
  "source": {
    "blob": "e2e976f3a4535232f7e7d78fde690cbb7b692c2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 250,
    "path": "GRWTSK/NumberTheory/CyclotomicCharacter/Variant6fcb1b812a7a428fa2a8bcf2813c320fe41602383436255787fd02c73882db66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:015890b461eda5f282dab55fe2c45e37e76633cac6e7e060a339423ee226e7eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/CyclotomicCharacter/Variant6fcb1b812a7a428fa2a8bcf2813c320fe41602383436255787fd02c73882db66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:247f0f75-2caf-8bea-e5b6-95e318b1af0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPrimitiveRoot.autToPow_eq_modularCyclotomicCharacter (n : ℕ) [NeZero n]
    (R : Type*) [CommRing R] [Algebra R L] {μ : L} (hμ : IsPrimitiveRoot μ n) (g : Gal(L/R)) :
    hμ.autToPow R g = modularCyclotomicCharacter L hμ.card_rootsOfUnity g := by
  ext
  apply ZMod.val_injective
  apply hμ.pow_inj (ZMod.val_lt _) (ZMod.val_lt _)
  simpa only [autToPow_spec R hμ g, modularCyclotomicCharacter, RingEquiv.toMulEquiv_eq_coe,
    MulEquiv.toMonoidHom_eq_coe, modularCyclotomicCharacter', MonoidHom.coe_comp, MonoidHom.coe_coe,
    Function.comp_apply, Units.coe_mapEquiv, MonoidHom.coe_toHomUnits, MonoidHom.coe_mk,
    OneHom.coe_mk, RingEquiv.coe_toMulEquiv, ZMod.ringEquivCongr_val, AlgEquiv.coe_ringEquiv]
    using modularCyclotomicCharacter.toFun_spec'' g hμ

/-

## The p-adic theory

-/

open modularCyclotomicCharacter in
open scoped Classical in
/-- The underlying function of the cyclotomic character. See `cyclotomicCharacter`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CyclotomicCharacter/Variant6fcb1b812a7a428fa2a8bcf2813c320fe41602383436255787fd02c73882db66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CyclotomicCharacter/Variant6fcb1b812a7a428fa2a8bcf2813c320fe41602383436255787fd02c73882db66.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2e976f3a4535232f7e7d78fde690cbb7b692c2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
