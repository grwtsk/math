# triangle_integral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:898f1c67-38af-4ead-1f1c-b911c7dbe5a7",
  "kind": "theorem",
  "lexical_name": "triangle_integral_le",
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
  "slug": "triangle-integral-le--40de75643d3cb17c2c7ec970",
  "source": {
    "blob": "45b4fb611ded0ce10d8e9eabe5288592f6102da8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 81,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variantc61f3f1d068ed71591537197c9cb3ca1c49fc81ef23f6f06f62058ac6bca46bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40de75643d3cb17c2c7ec970d4198b17cda6c1af3d5b9927f3ac3ae51f6f15cc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variantc61f3f1d068ed71591537197c9cb3ca1c49fc81ef23f6f06f62058ac6bca46bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:898f1c67-38af-4ead-1f1c-b911c7dbe5a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem triangle_integral_le (f : ℝ → ℝ) (hf : Continuous f)
    (hf0 : ∀ t : ℝ, 0 ≤ f t) (A M : ℝ) (hA : 0 ≤ A)
    (hmean : ∀ T ∈ Icc A (2*A), cumulative f T ≤ M*T^2) :
    (∫ t in 0..2*A, f t * min t (2*A-t)) ≤ (7/3 : ℝ)*M*A^3 := by
  have hH := cumulative_continuous f hf
  have hnonneg : 0 ≤ ∫ t in 0..A, cumulative f t := by
    apply intervalIntegral.integral_nonneg hA
    intro t ht
    exact intervalIntegral.integral_nonneg (by linarith [ht.1]) (fun x _ => hf0 x)
  have hm := intervalIntegral.integral_mono_on (μ := volume) (by linarith : A ≤ 2*A)
    (hH.intervalIntegrable A (2*A))
    ((by fun_prop : Continuous (fun T : ℝ => M*T^2)).intervalIntegrable A (2*A)) hmean
  have hd (t : ℝ) : HasDerivAt (fun u : ℝ => M/3*u^3) (M*t^2) t := by
    exact (((hasDerivAt_id t).pow 3).const_mul (M/3)).congr_deriv (by dsimp only [id_eq]; ring)
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    ((by fun_prop : Continuous (fun t : ℝ => M*t^2)).intervalIntegrable A (2*A))
  rw [triangle_integral_eq f hf A hA]
  calc
    _ ≤ ∫ t in A..2*A, M*t^2 := by linarith
    _ = (7/3 : ℝ)*M*A^3 := by rw [hi]; ring

#print axioms triangle_integral_eq
#print axioms triangle_integral_le
end RH16SharpTriangleMeanBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variantc61f3f1d068ed71591537197c9cb3ca1c49fc81ef23f6f06f62058ac6bca46bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variantc61f3f1d068ed71591537197c9cb3ca1c49fc81ef23f6f06f62058ac6bca46bb.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45b4fb611ded0ce10d8e9eabe5288592f6102da8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
