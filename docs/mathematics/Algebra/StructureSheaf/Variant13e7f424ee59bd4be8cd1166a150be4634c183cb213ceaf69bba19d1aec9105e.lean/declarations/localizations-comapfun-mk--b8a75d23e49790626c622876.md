# Localizations.comapFun_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb97a5b7-9c55-dda5-8647-c7b035a91fe5",
  "kind": "lemma",
  "lexical_name": "Localizations.comapFun_mk",
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
  "slug": "localizations-comapfun-mk--b8a75d23e49790626c622876",
  "source": {
    "blob": "08b659a0a3f3a16341f764ca121c95b64ce83209",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1009,
    "line": 982,
    "path": "GRWTSK/Algebra/StructureSheaf/Variant13e7f424ee59bd4be8cd1166a150be4634c183cb213ceaf69bba19d1aec9105e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8a75d23e49790626c622876039d7ce6a0a2aae5e607a9fe01d52c3856ccde4e",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variant13e7f424ee59bd4be8cd1166a150be4634c183cb213ceaf69bba19d1aec9105e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb97a5b7-9c55-dda5-8647-c7b035a91fe5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 982–1009.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Localizations.comapFun_mk (y : PrimeSpectrum.Top S)
    (a : M) (b : (y.comap σ).asIdeal.primeCompl) :
    Localizations.comapFun f y (.mk a b) = .mk (f a) ⟨σ b.1, b.2⟩ := by
  let := Module.compHom N σ
  let := σ.toAlgebra
  have : IsScalarTower R S N := .of_algebraMap_smul fun _ _ ↦ rfl
  apply ((Module.End.isUnit_iff _).mp (IsLocalizedModule.map_units (S := y.asIdeal.primeCompl)
    (LocalizedModule.mkLinearMap y.asIdeal.primeCompl N) ⟨σ b, b.2⟩)).1
  dsimp
  rw [← (comapFun f y).map_smulₛₗ, LocalizedModule.smul'_mk, ← Submonoid.smul_def,
    LocalizedModule.mk_cancel, ← LocalizedModule.mkLinearMap_apply]
  dsimp [comapFun, Localizations]
  refine (IsLocalizedModule.lift_apply ..).trans ?_
  dsimp
  rw [← LocalizedModule.mk_cancel ⟨σ b.1, b.2⟩, LocalizedModule.smul'_mk]
  rfl

/--
Given a ring homomorphism `f : R →+* S`, an open set `U` of the prime spectrum of `R` and an open
set `V` of the prime spectrum of `S`, such that `V ⊆ (comap f) ⁻¹' U`, we can push a section `s`
on `U` to a section on `V`, by composing with `Localization.localRingHom _ _ f` from the left and
`comap f` from the right. Explicitly, if `s` evaluates on `comap f p` to `a / b`, its image on `V`
evaluates on `p` to `f(a) / f(b)`.

At the moment, we work with arbitrary dependent functions `s : Π x : U, Localizations R x`. Below,
we prove the predicate `isLocallyFraction` is preserved by this map, hence it can be extended to
a morphism between the structure sheaves of `R` and `S`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variant13e7f424ee59bd4be8cd1166a150be4634c183cb213ceaf69bba19d1aec9105e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variant13e7f424ee59bd4be8cd1166a150be4634c183cb213ceaf69bba19d1aec9105e.lean#L982).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08b659a0a3f3a16341f764ca121c95b64ce83209` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
