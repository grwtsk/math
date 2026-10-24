# tsum_const_eq_top_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd73efd48dd32e4ef53e40ec6aa70f40ebde9830",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/823322a1f5870ffa289cfcbdcadb5e914e12a9904a11b2e766d49ceeadf9f4e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d11c9c2-1df3-32c6-ccbc-ee93ae7b9b79",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5fedc54f-6c86-8e01-bf88-19cec4fabd50",
  "kind": "theorem",
  "lexical_name": "tsum_const_eq_top_of_ne_zero",
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
  "slug": "tsum-const-eq-top-of-ne-zero--f2b8e81c570ee8d634116923",
  "source": {
    "blob": "dd73efd48dd32e4ef53e40ec6aa70f40ebde9830",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 167,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ENNReal/Variant823322a1f5870ffa289cfcbdcadb5e914e12a9904a11b2e766d49ceeadf9f4e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2b8e81c570ee8d634116923892edb9f2b04155099c465300372c1d56637f46a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ENNReal/Variant823322a1f5870ffa289cfcbdcadb5e914e12a9904a11b2e766d49ceeadf9f4e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fedc54f-6c86-8e01-bf88-19cec4fabd50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tsum_const_eq_top_of_ne_zero {α : Type*} [Infinite α] {c : ℝ≥0∞} (hc : c ≠ 0) :
    ∑' _ : α, c = ∞ := by
  have A : Tendsto (fun n : ℕ => (n : ℝ≥0∞) * c) atTop (𝓝 (∞ * c)) := by
    apply ENNReal.Tendsto.mul_const tendsto_nat_nhds_top
    simp only [true_or, top_ne_zero, Ne, not_false_iff]
  have B : ∀ n : ℕ, (n : ℝ≥0∞) * c ≤ ∑' _ : α, c := fun n => by
    rcases Infinite.exists_subset_card_eq α n with ⟨s, hs⟩
    simpa [hs] using @ENNReal.sum_le_tsum α (fun _ => c) s
  simpa [hc] using le_of_tendsto' A B

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ENNReal/Variant823322a1f5870ffa289cfcbdcadb5e914e12a9904a11b2e766d49ceeadf9f4e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ENNReal/Variant823322a1f5870ffa289cfcbdcadb5e914e12a9904a11b2e766d49ceeadf9f4e7.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd73efd48dd32e4ef53e40ec6aa70f40ebde9830` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
