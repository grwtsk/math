# natFloor_sq_le_of_cost

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7436b9f7-7381-a42d-5146-61b334e2d6d6",
  "kind": "theorem",
  "lexical_name": "natFloor_sq_le_of_cost",
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
  "slug": "natfloor-sq-le-of-cost--52b4d8bdf927c0a87404e88f",
  "source": {
    "blob": "85008d082fb3322f496501cefaad022547c7c71e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 120,
    "path": "GRWTSK/Analysis/SpecialFunctions/ExponentialFloorGap.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52b4d8bdf927c0a87404e88f7bb6f9b6393438faa1b869df5d40a843eedfefc8",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/ExponentialFloorGap.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7436b9f7-7381-a42d-5146-61b334e2d6d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natFloor_sq_le_of_cost (T q : ℝ) (hT : 0 ≤ T) (hq : 0 ≤ q)
    (hcost : 1 ≤ q ^ 2 *
      ((T - Real.log (Nat.floor (Real.exp T) : ℝ)) ^ 3 /
        (Nat.floor (Real.exp T) : ℝ))) :
    (Nat.floor (Real.exp T) : ℝ) ^ 2 ≤ q := by
  let m : ℝ := Nat.floor (Real.exp T)
  have hm : 0 < m := natFloor_exp_cast_pos T hT
  have hallowance := cubicAllowance_le_inv_natFloor_pow_four T hT
  have hbound : 1 ≤ q ^ 2 * (1 / m ^ 4) :=
    hcost.trans (mul_le_mul_of_nonneg_left hallowance (sq_nonneg q))
  have hdiv : 1 ≤ q ^ 2 / m ^ 4 := by
    simpa only [mul_one_div] using hbound
  have hpow : m ^ 4 ≤ q ^ 2 := by
    simpa only [one_mul] using (le_div_iff₀ (pow_pos hm 4)).1 hdiv
  have hsq : (m ^ 2) ^ 2 ≤ q ^ 2 := by
    simpa only [← pow_mul] using hpow
  exact (sq_le_sq₀ (sq_nonneg m) hq).1 hsq

end GRWTSK.Analysis.SpecialFunctions.ExponentialFloorGap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SpecialFunctions/ExponentialFloorGap.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/ExponentialFloorGap.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85008d082fb3322f496501cefaad022547c7c71e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
