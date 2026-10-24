# stoppedProcess_eq_of_mem_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f50ff571-3f90-7044-0157-1fe194b2cca2",
  "kind": "theorem",
  "lexical_name": "stoppedProcess_eq_of_mem_finset",
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
  "slug": "stoppedprocess-eq-of-mem-finset--167be5e361e50dfd3c62c437",
  "source": {
    "blob": "9c891612ada35af032e0a56a86b684e7c548ecf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 945,
    "line": 922,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Stopping/Varianta3c6973d1a4ff0866e5f022454cf0e47f6db4e7eb1682595502e727ebd59a57d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:167be5e361e50dfd3c62c43734fd76f4922df42a2b34550800982c4cf000e43a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Stopping/Varianta3c6973d1a4ff0866e5f022454cf0e47f6db4e7eb1682595502e727ebd59a57d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f50ff571-3f90-7044-0157-1fe194b2cca2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 922–945.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stoppedProcess_eq_of_mem_finset [LinearOrder ι] [AddCommMonoid E] {s : Finset ι} (n : ι)
    (hbdd : ∀ ω, τ ω < n → τ ω ∈ s) : stoppedProcess u τ n = Set.indicator {a | n ≤ τ a} (u n) +
      ∑ i in s.filter (· < n), Set.indicator {ω | τ ω = i} (u i) := by
  ext ω
  rw [Pi.add_apply, Finset.sum_apply]
  cases' le_or_lt n (τ ω) with h h
  · rw [stoppedProcess_eq_of_le h, Set.indicator_of_mem, Finset.sum_eq_zero, add_zero]
    · intro m hm
      refine' Set.indicator_of_not_mem _ _
      rw [Finset.mem_filter] at hm
      exact (hm.2.trans_le h).ne'
    · exact h
  · rw [stoppedProcess_eq_of_ge (le_of_lt h), Finset.sum_eq_single_of_mem (τ ω)]
    · rw [Set.indicator_of_not_mem, zero_add, Set.indicator_of_mem]
      · exact rfl
      -- refl does not work
      · exact not_le.2 h
    · rw [Finset.mem_filter]
      exact ⟨hbdd ω h, h⟩
    · intro b _ hneq
      rw [Set.indicator_of_not_mem]
      exact hneq.symm
#align measure_theory.stopped_process_eq_of_mem_finset MeasureTheory.stoppedProcess_eq_of_mem_finset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Stopping/Varianta3c6973d1a4ff0866e5f022454cf0e47f6db4e7eb1682595502e727ebd59a57d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Stopping/Varianta3c6973d1a4ff0866e5f022454cf0e47f6db4e7eb1682595502e727ebd59a57d.lean#L922).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c891612ada35af032e0a56a86b684e7c548ecf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
