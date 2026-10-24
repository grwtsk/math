# moebius_floor_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a747366-1607-4a71-e798-847c2e85d3d9",
  "kind": "theorem",
  "lexical_name": "moebius_floor_convolution",
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
  "slug": "moebius-floor-convolution--1c93515cef2fccf98af6a68b",
  "source": {
    "blob": "8abef6cce1a468449c0acf71e247ac9dcd087f61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 176,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant6545910e72f3e63063a211b015f09b0444a44cbddb917483b41b57ff9a74707a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c93515cef2fccf98af6a68b24082ee9a19160a56d2e251ab8dda7fdb600ad0c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant6545910e72f3e63063a211b015f09b0444a44cbddb917483b41b57ff9a74707a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a747366-1607-4a71-e798-847c2e85d3d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moebius_floor_convolution (U : ℕ) (hU : 1 ≤ U) :
    (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((U / d : ℕ) : ℝ)) = 1 := by
  have hi (n : ℕ) (hn : n ∈ Finset.Ioc 0 U) :
      (∑ d ∈ Finset.Icc 1 U, if d ∣ n then (moebius d : ℝ) else 0) =
        if n = 1 then 1 else 0 := by
    have he := beta_eq_delta_sub_short U n
    rw [beta_zero_of_le U n (Finset.mem_Ioc.mp hn).2,
      short_divisor_sum_eq_indicator U n (Finset.mem_Ioc.mp hn).1] at he
    linarith
  calc
    _ = ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        (∑ n ∈ Finset.Ioc 0 U, if d ∣ n then (1 : ℝ) else 0) := by
      simp_rw [multiples_prefix_sum]
    _ = ∑ n ∈ Finset.Ioc 0 U,
        ∑ d ∈ Finset.Icc 1 U, if d ∣ n then (moebius d : ℝ) else 0 := by
      simp_rw [Finset.mul_sum, mul_ite, mul_one, mul_zero]
      rw [Finset.sum_comm]
    _ = ∑ n ∈ Finset.Ioc 0 U, if n = 1 then (1 : ℝ) else 0 := by
      exact Finset.sum_congr rfl hi
    _ = 1 := by simp [Finset.mem_Ioc, hU]

/-- The divisor mean's quotient expression preserves the original anchor U. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant6545910e72f3e63063a211b015f09b0444a44cbddb917483b41b57ff9a74707a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant6545910e72f3e63063a211b015f09b0444a44cbddb917483b41b57ff9a74707a.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8abef6cce1a468449c0acf71e247ac9dcd087f61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
