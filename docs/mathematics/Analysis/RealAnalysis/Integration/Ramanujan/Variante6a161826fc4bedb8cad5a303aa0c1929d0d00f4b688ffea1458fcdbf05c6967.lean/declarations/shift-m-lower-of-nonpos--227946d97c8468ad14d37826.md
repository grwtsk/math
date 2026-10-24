# shift_m_lower_of_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80ec359baaef0e65fcde49ff39d42977efab3cd6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6a161826fc4bedb8cad5a303aa0c1929d0d00f4b688ffea1458fcdbf05c6967.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ddfd46ba-7c78-b4c2-c494-65726e567bab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00fd1b55-b0a6-6522-4a2e-d32d242bb932",
  "kind": "lemma",
  "lexical_name": "shift_m_lower_of_nonpos",
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
  "slug": "shift-m-lower-of-nonpos--227946d97c8468ad14d37826",
  "source": {
    "blob": "80ec359baaef0e65fcde49ff39d42977efab3cd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 120,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Variante6a161826fc4bedb8cad5a303aa0c1929d0d00f4b688ffea1458fcdbf05c6967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:227946d97c8468ad14d37826d83929f7aa58c2e88a3636d30acb9f0ff16fee8b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Ramanujan/Variante6a161826fc4bedb8cad5a303aa0c1929d0d00f4b688ffea1458fcdbf05c6967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00fd1b55-b0a6-6522-4a2e-d32d242bb932`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma shift_m_lower_of_nonpos
    (m xₐ l : ℝ)
    (hm : m ≤ 0)
    (hxₐ : 0 < log xₐ)
    (hl : log xₐ + 1 ≤ l) :
    m / (l * (l - 1)^6) ≥ ((1 + 1 / log xₐ)^6 * m) / l^7 := by
  have hlm1_pos : 0 < l - 1 := by linarith
  have hl_pos : 0 < l := by linarith
  have hbase : l / (l - 1) ≤ 1 + 1 / log xₐ := by
    have hlog_le : log xₐ ≤ l - 1 := by linarith
    have hsum : 1 + 1 / (l - 1) ≤ 1 + 1 / log xₐ := by
      simpa [add_comm, add_left_comm, add_assoc] using
        add_le_add_left (one_div_le_one_div_of_le hxₐ hlog_le) 1
    have hratio : l / (l - 1) = 1 + 1 / (l - 1) := by
      field_simp [hlm1_pos.ne']
      ring
    simpa [hratio] using hsum
  have hleft : m / (l * (l - 1) ^ 6) = (m / l ^ 7) * (l / (l - 1)) ^ 6 := by
    field_simp [hl_pos.ne', hlm1_pos.ne']
  have hright : ((1 + 1 / log xₐ) ^ 6 * m) / l ^ 7 = (m / l ^ 7) * (1 + 1 / log xₐ) ^ 6 := by
    ring
  rw [hleft, hright]
  exact mul_le_mul_of_nonpos_left (pow_le_pow_left₀ (by positivity) hbase 6)
    (div_nonpos_of_nonpos_of_nonneg hm (pow_nonneg hl_pos.le _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Ramanujan/Variante6a161826fc4bedb8cad5a303aa0c1929d0d00f4b688ffea1458fcdbf05c6967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Variante6a161826fc4bedb8cad5a303aa0c1929d0d00f4b688ffea1458fcdbf05c6967.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80ec359baaef0e65fcde49ff39d42977efab3cd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
