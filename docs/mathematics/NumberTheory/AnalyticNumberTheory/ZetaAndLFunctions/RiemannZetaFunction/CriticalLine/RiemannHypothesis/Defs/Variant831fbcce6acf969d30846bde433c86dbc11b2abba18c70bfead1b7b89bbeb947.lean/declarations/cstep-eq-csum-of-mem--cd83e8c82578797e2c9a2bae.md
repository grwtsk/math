# Cstep_eq_Csum_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d590ff5-759e-c460-44c2-af477a5c1c60",
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
  "slug": "cstep-eq-csum-of-mem--cd83e8c82578797e2c9a2bae",
  "source": {
    "blob": "aa95d5c6a5a69e5c0d40516f35754ef5471be4b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant831fbcce6acf969d30846bde433c86dbc11b2abba18c70bfead1b7b89bbeb947.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd83e8c82578797e2c9a2baed254f20ddc3ed5b050467ff5421b879742bf0d3a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant831fbcce6acf969d30846bde433c86dbc11b2abba18c70bfead1b7b89bbeb947.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d590ff5-759e-c460-44c2-af477a5c1c60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–73.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant831fbcce6acf969d30846bde433c86dbc11b2abba18c70bfead1b7b89bbeb947.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant831fbcce6acf969d30846bde433c86dbc11b2abba18c70bfead1b7b89bbeb947.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa95d5c6a5a69e5c0d40516f35754ef5471be4b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
