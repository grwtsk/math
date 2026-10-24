# exact_shifted_dyadic_partition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:791fd7f3-076f-a87b-8392-2d4163381f22",
  "kind": "theorem",
  "lexical_name": "exact_shifted_dyadic_partition",
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
  "slug": "exact-shifted-dyadic-partition--2cbe8e97734501380f3d7773",
  "source": {
    "blob": "b9152258b381110d849f087560cb96d542713db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShiftedDyadicReserve/Variantbc4949138d61d2dcbcca4294d0d21c2227544aeb4ad38c4be288f51ffc06a36e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cbe8e97734501380f3d7773317ba832d7480f07d51afa590930ffdfdcc1e204",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShiftedDyadicReserve/Variantbc4949138d61d2dcbcca4294d0d21c2227544aeb4ad38c4be288f51ffc06a36e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:791fd7f3-076f-a87b-8392-2d4163381f22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_shifted_dyadic_partition (N k : ℕ) :
    positiveDebt N (N * (2 ^ k - 1)) =
      ∑ j ∈ Finset.range k, positiveDebt (N * 2 ^ j) (N * 2 ^ j) := by
  induction k with
  | zero => simp [positiveDebt]
  | succ k ih =>
      have hp : 1 ≤ (2 : ℕ) ^ k := Nat.one_le_pow k 2 (by omega)
      have hl : (2 : ℕ) ^ (k + 1) - 1 = (2 ^ k - 1) + 2 ^ k := by
        rw [pow_succ]
        omega
      have hs : N + N * ((2 : ℕ) ^ k - 1) = N * 2 ^ k := by
        calc
          _ = N * (1 + (2 ^ k - 1)) := by ring
          _ = _ := by rw [show 1 + ((2 : ℕ) ^ k - 1) = 2 ^ k by omega]
      rw [Finset.sum_range_succ, ← ih, hl, Nat.mul_add, positive_debt_add, hs]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShiftedDyadicReserve/Variantbc4949138d61d2dcbcca4294d0d21c2227544aeb4ad38c4be288f51ffc06a36e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShiftedDyadicReserve/Variantbc4949138d61d2dcbcca4294d0d21c2227544aeb4ad38c4be288f51ffc06a36e.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9152258b381110d849f087560cb96d542713db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
