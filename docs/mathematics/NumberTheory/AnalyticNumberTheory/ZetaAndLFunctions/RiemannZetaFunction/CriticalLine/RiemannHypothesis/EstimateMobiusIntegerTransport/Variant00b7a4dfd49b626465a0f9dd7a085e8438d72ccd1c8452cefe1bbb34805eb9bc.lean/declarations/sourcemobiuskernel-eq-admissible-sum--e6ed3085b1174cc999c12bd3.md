# sourceMobiusKernel_eq_admissible_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4d385a3-55fe-08ba-f169-9b8de00745a9",
  "kind": "theorem",
  "lexical_name": "sourceMobiusKernel_eq_admissible_sum",
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
  "slug": "sourcemobiuskernel-eq-admissible-sum--e6ed3085b1174cc999c12bd3",
  "source": {
    "blob": "b5ed377db577d72aa845988b0d09b37974651382",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variant00b7a4dfd49b626465a0f9dd7a085e8438d72ccd1c8452cefe1bbb34805eb9bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6ed3085b1174cc999c12bd3c9c9933a7e7fd4e2c49e2a4a38bb6e9d8e75fe75",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variant00b7a4dfd49b626465a0f9dd7a085e8438d72ccd1c8452cefe1bbb34805eb9bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4d385a3-55fe-08ba-f169-9b8de00745a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMobiusKernel_eq_admissible_sum
    (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) :
    sourceMobiusKernel A d =
      ∑ k ∈ admissibleK A d,
        sourceKernelTerm A k d := by
  unfold sourceMobiusKernel admissibleK
  symm
  apply Finset.sum_subset (Finset.filter_subset _ _)
  intro k hk hnot
  have hkIcc := hk
  rw [Finset.mem_filter] at hnot
  have hkle :
      ¬ d * k ≤ sourceKernelCutoff A := by
    intro h
    exact hnot ⟨hkIcc, h⟩
  exact sourceKernelTerm_zero_of_cutoff_lt
    A hA d k hd (Finset.mem_Icc.mp hkIcc).1
      (Nat.lt_of_not_ge hkle)

/-- Collapse the antidiagonal sum to the unique term with first factor d. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variant00b7a4dfd49b626465a0f9dd7a085e8438d72ccd1c8452cefe1bbb34805eb9bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variant00b7a4dfd49b626465a0f9dd7a085e8438d72ccd1c8452cefe1bbb34805eb9bc.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5ed377db577d72aa845988b0d09b37974651382` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
