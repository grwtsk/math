# mpullbackWithin_comp_of_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47cf2f49-cf10-b33c-9f59-2d1a280feb24",
  "kind": "lemma",
  "lexical_name": "mpullbackWithin_comp_of_right",
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
  "slug": "mpullbackwithin-comp-of-right--8353618ab01042779fb2599b",
  "source": {
    "blob": "615e126c4fe99c2dbf0bc2c6eafd189eeb7b2734",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 241,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Pullback/Variante84f17159a57817c2ff9137810c4fa2b966f0d7f5b55a534912d4b5351fd0aee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8353618ab01042779fb2599bc84ba4e310ef3dcc9e608c3b541303648a15dcfc",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Pullback/Variante84f17159a57817c2ff9137810c4fa2b966f0d7f5b55a534912d4b5351fd0aee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47cf2f49-cf10-b33c-9f59-2d1a280feb24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mpullbackWithin_comp_of_right
    {g : M' → M''} {f : M → M'} {V : Π (x : M''), TangentSpace I'' x} {s : Set M} {t : Set M'}
    {x₀ : M} (hg : MDiffAt[t] g (f x₀)) (h : Set.MapsTo f s t)
    (hu : UniqueMDiffAt[s] x₀) (hf' : (mfderiv[s] f x₀).IsInvertible) :
    mpullbackWithin I I'' (g ∘ f) V s x₀ =
      mpullbackWithin I I' f (mpullbackWithin I' I'' g V t) s x₀ := by
  simp only [mpullbackWithin]
  have hf : MDifferentiableWithinAt I I' f s x₀ :=
    mdifferentiableWithinAt_of_isInvertible_mfderivWithin hf'
  rw [mfderivWithin_comp _ hg hf h hu, IsInvertible.inverse_comp_apply_of_right hf',
    Function.comp_apply]


/-! ### Regularity of pullback of vector fields

In this paragraph, we assume that the model space is complete, to ensure that the set of invertible
linear maps is open and that inversion is a smooth map there. Otherwise, the pullback of vector
fields could behave wildly, even at points where the derivative of the map is invertible.
-/

section MDifferentiability

variable [IsManifold I 2 M] [IsManifold I' 2 M'] [CompleteSpace E]

/-- The pullback of a differentiable vector field by a `C^n` function with `2 ≤ n` is
differentiable. Version within a set at a point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Pullback/Variante84f17159a57817c2ff9137810c4fa2b966f0d7f5b55a534912d4b5351fd0aee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Pullback/Variante84f17159a57817c2ff9137810c4fa2b966f0d7f5b55a534912d4b5351fd0aee.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `615e126c4fe99c2dbf0bc2c6eafd189eeb7b2734` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
