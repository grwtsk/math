# openCoverOfBase'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05304e43d75c4bffd7958522bcf21286f60e460ed3994921f4c0268863ebd225",
  "kind": "def",
  "lexical_name": "openCoverOfBase'",
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
  "slug": "opencoverofbase--8d09354d6a11e0fb7ca45c1a",
  "source": {
    "blob": "9d2866b25edea2b5438d6659634844a94c5b2d1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 593,
    "line": 576,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variantcc5d75a039c327384598a993421ef46893138e88c3fe8702013cef629e363071.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d09354d6a11e0fb7ca45c1a318d45887e0c5f06b9a8e1f7dfa15d8b8554fad8",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Pullbacks/Variantcc5d75a039c327384598a993421ef46893138e88c3fe8702013cef629e363071.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05304e43d75c4bffd7958522bcf21286f60e460ed3994921f4c0268863ebd225`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 576–593.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def openCoverOfBase' (𝒰 : OpenCover.{v} Z) (f : X ⟶ Z) (g : Y ⟶ Z) :
    OpenCover.{v} (pullback f g) := by
  apply (openCoverOfLeft (𝒰.pullback₁ f) f g).bind
  intro i
  haveI := ((IsPullback.of_hasPullback (pullback.snd g (𝒰.f i))
    (pullback.snd f (𝒰.f i))).paste_horiz (IsPullback.of_hasPullback _ _)).flip
  refine
    @coverOfIsIso _ _ _ _ _
      (f := (pullbackSymmetry (pullback.snd f (𝒰.f i)) (pullback.snd g (𝒰.f i))).hom ≫
        (limit.isoLimitCone ⟨_, this.isLimit⟩).inv ≫
        pullback.map _ _ _ _ (𝟙 _) (𝟙 _) (𝟙 _) ?_ ?_) inferInstance
  · simp [← pullback.condition]
  · simp only [Category.comp_id, Category.id_comp]

set_option backward.isDefEq.respectTransparency false in
/-- Given an open cover `{ Zᵢ }` of `Z`, then `X ×[Z] Y` is covered by `Xᵢ ×[Zᵢ] Yᵢ`, where
  `Xᵢ = X ×[Z] Zᵢ` and `Yᵢ = Y ×[Z] Zᵢ` is the preimage of `Zᵢ` in `X` and `Y`. -/
@[simps! I₀ X f]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Pullbacks/Variantcc5d75a039c327384598a993421ef46893138e88c3fe8702013cef629e363071.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variantcc5d75a039c327384598a993421ef46893138e88c3fe8702013cef629e363071.lean#L576).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d2866b25edea2b5438d6659634844a94c5b2d1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
