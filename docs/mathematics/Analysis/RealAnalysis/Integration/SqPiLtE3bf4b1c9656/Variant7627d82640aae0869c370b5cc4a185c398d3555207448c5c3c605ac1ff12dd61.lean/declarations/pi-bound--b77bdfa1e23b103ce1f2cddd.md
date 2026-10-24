# pi_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f06b8815a68e0bc3decd472336d6373f75f0d0ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 849,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2b8e74a-bbac-9679-714c-8f2f7e80523a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f912f43-cfdf-f5d2-7faf-dd496dc44f18",
  "kind": "theorem",
  "lexical_name": "pi_bound",
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
  "slug": "pi-bound--b77bdfa1e23b103ce1f2cddd",
  "source": {
    "blob": "f06b8815a68e0bc3decd472336d6373f75f0d0ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 889,
    "line": 849,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b77bdfa1e23b103ce1f2cddd8c40005fbb962c2b53ceb6c762f89cc38e9c1af1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f912f43-cfdf-f5d2-7faf-dd496dc44f18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 849–889.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pi_bound (x : ℝ) (hx : 2 ≤ x) :
    Eθ x * ( log x)^5 ≤ a x := by
  set b : ℝ :=
    if x ∈ Set.Ico 2 599 then 1 - log 2 / 3
    else if x ∈ Set.Ico 599 (exp 58) then log x ^ 2 / (8 * π * sqrt x)
    else if x ∈ Set.Ico (exp 58) (exp 1169) then sqrt (8 / (17 * π)) * (log x / 6.455) ^ (1 / 4 : ℝ) * exp (-sqrt (log x / 6.455))
    else if x ∈ Set.Ico (exp 1169) (exp 2000) then 462.0 * (log x / 5.573412) ^ (1.52 : ℝ) * exp (-1.89 * sqrt (log x / 5.573412))
    else if x ∈ Set.Ico (exp 2000) (exp 3000) then 411.5 * (log x / 5.573412) ^ (1.52 : ℝ) * exp (-1.89 * sqrt (log x / 5.573412))
    else 379.7 * (log x / 5.573412) ^ (1.52 : ℝ) * exp (-1.89 * sqrt (log x / 5.573412))
  have ha : a x = (log x) ^ 5 * b := by
    simp [a, b]
  have hb : Eθ x ≤ b := by
    by_cases h1 : x ∈ Set.Ico 2 599
    · simpa [b, h1] using pi_bound_1 x h1
    · have hx599 : (599 : ℝ) ≤ x := by
        by_contra hx599
        exact h1 ⟨hx, lt_of_not_ge hx599⟩
      by_cases h2 : x ∈ Set.Ico 599 (exp 58)
      · simpa [b, h1, h2] using pi_bound_2 x h2
      · have hx58 : exp 58 ≤ x := by
          by_contra hx58
          exact h2 ⟨hx599, lt_of_not_ge hx58⟩
        by_cases h3 : x ∈ Set.Ico (exp 58) (exp 1169)
        · simpa [b, h1, h2, h3] using pi_bound_3 x h3
        · have hx1169 : exp 1169 ≤ x := by
            by_contra hx1169
            exact h3 ⟨hx58, lt_of_not_ge hx1169⟩
          by_cases h4 : x ∈ Set.Ico (exp 1169) (exp 2000)
          · simpa [b, h1, h2, h3, h4] using pi_bound_4 x h4
          · have hx2000 : exp 2000 ≤ x := by
              by_contra hx2000
              exact h4 ⟨hx1169, lt_of_not_ge hx2000⟩
            by_cases h5 : x ∈ Set.Ico (exp 2000) (exp 3000)
            · simpa [b, h1, h2, h3, h4, h5] using pi_bound_5 x h5
            · have hx3000 : exp 3000 ≤ x := by
                by_contra hx3000
                exact h5 ⟨hx2000, lt_of_not_ge hx3000⟩
              simpa [b, h1, h2, h3, h4, h5] using pi_bound_6 x hx3000
  simpa [ha, mul_assoc, mul_left_comm, mul_comm] using
    mul_le_mul_of_nonneg_right hb (pow_nonneg (log_nonneg (by linarith : 1 ≤ x)) 5)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean#L849).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f06b8815a68e0bc3decd472336d6373f75f0d0ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
