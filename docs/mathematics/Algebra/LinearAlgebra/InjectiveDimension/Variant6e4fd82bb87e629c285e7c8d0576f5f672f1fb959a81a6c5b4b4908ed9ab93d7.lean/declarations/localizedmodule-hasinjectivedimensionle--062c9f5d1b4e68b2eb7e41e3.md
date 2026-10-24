# localizedModule_hasInjectiveDimensionLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31012cc24d9d44422103ea48d50eb04ad55935a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b00b0b4a-82d4-2999-86c6-a43eabf786c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a35b0710-00a1-6101-f610-73932d78a0e7",
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
  "slug": "localizedmodule-hasinjectivedimensionle--062c9f5d1b4e68b2eb7e41e3",
  "source": {
    "blob": "31012cc24d9d44422103ea48d50eb04ad55935a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 42,
    "path": "GRWTSK/Algebra/LinearAlgebra/InjectiveDimension/Variant6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:062c9f5d1b4e68b2eb7e41e37962914731fe8ba45509822bf6333b994065cd59",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InjectiveDimension/Variant6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a35b0710-00a1-6101-f610-73932d78a0e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–68.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InjectiveDimension/Variant6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InjectiveDimension/Variant6e4fd82bb87e629c285e7c8d0576f5f672f1fb959a81a6c5b4b4908ed9ab93d7.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31012cc24d9d44422103ea48d50eb04ad55935a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
