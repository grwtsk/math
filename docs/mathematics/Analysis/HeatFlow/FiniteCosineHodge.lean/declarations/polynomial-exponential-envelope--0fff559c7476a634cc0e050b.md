# polynomial_exponential_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9c0a937-eab4-ccca-3b6e-b6bcadec39fe",
  "kind": "theorem",
  "lexical_name": "polynomial_exponential_envelope",
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
  "slug": "polynomial-exponential-envelope--0fff559c7476a634cc0e050b",
  "source": {
    "blob": "9f0c632413378e72cc78f91f0809a45b104e0740",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 933,
    "line": 896,
    "path": "GRWTSK/Analysis/HeatFlow/FiniteCosineHodge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fff559c7476a634cc0e050bf3152efc359c12e93eb8a00b183e36b4180e7fd6",
  "verification": {
    "reference": "docs/verification/Analysis/HeatFlow/FiniteCosineHodge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9c0a937-eab4-ccca-3b6e-b6bcadec39fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 896–933.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_exponential_envelope (x : ℝ) (hx : 0 ≤ x) :
    (x ^ 2 + x) * Real.exp (-x) ≤
      20 * Real.exp (-(x / 2)) := by
  have hx4 : 0 ≤ x / 4 := by positivity
  have hExpLower : 1 + x / 4 ≤ Real.exp (x / 4) := by
    simpa [add_comm] using (Real.add_one_le_exp (x / 4))
  have hEone : 1 ≤ Real.exp (x / 4) := by linarith
  have hlinear : x ≤ 4 * Real.exp (x / 4) := by linarith
  have hsquare : x ^ 2 ≤ 16 * Real.exp (x / 4) ^ 2 := by
    have hdiff : 0 ≤ 4 * Real.exp (x / 4) - x := by linarith
    nlinarith [mul_nonneg hdiff (by
      linarith : 0 ≤ 4 * Real.exp (x / 4) + x)]
  have hEminus : 0 ≤ Real.exp (x / 4) - 1 := by linarith
  have hEsquare : Real.exp (x / 4) ≤ Real.exp (x / 4) ^ 2 := by
    nlinarith [mul_nonneg hEminus (Real.exp_pos (x / 4)).le]
  have hlinearSquare : x ≤ 4 * Real.exp (x / 4) ^ 2 := by
    linarith
  have hpoly : x ^ 2 + x ≤ 20 * Real.exp (x / 4) ^ 2 := by
    linarith
  have hexp : Real.exp (x / 4) ^ 2 = Real.exp (x / 2) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  rw [hexp] at hpoly
  have hmul := mul_le_mul_of_nonneg_right hpoly (Real.exp_pos (-x)).le
  have hid : Real.exp (x / 2) * Real.exp (-x) =
      Real.exp (-(x / 2)) := by
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    (x ^ 2 + x) * Real.exp (-x) ≤
        20 * Real.exp (x / 2) * Real.exp (-x) := hmul
    _ = 20 * Real.exp (-(x / 2)) := by rw [mul_assoc, hid]

end

end GRWTSK.Analysis.HeatFlow.FiniteCosineHodge
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/HeatFlow/FiniteCosineHodge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HeatFlow/FiniteCosineHodge.lean#L896).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f0c632413378e72cc78f91f0809a45b104e0740` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
