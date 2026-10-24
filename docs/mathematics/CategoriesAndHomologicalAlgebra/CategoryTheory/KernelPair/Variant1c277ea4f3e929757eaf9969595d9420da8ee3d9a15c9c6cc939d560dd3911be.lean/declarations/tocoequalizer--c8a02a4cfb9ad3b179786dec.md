# toCoequalizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee68a35546ca19d1a22c185feece1c0d41f43a46e893d2a5f84e496f43f4ae69",
  "kind": "def",
  "lexical_name": "toCoequalizer",
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
  "slug": "tocoequalizer--c8a02a4cfb9ad3b179786dec",
  "source": {
    "blob": "9bb8b0c25ad583e045115e106b98c78685049f8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 149,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8a02a4cfb9ad3b179786dec7a452772494a8a3e1a7235dc4ff340384f591949",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee68a35546ca19d1a22c185feece1c0d41f43a46e893d2a5f84e496f43f4ae69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toCoequalizer (k : IsKernelPair f a b) [r : RegularEpi f] : IsColimit (Cofork.ofπ f k.w) := by
  let t := k.isLimit.lift (PullbackCone.mk _ _ r.w)
  have ht : t ≫ a = r.left := k.isLimit.fac _ WalkingCospan.left
  have kt : t ≫ b = r.right := k.isLimit.fac _ WalkingCospan.right
  refine Cofork.IsColimit.mk _
    (fun s => Cofork.IsColimit.desc r.isColimit s.π
      (by rw [← ht, assoc, s.condition, reassoc_of% kt]))
    (fun s => ?_) (fun s m w => ?_)
  · apply Cofork.IsColimit.π_desc' r.isColimit
  · apply Cofork.IsColimit.hom_ext r.isColimit
    exact w.trans (Cofork.IsColimit.π_desc' r.isColimit _ _).symm

/-- If `a₁ a₂ : A ⟶ Y` is a kernel pair for `g : Y ⟶ Z`, then `a₁ ×[Z] X` and `a₂ ×[Z] X`
(`A ×[Z] X ⟶ Y ×[Z] X`) is a kernel pair for `Y ×[Z] X ⟶ X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bb8b0c25ad583e045115e106b98c78685049f8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
