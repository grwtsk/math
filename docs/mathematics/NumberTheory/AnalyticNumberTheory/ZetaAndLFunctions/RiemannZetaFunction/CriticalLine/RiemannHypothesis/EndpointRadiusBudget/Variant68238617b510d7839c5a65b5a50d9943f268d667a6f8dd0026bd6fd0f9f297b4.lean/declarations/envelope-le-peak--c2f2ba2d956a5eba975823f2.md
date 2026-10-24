# envelope_le_peak

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fec744a-d507-804e-44ac-80d768f49be1",
  "kind": "theorem",
  "lexical_name": "envelope_le_peak",
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
  "slug": "envelope-le-peak--c2f2ba2d956a5eba975823f2",
  "source": {
    "blob": "5a6a81e4ea853c8973c054d7eeaf8197950c8587",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 22,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variant68238617b510d7839c5a65b5a50d9943f268d667a6f8dd0026bd6fd0f9f297b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2f2ba2d956a5eba975823f270dc94044c286b9402b1cb30d9a080ca1d5326dc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variant68238617b510d7839c5a65b5a50d9943f268d667a6f8dd0026bd6fd0f9f297b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fec744a-d507-804e-44ac-80d768f49be1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem envelope_le_peak (A : ℝ) (hA : 0 ≤ A) : envelope A ≤ envelope 3 := by
  have hlinear : Real.exp 1 * (A / 3) ≤ Real.exp (A / 3) :=
    Real.exp_one_mul_le_exp
  have hcube : (Real.exp 1 * (A / 3)) ^ 3 ≤ (Real.exp (A / 3)) ^ 3 := by
    gcongr
  have he1 : (Real.exp (1 : ℝ)) ^ 3 = Real.exp (3 : ℝ) := by
    rw [← Real.exp_nat_mul]
    norm_num
  have heA : (Real.exp (A / 3)) ^ 3 = Real.exp A := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  rw [mul_pow, he1, heA] at hcube
  have hbound := mul_le_mul_of_nonneg_right hcube
    (show 0 ≤ Real.exp (-A) * Real.exp (-3) by positivity)
  have he : Real.exp A * Real.exp (-A) = 1 := by
    rw [← Real.exp_add]
    simp
  have he3 : Real.exp (3 : ℝ) * Real.exp (-3) = 1 := by
    rw [← Real.exp_add]
    norm_num
  have hleft : Real.exp 3 * (A / 3) ^ 3 * (Real.exp (-A) * Real.exp (-3)) =
      (A / 3) ^ 3 * Real.exp (-A) := by
    calc
      _ = (A / 3) ^ 3 * Real.exp (-A) * (Real.exp 3 * Real.exp (-3)) := by ring
      _ = _ := by rw [he3, mul_one]
  have hright : Real.exp A * (Real.exp (-A) * Real.exp (-3)) = Real.exp (-3) := by
    rw [← mul_assoc, he, one_mul]
  rw [hleft, hright] at hbound
  unfold envelope
  nlinarith

/-- The same elementary tangency proves monotonic decrease beyond the peak. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variant68238617b510d7839c5a65b5a50d9943f268d667a6f8dd0026bd6fd0f9f297b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variant68238617b510d7839c5a65b5a50d9943f268d667a6f8dd0026bd6fd0f9f297b4.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a6a81e4ea853c8973c054d7eeaf8197950c8587` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
