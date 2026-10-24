# first_factor_mem_abel_window_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7806e0a73f64bf68fbe7bffd864ac9c9041327ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e8e11ef61b7d786abe4ad0f7170230d5ba33101922250679ff047f525ce4538.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4cd81d79-9ef0-4e98-2b6a-a9057da11c8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04a3ea08-b48e-4461-0406-06766c970a2c",
  "kind": "theorem",
  "lexical_name": "first_factor_mem_abel_window_iff",
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
  "slug": "first-factor-mem-abel-window-iff--6fd905fc2c82db2aca301cd3",
  "source": {
    "blob": "7806e0a73f64bf68fbe7bffd864ac9c9041327ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 266,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variant3e8e11ef61b7d786abe4ad0f7170230d5ba33101922250679ff047f525ce4538.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fd905fc2c82db2aca301cd3366004db20c983b5fe23553ef178aec6aed30dfa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variant3e8e11ef61b7d786abe4ad0f7170230d5ba33101922250679ff047f525ce4538.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04a3ea08-b48e-4461-0406-06766c970a2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_factor_mem_abel_window_iff
    (A : ℝ) (hA : 1 ≤ A)
    (n : ℕ)
    (hn : n ∈ primePowerInventory (2 * A))
    (dk : ℕ × ℕ)
    (hdk : dk ∈ n.divisorsAntidiagonal) :
    dk.1 ∈ Finset.Ioc
        ⌊sourceLower A⌋₊ ⌊sourceUpper A⌋₊ ↔
      A ^ 2 < (dk.1 : ℝ) := by
  have hnIcc := Finset.mem_Icc.mp hn
  have hdiv := Nat.fst_mem_divisors_of_mem_antidiagonal hdk
  have hupper : dk.1 ≤ ⌊sourceUpper A⌋₊ := by
    exact (Nat.divisor_le hdiv).trans hnIcc.2
  have hlower0 : 0 ≤ sourceLower A := by
    unfold sourceLower
    positivity
  rw [Finset.mem_Ioc]
  constructor
  · intro h
    exact (Nat.floor_lt hlower0).mp h.1
  · intro h
    exact ⟨(Nat.floor_lt hlower0).mpr h, hupper⟩

/-- The strict large-divisor Möbius sector is exactly the finite Abel sum of
the actual source kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variant3e8e11ef61b7d786abe4ad0f7170230d5ba33101922250679ff047f525ce4538.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variant3e8e11ef61b7d786abe4ad0f7170230d5ba33101922250679ff047f525ce4538.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7806e0a73f64bf68fbe7bffd864ac9c9041327ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
