# theta_insertion_eq_homogeneity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2abc799d-f1c2-7be5-8d89-b8af8ebad694",
  "kind": "theorem",
  "lexical_name": "theta_insertion_eq_homogeneity",
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
  "slug": "theta-insertion-eq-homogeneity--8852ac77dfd1c0b15a0658e3",
  "source": {
    "blob": "6a2e4d40283ebe1acccdcd7d9b5b538238e1dae3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeInsertionHomogeneity/Variantcb40be920beb36aa3b6da2814f7f3bcc45dbb0bca6e6e5f7ab408209f5d2e243.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8852ac77dfd1c0b15a0658e39dc170cb59f1c3f2bf27e29e7e053032cfd164ba",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeInsertionHomogeneity/Variantcb40be920beb36aa3b6da2814f7f3bcc45dbb0bca6e6e5f7ab408209f5d2e243.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2abc799d-f1c2-7be5-8d89-b8af8ebad694`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theta_insertion_eq_homogeneity (A : ℝ) (p q : ℕ) (hp : 1 ≤ p) (hq : 1 ≤ q) :
    thetaKernel A q - (p : ℝ) * thetaKernel A (p * q) =
      (1 - Real.sqrt (p : ℝ)) * thetaRemainder A q + Real.sqrt (p : ℝ) *
        (thetaRemainder A q - Real.sqrt (p : ℝ) * thetaRemainder A (p * q)) := by
  rw [theta_insertion_eq_remainder A p q hp hq]
  have hs := Real.sq_sqrt (Nat.cast_nonneg p)
  calc
    _ = thetaRemainder A q - Real.sqrt (p : ℝ) ^ 2 * thetaRemainder A (p * q) := by rw [hs]
    _ = _ := by ring

end
end PrimeInsertionHomogeneityScratch
#print axioms PrimeInsertionHomogeneityScratch.theta_insertion_eq_remainder
#print axioms PrimeInsertionHomogeneityScratch.theta_insertion_eq_homogeneity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeInsertionHomogeneity/Variantcb40be920beb36aa3b6da2814f7f3bcc45dbb0bca6e6e5f7ab408209f5d2e243.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeInsertionHomogeneity/Variantcb40be920beb36aa3b6da2814f7f3bcc45dbb0bca6e6e5f7ab408209f5d2e243.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a2e4d40283ebe1acccdcd7d9b5b538238e1dae3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
