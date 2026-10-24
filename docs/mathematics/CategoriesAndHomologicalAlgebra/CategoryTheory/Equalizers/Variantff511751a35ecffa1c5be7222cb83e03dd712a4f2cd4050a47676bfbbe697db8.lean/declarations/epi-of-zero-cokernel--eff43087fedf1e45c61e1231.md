# epi_of_zero_cokernel

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
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff511751a35ecffa1c5be7222cb83e03dd712a4f2cd4050a47676bfbbe697db8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a584d87f-5e1b-da57-cf52-f8cc1af49baf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d605bb7-b1bc-2bdc-f2dc-641a5554aa3e",
  "kind": "theorem",
  "lexical_name": "epi_of_zero_cokernel",
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
  "slug": "epi-of-zero-cokernel--eff43087fedf1e45c61e1231",
  "source": {
    "blob": "db88ade84586f1c1d27caa75a71ecb714aa372df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 155,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantff511751a35ecffa1c5be7222cb83e03dd712a4f2cd4050a47676bfbbe697db8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eff43087fedf1e45c61e1231b9273c80c6e9519a822a72d4398bf183fcaf232c",
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

Occurrence: `result:4d605bb7-b1bc-2bdc-f2dc-641a5554aa3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem epi_of_zero_cokernel {X Y : C} (f : X ⟶ Y) (Z : C)
    (l : IsColimit (CokernelCofork.ofπ (0 : Y ⟶ Z) (show f ≫ 0 = 0 by simp))) : Epi f :=
  ⟨fun u v huv => by
    obtain ⟨W, w, hw, hl⟩ := normalMonoOfMono (equalizer.ι u v)
    obtain ⟨m, hm⟩ := equalizer.lift' f huv
    have hwf : f ≫ w = 0 := by rw [← hm, Category.assoc, hw, comp_zero]
    obtain ⟨n, hn⟩ := CokernelCofork.IsColimit.desc' l _ hwf
    rw [Cofork.π_ofπ, zero_comp] at hn
    have : IsIso (equalizer.ι u v) := by apply isIso_limit_cone_parallelPair_of_eq hn.symm hl
    apply (cancel_epi (equalizer.ι u v)).1
    exact equalizer.condition _ _⟩
#align category_theory.normal_mono_category.epi_of_zero_cokernel CategoryTheory.NormalMonoCategory.epi_of_zero_cokernel

section

variable [HasZeroObject C]

open ZeroObject

/-- If `f ≫ g = 0` implies `g = 0` for all `g`, then `g` is a monomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantff511751a35ecffa1c5be7222cb83e03dd712a4f2cd4050a47676bfbbe697db8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantff511751a35ecffa1c5be7222cb83e03dd712a4f2cd4050a47676bfbbe697db8.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db88ade84586f1c1d27caa75a71ecb714aa372df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
