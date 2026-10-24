# mono_of_zero_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db88ade84586f1c1d27caa75a71ecb714aa372df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 320,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff511751a35ecffa1c5be7222cb83e03dd712a4f2cd4050a47676bfbbe697db8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eab1b6a4-316c-ef14-2673-a71956536af2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d06791d-db5e-177f-7433-cb6c3c6a701b",
  "kind": "theorem",
  "lexical_name": "mono_of_zero_kernel",
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
  "slug": "mono-of-zero-kernel--3a7926550aab993c3d03bb12",
  "source": {
    "blob": "db88ade84586f1c1d27caa75a71ecb714aa372df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 320,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantff511751a35ecffa1c5be7222cb83e03dd712a4f2cd4050a47676bfbbe697db8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a7926550aab993c3d03bb1227bed67af456b308e774d834ffcf078c5f679355",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantff511751a35ecffa1c5be7222cb83e03dd712a4f2cd4050a47676bfbbe697db8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d06791d-db5e-177f-7433-cb6c3c6a701b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mono_of_zero_kernel {X Y : C} (f : X ⟶ Y) (Z : C)
    (l : IsLimit (KernelFork.ofι (0 : Z ⟶ X) (show 0 ≫ f = 0 by simp))) : Mono f :=
  ⟨fun u v huv => by
    obtain ⟨W, w, hw, hl⟩ := normalEpiOfEpi (coequalizer.π u v)
    obtain ⟨m, hm⟩ := coequalizer.desc' f huv
    have reassoced {W : C} (h : coequalizer u v ⟶ W) : w ≫ coequalizer.π u v ≫ h = 0 ≫ h := by
      rw [← Category.assoc, eq_whisker hw]
    have hwf : w ≫ f = 0 := by rw [← hm, reassoced, zero_comp]
    obtain ⟨n, hn⟩ := KernelFork.IsLimit.lift' l _ hwf
    rw [Fork.ι_ofι, HasZeroMorphisms.comp_zero] at hn
    have : IsIso (coequalizer.π u v) := by
      apply isIso_colimit_cocone_parallelPair_of_eq hn.symm hl
    apply (cancel_mono (coequalizer.π u v)).1
    exact coequalizer.condition _ _⟩
#align category_theory.normal_epi_category.mono_of_zero_kernel CategoryTheory.NormalEpiCategory.mono_of_zero_kernel

section

variable [HasZeroObject C]

open ZeroObject

/-- If `g ≫ f = 0` implies `g = 0` for all `g`, then `f` is a monomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantff511751a35ecffa1c5be7222cb83e03dd712a4f2cd4050a47676bfbbe697db8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantff511751a35ecffa1c5be7222cb83e03dd712a4f2cd4050a47676bfbbe697db8.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db88ade84586f1c1d27caa75a71ecb714aa372df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
