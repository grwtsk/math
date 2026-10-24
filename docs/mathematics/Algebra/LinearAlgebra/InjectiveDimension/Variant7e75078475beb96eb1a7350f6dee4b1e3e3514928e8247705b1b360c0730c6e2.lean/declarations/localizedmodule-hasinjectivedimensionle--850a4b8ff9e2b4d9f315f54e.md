# localizedModule_hasInjectiveDimensionLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdb5be56-2877-1b50-ea0c-7593ba495086",
  "kind": "lemma",
  "lexical_name": "localizedModule_hasInjectiveDimensionLE",
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
  "slug": "localizedmodule-hasinjectivedimensionle--850a4b8ff9e2b4d9f315f54e",
  "source": {
    "blob": "f02efd21f2b7b98b88f977c0a803868b1a08c2aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 50,
    "path": "GRWTSK/Algebra/LinearAlgebra/InjectiveDimension/Variant7e75078475beb96eb1a7350f6dee4b1e3e3514928e8247705b1b360c0730c6e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:850a4b8ff9e2b4d9f315f54e5281e743c1757ebbca1980b96375d75f720c1458",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InjectiveDimension/Variant7e75078475beb96eb1a7350f6dee4b1e3e3514928e8247705b1b360c0730c6e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdb5be56-2877-1b50-ea0c-7593ba495086`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma localizedModule_hasInjectiveDimensionLE [Small.{v, u} R] [IsNoetherianRing R] (n : ℕ)
    (S : Submonoid R) (M : ModuleCat.{v} R) [HasInjectiveDimensionLE M n] :
    HasInjectiveDimensionLE (M.localizedModule S) n := by
  have : Small.{v} (Localization S) := small_of_surjective Localization.mkHom_surjective
  induction n generalizing M with
  | zero =>
    have injle : HasInjectiveDimensionLE M 0 := ‹_›
    simp only [HasInjectiveDimensionLE, zero_add, ← injective_iff_hasInjectiveDimensionLT_one]
      at injle ⊢
    rw [← Module.injective_iff_injective_object] at injle ⊢
    exact Module.injective_of_isLocalizedModule S (M.localizedModuleMkLinearMap S)
  | succ n ih =>
    have ei : EnoughInjectives (ModuleCat.{v} R) := inferInstance
    rcases ei.1 M with ⟨I, inj, f, monof⟩
    let T := ShortComplex.mk f (cokernel.π f) (cokernel.condition f)
    have T_exact : T.ShortExact := { exact := ShortComplex.exact_cokernel f }
    have T_exact' : Function.Exact (ConcreteCategory.hom T.f) (ConcreteCategory.hom T.g) :=
      (ShortComplex.ShortExact.moduleCat_exact_iff_function_exact _).mp T_exact.1
    have TS_exact' := IsLocalizedModule.map_exact S (T.X₁.localizedModuleMkLinearMap S)
      (T.X₂.localizedModuleMkLinearMap S) (T.X₃.localizedModuleMkLinearMap S) _ _ T_exact'
    let TS := T.map (ModuleCat.localizedModuleFunctor S)
    have TS_exact : TS.ShortExact := T_exact.map_of_exact (ModuleCat.localizedModuleFunctor S)
    let _ := (T_exact.hasInjectiveDimensionLT_X₃_iff n ‹_›).mpr ‹_›
    let _ : Injective TS.X₂ := (ModuleCat.localizedModuleFunctor.{v} S).injective_obj _
    exact (TS_exact.hasInjectiveDimensionLT_X₃_iff n ‹_›).mp (ih T.X₃)

open Limits in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InjectiveDimension/Variant7e75078475beb96eb1a7350f6dee4b1e3e3514928e8247705b1b360c0730c6e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InjectiveDimension/Variant7e75078475beb96eb1a7350f6dee4b1e3e3514928e8247705b1b360c0730c6e2.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f02efd21f2b7b98b88f977c0a803868b1a08c2aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
