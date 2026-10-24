# triangle_integral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a1fc616-eb72-de32-1b77-f5f01b3e3a83",
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
  "slug": "triangle-integral-le--931ad3045284df10068ca96a",
  "source": {
    "blob": "b07a6056ce5ef9cf9d7d778ca5f9cd9266b8e637",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant67b64d53b66adf35d23def3326ab0432d118be65e37d9d04d3c2e0c302f56f8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:931ad3045284df10068ca96ae50dce0338e1dea4248ef555937e322a54bf9974",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant67b64d53b66adf35d23def3326ab0432d118be65e37d9d04d3c2e0c302f56f8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a1fc616-eb72-de32-1b77-f5f01b3e3a83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–110.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant67b64d53b66adf35d23def3326ab0432d118be65e37d9d04d3c2e0c302f56f8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant67b64d53b66adf35d23def3326ab0432d118be65e37d9d04d3c2e0c302f56f8b.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b07a6056ce5ef9cf9d7d778ca5f9cd9266b8e637` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
