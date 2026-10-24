# log1pTaylorPoly_aeval_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77e3dc11-3744-1362-d289-1ad7009d769f",
  "kind": "theorem",
  "lexical_name": "log1pTaylorPoly_aeval_eq_sum",
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
  "slug": "log1ptaylorpoly-aeval-eq-sum--fca6b2043b60d3f9da4388b4",
  "source": {
    "blob": "bf9e8892b67e403f0ebaf17412bc3ebafbeb336d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 180,
    "path": "GRWTSK/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fca6b2043b60d3f9da4388b426e276841bebee7c8d8a4fafa36d10db244044dc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77e3dc11-3744-1362-d289-1ad7009d769f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log1pTaylorPoly_aeval_eq_sum (n : ℕ) (z : ℝ) :
    Polynomial.aeval z ((log1pTaylorPoly n).map (algebraMap ℚ ℝ)) =
    ∑ i ∈ Finset.range (n + 1), (iteratedDeriv i (fun x => Real.log (1 + x)) 0 / i.factorial) * z ^ i := by
  unfold log1pTaylorPoly
  rw [Polynomial.aeval_map_algebraMap]
  simp only [map_sum]
  apply Finset.sum_congr rfl
  intro i hi
  simp only [Finset.mem_range] at hi
  simp only [Polynomial.aeval_mul, Polynomial.aeval_C, Polynomial.aeval_X_pow]
  by_cases hi_zero : i = 0
  · simp only [hi_zero, log1pTaylorCoeffs, ↓reduceIte]
    simp only [map_zero, zero_mul, iteratedDeriv_zero, add_zero, Real.log_one, zero_div]
  · have hi_pos : 0 < i := Nat.pos_of_ne_zero hi_zero
    have hi_le : i ≤ n := Nat.lt_succ_iff.mp hi
    have hcoeff := log1pTaylorCoeffs_eq_deriv n i hi_pos hi_le
    -- (algebraMap ℚ ℝ) q = (q : ℝ) for q : ℚ
    have halg : (algebraMap ℚ ℝ) (log1pTaylorCoeffs n i) = (log1pTaylorCoeffs n i : ℝ) := rfl
    rw [halg, hcoeff]

/-- The Taylor remainder for log(1+x) at center 0 is bounded by the Lagrange form.
    This follows the standard Lagrange remainder bound proof:
    - log(1+x) is C^∞ on (-1, ∞)
    - The (n+1)th derivative is ±n!/(1+x)^(n+1)
    - Apply taylor_remainder_bound_on to get the bound -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf9e8892b67e403f0ebaf17412bc3ebafbeb336d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
