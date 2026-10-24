# Cstep_eq_Csum_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3fdcd8d9a29c50d22f51f0de13a3cdffa2101594",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a32f16cbcb78d03fb05b9479f31d8dd35e4a72155b2d21100d225d447070852.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4be64a3a-29ae-0a3e-e5d1-742cb559a57e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:373f4289-3f5e-7538-4a9e-64252b550c07",
  "kind": "lemma",
  "lexical_name": "Cstep_eq_Csum_of_mem",
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
  "slug": "cstep-eq-csum-of-mem--5a6a29b85ab88163e3f872d8",
  "source": {
    "blob": "3fdcd8d9a29c50d22f51f0de13a3cdffa2101594",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant7a32f16cbcb78d03fb05b9479f31d8dd35e4a72155b2d21100d225d447070852.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a6a29b85ab88163e3f872d82ce5d3cabd55f4ea4a5914113c912daa3c7aa8e9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant7a32f16cbcb78d03fb05b9479f31d8dd35e4a72155b2d21100d225d447070852.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:373f4289-3f5e-7538-4a9e-64252b550c07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Cstep_eq_Csum_of_mem (hN : 0 < N) {m : ℕ} (hm : m + 1 ≤ N) {x : ℝ}
    (hx : x ∈ Ico ((m : ℝ) / N) ((m + 1 : ℝ) / N)) : Cstep s N x = Csum s m := by
  unfold Cstep Csum
  have hNr : (0 : ℝ) < N := by exact_mod_cast hN
  refine Finset.sum_congr ?_ fun _ _ => rfl
  ext j
  simp only [Finset.mem_filter, Finset.mem_Icc]
  constructor
  · rintro ⟨⟨h1, _⟩, hjx⟩
    refine ⟨h1, ?_⟩
    have h' : (j : ℝ) / N < (m + 1 : ℝ) / N := lt_of_le_of_lt hjx hx.2
    rw [div_lt_div_iff_of_pos_right hNr] at h'
    have : (j : ℕ) < m + 1 := by exact_mod_cast h'
    omega
  · rintro ⟨h1, hjm⟩
    refine ⟨⟨h1, by omega⟩, le_trans ?_ hx.1⟩
    gcongr

/-- past the last atom the step function is C_N: for x ≥ 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant7a32f16cbcb78d03fb05b9479f31d8dd35e4a72155b2d21100d225d447070852.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant7a32f16cbcb78d03fb05b9479f31d8dd35e4a72155b2d21100d225d447070852.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fdcd8d9a29c50d22f51f0de13a3cdffa2101594` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
