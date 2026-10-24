# smaller_terms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c16c416971c366503f7f5ff829e7c163fa4c9df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38e940bec270581aa23b550f24173226c865cc9f8befdaac159a8c5acd510558.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce17631b-1a08-26b3-06a9-b8080dd70c8f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad9aa17c-0395-6553-ae56-9ae380f3f8b5",
  "kind": "lemma",
  "lexical_name": "smaller_terms",
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
  "slug": "smaller-terms--5b9405633f29dabd8d4bdc5e",
  "source": {
    "blob": "0c16c416971c366503f7f5ff829e7c163fa4c9df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1304,
    "line": 1276,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variant38e940bec270581aa23b550f24173226c865cc9f8befdaac159a8c5acd510558.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b9405633f29dabd8d4bdc5e60dafa33e58ae5aedd7e23c6d182c6c5a46acd03",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Consequences/Variant38e940bec270581aa23b550f24173226c865cc9f8befdaac159a8c5acd510558.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad9aa17c-0395-6553-ae56-9ae380f3f8b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1276–1304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma smaller_terms {ε : ℝ} (hε : 0 < ε) (f : ℝ → ℝ) (hf : Tendsto f atTop (nhds 0)) (δ : ℝ)
    (hδ : δ > 0) :
    ∀ᶠ x : ℝ in atTop, (1 - δ) * ((1 + ε) * x / (Real.log ((1 + ε) * x))) <
      (1 + f ((1 + ε) * x)) * ((1 + ε) * x / (Real.log ((1 + ε) * x))) := by
  have first_term := bound_f_first_term hε f hf δ hδ
  simp only [gt_iff_lt, eventually_atTop, ge_iff_le] at first_term
  obtain ⟨p, hp⟩ := first_term
  simp only [eventually_atTop, ge_iff_le]
  let a := max p 1
  have ha: ∀ (b : ℝ), a ≤ b → 1 - δ < 1 + f ((1 + ε) * b) := by
    intro b hb
    have a_ge_p: p ≤ a := by
      simp [a]
    specialize hp b (by linarith)
    exact hp
  use a
  intro b hb
  rw [mul_lt_mul_iff_left₀]
  · exact ha b hb
  · simp only [sup_le_iff, a] at hb
    have b_ge_one: 1 ≤ b := hb.2
    have log_pos: Real.log ((1 + ε) *b) > 0 := by
      have one_pplus_pos: 1 < (1 + ε) := by linarith
      refine (Real.log_pos_iff ?_).mpr ?_
      · positivity
      · exact one_lt_mul_of_lt_of_le one_pplus_pos b_ge_one

    positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Consequences/Variant38e940bec270581aa23b550f24173226c865cc9f8befdaac159a8c5acd510558.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variant38e940bec270581aa23b550f24173226c865cc9f8befdaac159a8c5acd510558.lean#L1276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c16c416971c366503f7f5ff829e7c163fa4c9df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
