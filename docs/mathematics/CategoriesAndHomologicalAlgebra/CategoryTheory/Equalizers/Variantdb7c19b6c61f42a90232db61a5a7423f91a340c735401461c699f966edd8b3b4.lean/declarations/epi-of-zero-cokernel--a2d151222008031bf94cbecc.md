# epi_of_zero_cokernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15609bbb-e5e3-cddb-8013-67e862683d4f",
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
  "slug": "epi-of-zero-cokernel--a2d151222008031bf94cbecc",
  "source": {
    "blob": "8ca207bbc3960f18fd20f63198a2343d73a645c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 163,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2d151222008031bf94cbecccb4f319fd8a5294119936c4cb6ceac52c7ce60cc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15609bbb-e5e3-cddb-8013-67e862683d4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–182.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ca207bbc3960f18fd20f63198a2343d73a645c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
