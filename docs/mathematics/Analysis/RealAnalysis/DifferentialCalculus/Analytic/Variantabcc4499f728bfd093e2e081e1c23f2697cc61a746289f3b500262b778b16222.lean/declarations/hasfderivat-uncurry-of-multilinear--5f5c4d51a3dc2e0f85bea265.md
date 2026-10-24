# hasFDerivAt_uncurry_of_multilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3912e58-e010-b729-dcdb-f0a3029f5172",
  "kind": "theorem",
  "lexical_name": "hasFDerivAt_uncurry_of_multilinear",
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
  "slug": "hasfderivat-uncurry-of-multilinear--5f5c4d51a3dc2e0f85bea265",
  "source": {
    "blob": "58732ca32810577e144569aedf1b4e3825c2e505",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 837,
    "line": 806,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variantabcc4499f728bfd093e2e081e1c23f2697cc61a746289f3b500262b778b16222.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f5c4d51a3dc2e0f85bea265c982d0f581b7eb2f31e5d4c4c8130fb12204f539",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variantabcc4499f728bfd093e2e081e1c23f2697cc61a746289f3b500262b778b16222.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3912e58-e010-b729-dcdb-f0a3029f5172`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 806–837.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivAt_uncurry_of_multilinear [DecidableEq ι]
    (f : E →L[𝕜] ContinuousMultilinearMap 𝕜 G F) (v : E × Π i, G i) :
    HasFDerivAt (fun (p : E × Π i, G i) ↦ f p.1 p.2)
      ((f.flipMultilinear v.2) ∘L (.fst _ _ _) +
        ∑ i : ι, ((f v.1).toContinuousLinearMap v.2 i) ∘L (.proj _) ∘L (.snd _ _ _)) v := by
  convert HasFDerivAt.multilinear_comp (f.continuousMultilinearMapOption)
    (g := fun (_ : Option ι) p ↦ p) (g' := fun _ ↦ ContinuousLinearMap.id _ _) (x := v)
    (fun _ ↦ hasFDerivAt_id _)
  have I : f.continuousMultilinearMapOption.toContinuousLinearMap (fun _ ↦ v) none =
      (f.flipMultilinear v.2) ∘L (.fst _ _ _) := by
    simp [ContinuousMultilinearMap.toContinuousLinearMap, continuousMultilinearMapOption]
    apply ContinuousLinearMap.ext (fun w ↦ ?_)
    simp
  have J : ∀ (i : ι), f.continuousMultilinearMapOption.toContinuousLinearMap (fun _ ↦ v) (some i)
      = ((f v.1).toContinuousLinearMap v.2 i) ∘L (.proj _) ∘L (.snd _ _ _) := by
    intro i
    apply ContinuousLinearMap.ext (fun w ↦ ?_)
    simp only [ContinuousMultilinearMap.toContinuousLinearMap, continuousMultilinearMapOption,
      coe_mk', MultilinearMap.toLinearMap_apply, ContinuousMultilinearMap.coe_coe,
      MultilinearMap.coe_mkContinuous, MultilinearMap.coe_mk, ne_eq, reduceCtorEq,
      not_false_eq_true, Function.update_of_ne, coe_comp', coe_snd', Function.comp_apply,
      proj_apply]
    congr
    ext j
    rcases eq_or_ne j i with rfl | hij
    · simp
    · simp [hij]
  simp [I, J]

/-- Given `f` a linear map into multilinear maps, then the derivative
of `x ↦ f (a x) (b₁ x, ..., bₙ x)` at `x` applied to a vector `v` is given by
`f (a' v) (b₁ x, ...., bₙ x) + ∑ i, f a (b₁ x, ..., b'ᵢ v, ..., bₙ x)`. Version inside a set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variantabcc4499f728bfd093e2e081e1c23f2697cc61a746289f3b500262b778b16222.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variantabcc4499f728bfd093e2e081e1c23f2697cc61a746289f3b500262b778b16222.lean#L806).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58732ca32810577e144569aedf1b4e3825c2e505` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
