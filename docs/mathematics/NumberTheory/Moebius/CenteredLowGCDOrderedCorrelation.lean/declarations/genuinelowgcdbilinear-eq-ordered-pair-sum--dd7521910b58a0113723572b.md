# genuineLowGCDBilinear_eq_ordered_pair_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d778ab4e-2d19-d132-9187-8faf1eb00566",
  "kind": "theorem",
  "lexical_name": "genuineLowGCDBilinear_eq_ordered_pair_sum",
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
  "slug": "genuinelowgcdbilinear-eq-ordered-pair-sum--dd7521910b58a0113723572b",
  "source": {
    "blob": "1e17fea5537a23b925a6daac4f100b98bf708905",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 34,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDOrderedCorrelation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd7521910b58a0113723572bf43b18aae49d6fe08d25d445a5118c9a1604f046",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDOrderedCorrelation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d778ab4e-2d19-d132-9187-8faf1eb00566`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem genuineLowGCDBilinear_eq_ordered_pair_sum
    (X Y : ℕ) (w : ℕ → ℝ) :
    genuineLowGCDBilinear X Y w =
      ∑ n ∈ octaveIndexSet X,
        ∑ q ∈ octaveIndexSet X,
          w n * w q * genuineLowGCDPairKernel X Y n q := by
  unfold genuineLowGCDBilinear genuineModulusCoefficient
    genuineLowGCDPairKernel
  simp_rw [Finset.sum_mul, Finset.mul_sum, Finset.ite_sum_zero]
  rw [Finset.sum_comm_cycle]
  apply Finset.sum_congr rfl
  intro n hn
  rw [Finset.sum_comm_cycle]
  apply Finset.sum_congr rfl
  intro q hq
  apply Finset.sum_congr rfl
  intro d hd
  apply Finset.sum_congr rfl
  intro e he
  by_cases hdn : d ∣ n
  · by_cases heq : e ∣ q
    · by_cases hg : Nat.gcd d e ≤ Y
      · simp only [hdn, heq, hg, and_self, if_true]
        ring
      · simp [hg]
    · simp [heq]
  · simp [hdn]


/-- Ordered pair reindexing with all four centered channels retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDOrderedCorrelation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDOrderedCorrelation.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e17fea5537a23b925a6daac4f100b98bf708905` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
