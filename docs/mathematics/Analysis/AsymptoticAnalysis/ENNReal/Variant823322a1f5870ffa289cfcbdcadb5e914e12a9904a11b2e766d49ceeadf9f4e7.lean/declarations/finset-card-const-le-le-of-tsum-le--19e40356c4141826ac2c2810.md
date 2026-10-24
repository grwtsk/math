# finset_card_const_le_le_of_tsum_le

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
      "line": 315,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/823322a1f5870ffa289cfcbdcadb5e914e12a9904a11b2e766d49ceeadf9f4e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3e9b37c-eaa3-2fef-dc3d-4277e3be5dee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b43f6a5-1d85-c04c-2e8f-84b4422d2e7d",
  "kind": "theorem",
  "lexical_name": "finset_card_const_le_le_of_tsum_le",
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
  "slug": "finset-card-const-le-le-of-tsum-le--19e40356c4141826ac2c2810",
  "source": {
    "blob": "dd73efd48dd32e4ef53e40ec6aa70f40ebde9830",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 315,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ENNReal/Variant823322a1f5870ffa289cfcbdcadb5e914e12a9904a11b2e766d49ceeadf9f4e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19e40356c4141826ac2c2810ff34b10a519cb6ba469c0b48ad89beebcf85ae0a",
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

Occurrence: `result:3b43f6a5-1d85-c04c-2e8f-84b4422d2e7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finset_card_const_le_le_of_tsum_le {ι : Type*} {a : ι → ℝ≥0∞} {c : ℝ≥0∞} (c_ne_top : c ≠ ∞)
    (tsum_le_c : ∑' i, a i ≤ c) {ε : ℝ≥0∞} (ε_ne_zero : ε ≠ 0) :
    ∃ hf : { i : ι | ε ≤ a i }.Finite, #hf.toFinset ≤ c / ε := by
  have hf : { i : ι | ε ≤ a i }.Finite :=
    finite_const_le_of_tsum_ne_top (ne_top_of_le_ne_top c_ne_top tsum_le_c) ε_ne_zero
  refine ⟨hf, (ENNReal.le_div_iff_mul_le (.inl ε_ne_zero) (.inr c_ne_top)).2 ?_⟩
  calc #hf.toFinset * ε = ∑ _i ∈ hf.toFinset, ε := by rw [Finset.sum_const, nsmul_eq_mul]
    _ ≤ ∑ i ∈ hf.toFinset, a i := Finset.sum_le_sum fun i => hf.mem_toFinset.1
    _ ≤ ∑' i, a i := ENNReal.sum_le_tsum _
    _ ≤ c := tsum_le_c

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ENNReal/Variant823322a1f5870ffa289cfcbdcadb5e914e12a9904a11b2e766d49ceeadf9f4e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ENNReal/Variant823322a1f5870ffa289cfcbdcadb5e914e12a9904a11b2e766d49ceeadf9f4e7.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd73efd48dd32e4ef53e40ec6aa70f40ebde9830` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
