# stolzCone_subset_stolzSet_aux'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8ee3b9903aef35ded7e935d93d147d2080f7110",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f83f133e9a553643788702067ad3b45308779b7ffab3d8df3b13418d50da252.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfd8cd90-f324-3b3a-5483-161bf5be2d6d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:adc207b7-2ccb-97d7-e6fa-4b2801ce7cff",
  "kind": "lemma",
  "lexical_name": "stolzCone_subset_stolzSet_aux'",
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
  "slug": "stolzcone-subset-stolzset-aux--7f9a74f88f2663376aba3428",
  "source": {
    "blob": "a8ee3b9903aef35ded7e935d93d147d2080f7110",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 71,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Variant1f83f133e9a553643788702067ad3b45308779b7ffab3d8df3b13418d50da252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f9a74f88f2663376aba3428cfb016d3a7a213a1ca6649824450d452d9fb8619",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AbelLimit/Variant1f83f133e9a553643788702067ad3b45308779b7ffab3d8df3b13418d50da252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adc207b7-2ccb-97d7-e6fa-4b2801ce7cff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma stolzCone_subset_stolzSet_aux' (s : ℝ) :
    ∃ M ε, 0 < M ∧ 0 < ε ∧ ∀ x y, 0 < x → x < ε → |y| < s * x →
      √(x ^ 2 + y ^ 2) < M * (1 - √((1 - x) ^ 2 + y ^ 2)) := by
  refine ⟨2 * √(1 + s ^ 2) + 1, 1 / (1 + s ^ 2), by positivity, by positivity,
    fun x y hx₀ hx₁ hy ↦ ?_⟩
  have H : √((1 - x) ^ 2 + y ^ 2) ≤ 1 - x / 2 := by
    calc √((1 - x) ^ 2 + y ^ 2)
      _ ≤ √((1 - x) ^ 2 + (s * x) ^ 2) := sqrt_le_sqrt <| by rw [← sq_abs y]; gcongr
      _ = √(1 - 2 * x + (1 + s ^ 2) * x * x) := by congr 1; ring
      _ ≤ √(1 - 2 * x + (1 + s ^ 2) * (1 / (1 + s ^ 2)) * x) := by gcongr
      _ = √(1 - x) := by congr 1; field_simp; ring
      _ ≤ 1 - x / 2 := by
        simp_rw [sub_eq_add_neg, ← neg_div]
        refine sqrt_one_add_le <| neg_le_neg_iff.mpr (hx₁.trans_le ?_).le
        rw [div_le_one (by positivity)]
        exact le_add_of_nonneg_right <| sq_nonneg s
  calc √(x ^ 2 + y ^ 2)
    _ ≤ √(x ^ 2 + (s * x) ^ 2) := by rw [← sq_abs y]; gcongr
    _ = √((1 + s ^ 2) * x ^ 2) := by congr; ring
    _ = √(1 + s ^ 2) * x := by rw [sqrt_mul' _ (sq_nonneg x), sqrt_sq hx₀.le]
    _ = 2 * √(1 + s ^ 2) * (x / 2) := by ring
    _ < (2 * √(1 + s ^ 2) + 1) * (x / 2) := by gcongr; exact lt_add_one _
    _ ≤ _ := by gcongr; exact le_sub_comm.mpr H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AbelLimit/Variant1f83f133e9a553643788702067ad3b45308779b7ffab3d8df3b13418d50da252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Variant1f83f133e9a553643788702067ad3b45308779b7ffab3d8df3b13418d50da252.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8ee3b9903aef35ded7e935d93d147d2080f7110` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
