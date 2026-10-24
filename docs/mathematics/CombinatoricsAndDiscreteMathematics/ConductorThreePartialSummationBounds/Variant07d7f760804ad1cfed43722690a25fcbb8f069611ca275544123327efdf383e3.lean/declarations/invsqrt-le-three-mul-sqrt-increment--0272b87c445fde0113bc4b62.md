# invSqrt_le_three_mul_sqrt_increment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ba111dcdee7875e51b1b98d5941203e6e28e2a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 258,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07d7f760804ad1cfed43722690a25fcbb8f069611ca275544123327efdf383e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6dd4213-a04e-4bfb-bbb2-09ae59b485ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09488b12-c592-9bcf-29d0-317213d74a68",
  "kind": "lemma",
  "lexical_name": "invSqrt_le_three_mul_sqrt_increment",
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
  "slug": "invsqrt-le-three-mul-sqrt-increment--0272b87c445fde0113bc4b62",
  "source": {
    "blob": "1ba111dcdee7875e51b1b98d5941203e6e28e2a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 258,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant07d7f760804ad1cfed43722690a25fcbb8f069611ca275544123327efdf383e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0272b87c445fde0113bc4b6255ec599e860e7035e00cc6a7d383d7e1d544e2d9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant07d7f760804ad1cfed43722690a25fcbb8f069611ca275544123327efdf383e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09488b12-c592-9bcf-29d0-317213d74a68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma invSqrt_le_three_mul_sqrt_increment
    {n : ℕ} (hn : 1 ≤ n) :
    (Real.sqrt (n : ℝ))⁻¹ ≤
      3 * (Real.sqrt ((n + 1 : ℕ) : ℝ) - Real.sqrt (n : ℝ)) := by
  let a : ℝ := Real.sqrt (n : ℝ)
  let b : ℝ := Real.sqrt ((n + 1 : ℕ) : ℝ)
  have hnpos : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have ha : 0 < a := Real.sqrt_pos.2 hnpos
  have ha2 : a ^ 2 = (n : ℝ) := Real.sq_sqrt hnpos.le
  have hb2 : b ^ 2 = ((n + 1 : ℕ) : ℝ) := Real.sq_sqrt (by positivity)
  have hab : a ≤ b := by
    exact Real.sqrt_le_sqrt (by exact_mod_cast (Nat.le_succ n))
  have hdelta0 : 0 ≤ b - a := sub_nonneg.2 hab
  have hb_le : b ≤ 2 * a := by
    rw [Real.sqrt_le_left (by positivity)]
    calc
      ((n + 1 : ℕ) : ℝ) ≤ 4 * (n : ℝ) := by
        exact_mod_cast (show n + 1 ≤ 4 * n by omega)
      _ = (2 * a) ^ 2 := by rw [← ha2]; ring
  have hsum : b + a ≤ 3 * a := by nlinarith
  have hfactor : (b - a) * (b + a) = 1 := by
    calc
      (b - a) * (b + a) = b ^ 2 - a ^ 2 := by ring
      _ = ((n + 1 : ℕ) : ℝ) - (n : ℝ) := by rw [hb2, ha2]
      _ = 1 := by push_cast; ring
  change a⁻¹ ≤ 3 * (b - a)
  rw [← one_div]
  apply (div_le_iff₀ ha).2
  calc
    1 = (b - a) * (b + a) := hfactor.symm
    _ ≤ (b - a) * (3 * a) :=
      mul_le_mul_of_nonneg_left hsum hdelta0
    _ = 3 * (b - a) * a := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant07d7f760804ad1cfed43722690a25fcbb8f069611ca275544123327efdf383e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant07d7f760804ad1cfed43722690a25fcbb8f069611ca275544123327efdf383e3.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ba111dcdee7875e51b1b98d5941203e6e28e2a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
