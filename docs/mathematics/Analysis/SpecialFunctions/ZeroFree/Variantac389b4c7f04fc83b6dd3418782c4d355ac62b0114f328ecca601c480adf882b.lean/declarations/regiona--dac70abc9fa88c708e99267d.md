# regionA

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0bf0396dd18bbd64fbbbbda7263d8add161afe60",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 492,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb348fec-15b3-9bf3-b7fa-170be4be4557",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b52abd14-ee24-a600-cf49-1f603a5cd322",
  "kind": "theorem",
  "lexical_name": "regionA",
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
  "slug": "regiona--dac70abc9fa88c708e99267d",
  "source": {
    "blob": "0bf0396dd18bbd64fbbbbda7263d8add161afe60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 492,
    "path": "GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dac70abc9fa88c708e99267d525071dc08bf7382747284174241931fd14abade",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b52abd14-ee24-a600-cf49-1f603a5cd322`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regionA : ∃ tA : ℝ, 0 < tA ∧ ∀ s : ℂ, 1 ≤ s.re → s.re ≤ 2 → tA ≤ |s.im| →
    0 < (logDeriv xi s - Lm s).re := by
  obtain ⟨C, hC0, hC⟩ := abs_re_Lm_le
  obtain ⟨T, hT0, hT⟩ := exists_NT_ge (8 * C + 8)
  refine ⟨max 4 (2 * T), by positivity, fun s h1 h2 ht => ?_⟩
  have ht4 : 4 ≤ |s.im| := le_trans (le_max_left _ _) ht
  have hT2 : 2 * T ≤ |s.im| := le_trans (le_max_right _ _) ht
  have ht0 : 0 < s.im ^ 2 := by nlinarith [sq_abs s.im]
  have hlow := re_logDeriv_xi_ge hT0 h1 h2 (by linarith) hT2
  have hLm := (abs_le.mp (hC s h1 h2 ht4)).2
  rw [Complex.sub_re]
  have : C / s.im ^ 2 < (NT T : ℝ) / (8 * s.im ^ 2) := by
    rw [div_lt_div_iff₀ ht0 (by positivity)]
    nlinarith
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bf0396dd18bbd64fbbbbda7263d8add161afe60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
