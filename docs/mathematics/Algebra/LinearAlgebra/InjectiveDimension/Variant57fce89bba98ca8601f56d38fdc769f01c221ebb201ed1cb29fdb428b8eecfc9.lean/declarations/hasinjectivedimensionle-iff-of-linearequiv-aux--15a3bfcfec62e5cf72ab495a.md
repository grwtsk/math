# hasInjectiveDimensionLE_iff_of_linearEquiv_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51b41e20ca673b1e047fa992e6cf1c8ba66725fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57fce89bba98ca8601f56d38fdc769f01c221ebb201ed1cb29fdb428b8eecfc9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37188aaa-f194-bb79-1b18-f0adfc60cba7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7402b85c-7d5e-d5cb-6bfa-05e68c5de4c5",
  "kind": "lemma",
  "lexical_name": "hasInjectiveDimensionLE_iff_of_linearEquiv_aux",
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
  "slug": "hasinjectivedimensionle-iff-of-linearequiv-aux--15a3bfcfec62e5cf72ab495a",
  "source": {
    "blob": "51b41e20ca673b1e047fa992e6cf1c8ba66725fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 47,
    "path": "GRWTSK/Algebra/LinearAlgebra/InjectiveDimension/Variant57fce89bba98ca8601f56d38fdc769f01c221ebb201ed1cb29fdb428b8eecfc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15a3bfcfec62e5cf72ab495adeac28d130d19cb62eb6c839a2ab9905625fea96",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InjectiveDimension/Variant57fce89bba98ca8601f56d38fdc769f01c221ebb201ed1cb29fdb428b8eecfc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7402b85c-7d5e-d5cb-6bfa-05e68c5de4c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma hasInjectiveDimensionLE_iff_of_linearEquiv_aux [Small.{v} R]
    {M : ModuleCat.{v} R} {N : ModuleCat.{max v v'} R}
    (e : M ≃ₗ[R] N) (n : ℕ) : HasInjectiveDimensionLE M n ↔ HasInjectiveDimensionLE N n := by
  have : Small.{max v v'} R := small_lift R
  induction n generalizing M N with
  | zero =>
    simp [HasInjectiveDimensionLE, ← injective_iff_hasInjectiveDimensionLT_one,
      ← Module.injective_iff_injective_object R M, ← Module.injective_iff_injective_object R N,
      ← Module.Baer.iff_injective, Module.Baer.congr e]
  | succ n ih =>
    let ⟨I, _, f, _⟩ := EnoughInjectives.presentation M
    have injf : Function.Injective f.hom := (mono_iff_injective f).mp ‹_›
    let S : ShortComplex (ModuleCat.{v} R) :=
      ModuleCat.shortComplexOfCompEqZero _ _ f.hom.exact_map_mkQ_range.linearMap_comp_eq_zero
    have exactS := ModuleCat.shortComplex_shortExact S
      f.hom.exact_map_mkQ_range injf (Submodule.mkQ_surjective _)
    let I' := ModuleCat.of R (ULift.{v'} I)
    let f' : N →ₗ[R] I' := ULift.moduleEquiv.symm.toLinearMap.comp (f.hom.comp e.symm.toLinearMap)
    have injf' : Function.Injective f' := by simpa [f']
    let S' : ShortComplex (ModuleCat.{max v v'} R) :=
      ModuleCat.shortComplexOfCompEqZero _ _ f'.exact_map_mkQ_range.linearMap_comp_eq_zero
    have exactS' := ModuleCat.shortComplex_shortExact S'
      f'.exact_map_mkQ_range injf' (Submodule.mkQ_surjective _)
    let eCoker : ModuleCat.of R (I ⧸ f.hom.range) ≃ₗ[R] ModuleCat.of R (I' ⧸ f'.range) :=
      Submodule.Quotient.equiv _ _ ULift.moduleEquiv.symm (by simp [f', LinearMap.range_comp])
    exact (exactS.hasInjectiveDimensionLT_X₃_iff n inferInstance).symm.trans
      ((ih eCoker).trans (exactS'.hasInjectiveDimensionLT_X₃_iff n inferInstance))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InjectiveDimension/Variant57fce89bba98ca8601f56d38fdc769f01c221ebb201ed1cb29fdb428b8eecfc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InjectiveDimension/Variant57fce89bba98ca8601f56d38fdc769f01c221ebb201ed1cb29fdb428b8eecfc9.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51b41e20ca673b1e047fa992e6cf1c8ba66725fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
