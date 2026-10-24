# mono_ι_of_isPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6cd7690dbfb0f6a3d4363108a0034692804640c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af7b5eab825f54e03593a1629f0702f1006ec6a25498712471fc84389d70003e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2facf3bb-2463-d3c9-ce31-62d7c499751d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e6bbe7f-7013-7fab-3019-a41de7bd0f14",
  "kind": "theorem",
  "lexical_name": "mono_ι_of_isPullback",
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
  "slug": "mono-of-ispullback--dcd213e46baae11bdad29319",
  "source": {
    "blob": "6cd7690dbfb0f6a3d4363108a0034692804640c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 35,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variantaf7b5eab825f54e03593a1629f0702f1006ec6a25498712471fc84389d70003e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcd213e46baae11bdad29319b9611c2922d877c3fce1b6740dc918ad1a5fbeb0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variantaf7b5eab825f54e03593a1629f0702f1006ec6a25498712471fc84389d70003e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e6bbe7f-7013-7fab-3019-a41de7bd0f14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mono_ι_of_isPullback [Adhesive C₃] (sq : F.PushoutObjObj f₁ f₂)
    (h : IsPullback ((F.map f₁).app X₂) ((F.obj X₁).map f₂) ((F.obj Y₁).map f₂) ((F.map f₁).app Y₂))
    [Mono ((F.obj Y₁).map f₂)] [Mono ((F.map f₁).app Y₂)] : Mono sq.ι := by
  rw [show sq.ι = sq.isPushout.desc _ _ h.w by ext <;> simp]
  exact sq.isPushout.desc_mono_of_isPullback h

end Functor.PushoutObjObj

namespace MonoidalCategory.Arrow.PushoutProduct

universe v u

variable {C : Type u} [Category.{v} C] [HasPushouts C]

open CartesianMonoidalCategory in
/-- The pushout-product of two monomorphisms in an adhesive cartesian monoidal category is a
monomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variantaf7b5eab825f54e03593a1629f0702f1006ec6a25498712471fc84389d70003e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variantaf7b5eab825f54e03593a1629f0702f1006ec6a25498712471fc84389d70003e.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cd7690dbfb0f6a3d4363108a0034692804640c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
