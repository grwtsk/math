# map'_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58d5a528-486d-20cd-bc12-62cbaf5ef005",
  "kind": "theorem",
  "lexical_name": "map'_comp",
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
  "slug": "map-comp--23e3b78bd3cff9c0b3c462ab",
  "source": {
    "blob": "ddee0fd1ce72b50ccdb91956c214c2980ed3b477",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 184,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant55647887f3ae0c9ed0c80973d90370f298f8536511bf3b2d2bf878bf28aaa570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23e3b78bd3cff9c0b3c462ab62c23ce72b108e56bc62bebaf4322776f5da2962",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant55647887f3ae0c9ed0c80973d90370f298f8536511bf3b2d2bf878bf28aaa570.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58d5a528-486d-20cd-bc12-62cbaf5ef005`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map'_comp {M₁ M₂ M₃ : ModuleCat.{v} R} (l₁₂ : M₁ ⟶ M₂) (l₂₃ : M₂ ⟶ M₃) :
    map' f (l₁₂ ≫ l₂₃) = map' f l₁₂ ≫ map' f l₂₃ :=
  LinearMap.ext fun x : obj' f M₁ => by
    dsimp only [map']
    induction' x using TensorProduct.induction_on with _ _ x y ihx ihy
    · rfl
    · rfl
    · rw [map_add, map_add, ihx, ihy] -- Porting note: simp again failing where rw succeeds
#align category_theory.Module.extend_scalars.map'_comp CategoryTheory.ModuleCat.ExtendScalars.map'_comp

end ExtendScalars

/-- Extension of scalars is a functor where an `R`-module `M` is sent to `S ⊗ M` and
`l : M1 ⟶ M2` is sent to `s ⊗ m ↦ s ⊗ l m`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant55647887f3ae0c9ed0c80973d90370f298f8536511bf3b2d2bf878bf28aaa570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant55647887f3ae0c9ed0c80973d90370f298f8536511bf3b2d2bf878bf28aaa570.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddee0fd1ce72b50ccdb91956c214c2980ed3b477` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
