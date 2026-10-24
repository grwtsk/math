# log_div_self_rpow_antitoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c6b70bd4eaffa09bea7e907b0576e7f8ba1074dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/725cd868a7f44b926a7ce2c4077bcbcb5613f1f0a64217497c2812cd4674310b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0bcfea29-b4e8-108d-facc-edabf46843f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b5fcf17-5941-a8f2-a184-bb047a70a904",
  "kind": "theorem",
  "lexical_name": "log_div_self_rpow_antitoneOn",
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
  "slug": "log-div-self-rpow-antitoneon--63719eeff101d01c6c663420",
  "source": {
    "blob": "c6b70bd4eaffa09bea7e907b0576e7f8ba1074dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 50,
    "path": "GRWTSK/Analysis/SpecialFunctions/Monotone/Variant725cd868a7f44b926a7ce2c4077bcbcb5613f1f0a64217497c2812cd4674310b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63719eeff101d01c6c663420025e796622e0e1a0d73fa95f2c07797e6c45ff20",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Monotone/Variant725cd868a7f44b926a7ce2c4077bcbcb5613f1f0a64217497c2812cd4674310b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b5fcf17-5941-a8f2-a184-bb047a70a904`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_div_self_rpow_antitoneOn {a : ℝ} (ha : 0 < a) :
    AntitoneOn (fun x : ℝ => log x / x ^ a) { x | exp (1 / a) ≤ x } := by
  simp only [AntitoneOn, mem_setOf_eq]
  intro x hex y _ hxy
  have x_pos : 0 < x := lt_of_lt_of_le (exp_pos (1 / a)) hex
  have y_pos : 0 < y := by linarith
  nth_rw 1 [← rpow_one y]
  nth_rw 1 [← rpow_one x]
  rw [← div_self (ne_of_lt ha).symm, div_eq_mul_one_div a a, rpow_mul y_pos.le, rpow_mul x_pos.le,
    log_rpow (rpow_pos_of_pos y_pos a), log_rpow (rpow_pos_of_pos x_pos a), mul_div_assoc,
    mul_div_assoc, mul_le_mul_left (one_div_pos.mpr ha)]
  refine log_div_self_antitoneOn ?_ ?_ ?_
  · simp only [Set.mem_setOf_eq]
    convert rpow_le_rpow _ hex (le_of_lt ha) using 1
    · rw [← exp_mul]
      simp only [Real.exp_eq_exp]
      field_simp
    positivity
  · simp only [Set.mem_setOf_eq]
    convert rpow_le_rpow _ (_root_.trans hex hxy) (le_of_lt ha) using 1
    · rw [← exp_mul]
      simp only [Real.exp_eq_exp]
      field_simp
    positivity
  gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Monotone/Variant725cd868a7f44b926a7ce2c4077bcbcb5613f1f0a64217497c2812cd4674310b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Monotone/Variant725cd868a7f44b926a7ce2c4077bcbcb5613f1f0a64217497c2812cd4674310b.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6b70bd4eaffa09bea7e907b0576e7f8ba1074dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
