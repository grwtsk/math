# cancel_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4272e112-54ab-f896-5397-72cfa0025429",
  "kind": "theorem",
  "lexical_name": "cancel_right",
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
  "slug": "cancel-right--09468992abf8b1c4226f42c7",
  "source": {
    "blob": "5004afbe650475643ef54d788dcd72c2883777a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 119,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09468992abf8b1c4226f42c7067554d4cabffe7f5b9a746ac81db8ff9772ed24",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4272e112-54ab-f896-5397-72cfa0025429`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cancel_right {f₁ : X ⟶ Y} {f₂ : Y ⟶ Z} (comm : a ≫ f₁ = b ≫ f₁)
    (big_k : IsKernelPair (f₁ ≫ f₂) a b) : IsKernelPair f₁ a b :=
  { w := comm
    isLimit' :=
      ⟨PullbackCone.isLimitAux' _ fun s => by
        let s' : PullbackCone (f₁ ≫ f₂) (f₁ ≫ f₂) :=
          PullbackCone.mk s.fst s.snd (s.condition_assoc _)
        refine' ⟨big_k.isLimit.lift s', big_k.isLimit.fac _ WalkingCospan.left,
          big_k.isLimit.fac _ WalkingCospan.right, fun m₁ m₂ => _⟩
        apply big_k.isLimit.hom_ext
        refine' (PullbackCone.mk a b _ : PullbackCone (f₁ ≫ f₂) _).equalizer_ext _ _
        · apply reassoc_of% comm
        · apply m₁.trans (big_k.isLimit.fac s' WalkingCospan.left).symm
        · apply m₂.trans (big_k.isLimit.fac s' WalkingCospan.right).symm⟩ }
#align category_theory.is_kernel_pair.cancel_right CategoryTheory.IsKernelPair.cancel_right

/-- If `(a,b)` is a kernel pair for `f₁ ≫ f₂` and `f₂` is mono, then `(a,b)` is a kernel pair for
just `f₁`.
The converse of `comp_of_mono`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5004afbe650475643ef54d788dcd72c2883777a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
