# isPullback_fiberToSpecResidueField_of_isPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4596273f-044c-fdd8-dbe0-44cb7d6c408d",
  "kind": "lemma",
  "lexical_name": "isPullback_fiberToSpecResidueField_of_isPullback",
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
  "slug": "ispullback-fibertospecresiduefield-of-ispullback--a1592f34bf4bead34785f4c9",
  "source": {
    "blob": "8f06b130dff4c3da7dd5ae1a868ce9849f523402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 73,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Fiber/Variant6f5489c1679aff9bc21abeb1cae7bea37e2040cd287ded3c7f643e6ae3d45c02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1592f34bf4bead34785f4c91f8e370d40562fa3b4d7870d91993ba919c1dc62",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Fiber/Variant6f5489c1679aff9bc21abeb1cae7bea37e2040cd287ded3c7f643e6ae3d45c02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4596273f-044c-fdd8-dbe0-44cb7d6c408d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isPullback_fiberToSpecResidueField_of_isPullback {P X Y Z : Scheme.{u}} {fst : P ⟶ X}
    {snd : P ⟶ Y} {f : X ⟶ Z} {g : Y ⟶ Z} (h : IsPullback fst snd f g) (y : Y) :
    IsPullback (pullback.map _ _ _ _ fst (Spec.map (g.residueFieldMap y)) g h.w.symm (by simp))
      (snd.fiberToSpecResidueField y)
      (f.fiberToSpecResidueField (g y))
      (Spec.map (g.residueFieldMap y)) := by
  refine .of_right (h₁₂ := pullback.fst _ _) ?_ ?_
      (IsPullback.of_hasPullback f (Z.fromSpecResidueField (g y)))
  · simpa using! (IsPullback.of_hasPullback _ _).paste_horiz h
  · simp [Scheme.Hom.fiberToSpecResidueField]

set_option backward.isDefEq.respectTransparency false in
/-- The morphism from the fiber of `Spec S ⟶ Spec R` at some prime `p` to `Spec κ(p)`
is isomorphic to the map induced by `κ(p) ⟶ κ(p) ⊗[R] S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Fiber/Variant6f5489c1679aff9bc21abeb1cae7bea37e2040cd287ded3c7f643e6ae3d45c02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Fiber/Variant6f5489c1679aff9bc21abeb1cae7bea37e2040cd287ded3c7f643e6ae3d45c02.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f06b130dff4c3da7dd5ae1a868ce9849f523402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
