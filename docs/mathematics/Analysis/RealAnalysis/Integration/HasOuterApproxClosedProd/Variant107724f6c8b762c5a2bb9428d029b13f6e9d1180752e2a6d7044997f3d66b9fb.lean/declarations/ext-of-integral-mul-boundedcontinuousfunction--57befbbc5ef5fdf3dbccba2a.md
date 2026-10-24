# ext_of_integral_mul_boundedContinuousFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b963c3e0766328db4efb132ae80a03157e47480f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/107724f6c8b762c5a2bb9428d029b13f6e9d1180752e2a6d7044997f3d66b9fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dfa4618c-28ab-0288-3cec-14f200395ed4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fde05e7c-d165-9b16-5c07-8677e927de7b",
  "kind": "lemma",
  "lexical_name": "ext_of_integral_mul_boundedContinuousFunction",
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
  "slug": "ext-of-integral-mul-boundedcontinuousfunction--57befbbc5ef5fdf3dbccba2a",
  "source": {
    "blob": "b963c3e0766328db4efb132ae80a03157e47480f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 251,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant107724f6c8b762c5a2bb9428d029b13f6e9d1180752e2a6d7044997f3d66b9fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57befbbc5ef5fdf3dbccba2a445b293239a234a9139ca5e481dd7d2da71fa9e4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant107724f6c8b762c5a2bb9428d029b13f6e9d1180752e2a6d7044997f3d66b9fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fde05e7c-d165-9b16-5c07-8677e927de7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ext_of_integral_mul_boundedContinuousFunction {μ ν : Measure (Z × T)}
    [IsFiniteMeasure μ] [IsFiniteMeasure ν]
    (h : ∀ (f : Z →ᵇ ℝ) (g : T →ᵇ ℝ), ∫ p, f p.1 * g p.2 ∂μ = ∫ p, f p.1 * g p.2 ∂ν) :
    μ = ν := by
  let e : (Z × T) ≃ᵐ ((Unit → Z) × (Unit → T)) :=
    .symm <| .prodCongr (.funUnique ..) (.funUnique ..)
  rw [← e.map_measurableEquiv_injective.eq_iff]
  refine ext_of_integral_prod_mul_prod_boundedContinuousFunction fun f g ↦ ?_
  rw [integral_map_equiv, integral_map_equiv]
  simpa [e] using! h (f ()) (g ())

/-- The product of two finite measures `μ` and `ν` is the only finite measure `ξ` such that
for all real bounded continuous functions `f` and `g` we have
`∫ z, f z.1 * g z.2 ∂ξ = ∫ x, f x ∂μ * ∫ y, g y ∂ν`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant107724f6c8b762c5a2bb9428d029b13f6e9d1180752e2a6d7044997f3d66b9fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant107724f6c8b762c5a2bb9428d029b13f6e9d1180752e2a6d7044997f3d66b9fb.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b963c3e0766328db4efb132ae80a03157e47480f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
