# isUnramifiedAt_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42a64e01-8b6f-384b-44dd-e0d84ffb2a91",
  "kind": "theorem",
  "lexical_name": "isUnramifiedAt_bot",
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
  "slug": "isunramifiedat-bot--cc664806870ec59b9c272f57",
  "source": {
    "blob": "8b003f3884485b10a57f3939c6a1ea0f2730251c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 112,
    "path": "GRWTSK/Algebra/Unramified/Variant2f4ce2358802b64eba61eb2feab4f12dcbb200a67649287b3d8139b5bade7f38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc664806870ec59b9c272f5790d031dc4685d870932638393f24b8f3b1f49881",
  "verification": {
    "reference": "docs/verification/Algebra/Unramified/Variant2f4ce2358802b64eba61eb2feab4f12dcbb200a67649287b3d8139b5bade7f38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42a64e01-8b6f-384b-44dd-e0d84ffb2a91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnramifiedAt_bot [IsDomain R] [IsDomain S] [Module.IsTorsionFree R S] [CharZero R]
    [Algebra.IsIntegral R S] : IsUnramifiedAt R (⊥ : Ideal S) := by
  have : IsFractionRing S (Localization.AtPrime (⊥ : Ideal S)) := by
    simpa [Ideal.primeCompl_bot] using Localization.isLocalization (M := (⊥ : Ideal S).primeCompl)
  let : Field (Localization.AtPrime (⊥ : Ideal S)) := IsFractionRing.toField S
  have : FaithfulSMul R (Localization.AtPrime (⊥ : Ideal S)) := by
    rw [faithfulSMul_iff_algebraMap_injective,
      IsScalarTower.algebraMap_eq R S (Localization.AtPrime ⊥)]
    exact (IsFractionRing.injective S _).comp (FaithfulSMul.algebraMap_injective R S)
  let := FractionRing.liftAlgebra R (Localization.AtPrime (⊥ : Ideal S))
  have : Algebra.IsAlgebraic (FractionRing R) (Localization.AtPrime ⊥) :=
    isAlgebraic_of_isFractionRing R S (FractionRing R) (Localization.AtPrime (⊥ : Ideal S))
  have : FormallyUnramified (FractionRing R) (Localization.AtPrime (⊥ : Ideal S)) :=
    FormallyUnramified.of_isSeparable _ _
  exact FormallyUnramified.comp R (FractionRing R) (Localization.AtPrime ⊥)

/-- In characteristic zero, the zero ideal is unramified in an integral domain extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Unramified/Variant2f4ce2358802b64eba61eb2feab4f12dcbb200a67649287b3d8139b5bade7f38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Unramified/Variant2f4ce2358802b64eba61eb2feab4f12dcbb200a67649287b3d8139b5bade7f38.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b003f3884485b10a57f3939c6a1ea0f2730251c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
