# stoppedValue_sub_eq_sum'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00a5c033f38226401d2b83043ee33645bc887d0d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1071,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c79cd7672a54dc7bff21e5645e77fb62cb8f250ea7eaf2702356dfe549e39aa1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ea8fc24-186d-338e-582c-d0c54f906a89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e52b45c2-b6a1-db58-341f-32d64f47cda1",
  "kind": "theorem",
  "lexical_name": "stoppedValue_sub_eq_sum'",
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
  "slug": "stoppedvalue-sub-eq-sum--a1c716fb06c900ae9d83c778",
  "source": {
    "blob": "00a5c033f38226401d2b83043ee33645bc887d0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1086,
    "line": 1071,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Stopping/Variantc79cd7672a54dc7bff21e5645e77fb62cb8f250ea7eaf2702356dfe549e39aa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1c716fb06c900ae9d83c7783b8e57de7fd1c0349830d7288e35d69e9d3e46ef",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Stopping/Variantc79cd7672a54dc7bff21e5645e77fb62cb8f250ea7eaf2702356dfe549e39aa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e52b45c2-b6a1-db58-341f-32d64f47cda1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1071–1086.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stoppedValue_sub_eq_sum' [AddCommGroup β] (hle : τ ≤ π) {N : ℕ} (hbdd : ∀ ω, π ω ≤ N) :
    stoppedValue u π - stoppedValue u τ = fun ω =>
      (∑ i in Finset.range (N + 1), Set.indicator {ω | τ ω ≤ i ∧ i < π ω} (u (i + 1) - u i)) ω := by
  rw [stoppedValue_sub_eq_sum hle]
  ext ω
  simp only [Finset.sum_apply, Finset.sum_indicator_eq_sum_filter]
  refine' Finset.sum_congr _ fun _ _ => rfl
  ext i
  simp only [Finset.mem_filter, Set.mem_setOf_eq, Finset.mem_range, Finset.mem_Ico]
  exact ⟨fun h => ⟨lt_trans h.2 (Nat.lt_succ_iff.2 <| hbdd _), h⟩, fun h => h.2⟩
#align measure_theory.stopped_value_sub_eq_sum' MeasureTheory.stoppedValue_sub_eq_sum'

section AddCommMonoid

variable [AddCommMonoid β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Stopping/Variantc79cd7672a54dc7bff21e5645e77fb62cb8f250ea7eaf2702356dfe549e39aa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Stopping/Variantc79cd7672a54dc7bff21e5645e77fb62cb8f250ea7eaf2702356dfe549e39aa1.lean#L1071).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00a5c033f38226401d2b83043ee33645bc887d0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
