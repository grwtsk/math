# sum_w_eq_sumA2gCoprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a16874d3-ea62-342a-f632-1d06695915c1",
  "kind": "lemma",
  "lexical_name": "sum_w_eq_sumA2gCoprime",
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
  "slug": "sum-w-eq-suma2gcoprime--909872b674931a5bf33d96f7",
  "source": {
    "blob": "3f951dc0e8825b99c9f30a71911a84172574dac8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 65,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:909872b674931a5bf33d96f7fcb9236257c2fd518f5bda4407594553a88e71c7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a16874d3-ea62-342a-f632-1d06695915c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_w_eq_sumA2gCoprime (hc : CoeffUnimodular q c) (X : ℝ) (g : ℝ → ℝ) :
    ∑ n ∈ primeRange X, acoef n ^ 2 * ‖c n‖ ^ 2 * g (Real.log n) = sumA2gCoprime q X g := by
  unfold sumA2gCoprime
  rw [Finset.sum_filter]
  refine Finset.sum_congr rfl fun n hn => ?_
  have hn0 : 0 < n := (Finset.mem_Ioc.mp hn).1
  by_cases hcop : Nat.Coprime n q
  · rw [if_pos hcop, hc.norm_eq n hn0 hcop, acoef_sq]
    ring
  · rw [if_neg hcop, hc.toCoeffOK.vanish n hcop]
    simp

section PhaseKernel
variable {Φ : ℝ → ℝ} {T : ℝ}

/-- A⁻ with phases. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f951dc0e8825b99c9f30a71911a84172574dac8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
