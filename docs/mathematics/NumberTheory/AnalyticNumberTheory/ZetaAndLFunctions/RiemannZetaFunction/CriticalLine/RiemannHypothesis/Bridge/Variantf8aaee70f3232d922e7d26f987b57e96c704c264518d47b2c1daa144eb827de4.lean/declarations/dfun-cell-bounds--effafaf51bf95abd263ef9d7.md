# Dfun_cell_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7d0d26e944e626559e985530a2ec6d3e3e97b70",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8dd37dc1-46b3-f4fb-efdb-130ccdf5fcd7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e6df1a4-ea7f-ea5b-c471-34f234d77b92",
  "kind": "lemma",
  "lexical_name": "Dfun_cell_bounds",
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
  "slug": "dfun-cell-bounds--effafaf51bf95abd263ef9d7",
  "source": {
    "blob": "e7d0d26e944e626559e985530a2ec6d3e3e97b70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:effafaf51bf95abd263ef9d7618891754f6e6d21a2bb398cad65d8bbbbfd1933",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e6df1a4-ea7f-ea5b-c471-34f234d77b92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Dfun_cell_bounds (hN : 0 < N) {m : ℕ} (hm : m < N) {t : ℝ} (ht : t ∈ Ioo ((m : ℝ) / N) ((m + 1 : ℝ) / N)) :
    Dleft S N (m + 1) ≤ Dfun (massOf S N) N t ∧ Dfun (massOf S N) N t ≤ Dright S N m := by
  have hNr : (0 : ℝ) < N := by exact_mod_cast hN
  rw [Dfun_eqOn_cell hN hm ht, Csum_massOf]
  unfold Dleft Dright
  simp only [Nat.add_sub_cancel]
  have h1 : (m : ℝ) / N < t := ht.1
  have h2 : t < ((m : ℝ) + 1) / N := ht.2
  have ht0 : 0 ≤ t := le_trans (by positivity) h1.le
  constructor
  · have : t ^ 2 ≤ (((m : ℝ) + 1) / N) ^ 2 := by gcongr
    have e : (((m + 1 : ℕ) : ℝ)) ^ 2 / (2 * (N : ℝ) ^ 2) = ((((m : ℝ) + 1) / N) ^ 2) / 2 := by push_cast; field_simp
    rw [e]; linarith
  · have : ((m : ℝ) / N) ^ 2 ≤ t ^ 2 := by gcongr
    have e : ((m : ℝ)) ^ 2 / (2 * (N : ℝ) ^ 2) = (((m : ℝ) / N) ^ 2) / 2 := by field_simp
    rw [e]; linarith

/-! ## §2. The sup bridges -/

/-- **sup|D| from the grid**: one-sided grid bounds give |D| ≤ B₁ on all of [0,1]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7d0d26e944e626559e985530a2ec6d3e3e97b70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
