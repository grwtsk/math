# cumulative_real_of_unit_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "24e9a0fae70f158e8b1c83e96d4b03f190da1922",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:42ad3189-fa36-51b7-48f5-c5392090d432",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d44d783a-e008-65a5-33f7-2685899d873a",
  "kind": "theorem",
  "lexical_name": "cumulative_real_of_unit_bound",
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
  "slug": "cumulative-real-of-unit-bound--81f141eea5f8274f2fda6546",
  "source": {
    "blob": "24e9a0fae70f158e8b1c83e96d4b03f190da1922",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 82,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81f141eea5f8274f2fda6546e46aaf1d54b5dbf484c0f9c1522839272198e723",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d44d783a-e008-65a5-33f7-2685899d873a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cumulative_real_of_unit_bound (A : ℝ) (hA : 0 ≤ A)
    (hunit : ∀ t : ℝ, (Zeta23.Ncount t (t + 1) : ℝ) ≤
      A * Real.log (|t| + 3)) {t : ℝ} (ht : 2 ≤ t) :
    (Zeta23.Ncount 0 t : ℝ) ≤ (6 * A) * t * Real.log t := by
  have ht0 : 0 ≤ t := by linarith
  have hn0 : 0 ≤ (Nat.ceil t : ℝ) := by positivity
  have hn : (Nat.ceil t : ℝ) ≤ 2 * t := by
    have := (Nat.ceil_lt_add_one ht0).le
    linarith
  have hn3 : (Nat.ceil t : ℝ) + 3 ≤ t ^ 3 := by
    have hsq : 4 ≤ t ^ 2 := by nlinarith [sq_nonneg (t - 2)]
    have hcube : 4 * t ≤ t ^ 3 := by
      have := mul_le_mul_of_nonneg_right hsq ht0
      nlinarith
    have := (Nat.ceil_lt_add_one ht0).le
    linarith
  have hlog : Real.log ((Nat.ceil t : ℝ) + 3) ≤ 3 * Real.log t := by
    have := Real.log_le_log (by positivity : 0 < (Nat.ceil t : ℝ) + 3) hn3
    simpa only [Real.log_pow, Nat.cast_ofNat] using this
  have hlog0 : 0 ≤ Real.log t := Real.log_nonneg (by linarith)
  calc
    (Zeta23.Ncount 0 t : ℝ) ≤ (Zeta23.Ncount 0 (Nat.ceil t : ℝ) : ℝ) := by
      exact_mod_cast Zeta23.Ncount_mono (le_refl (0 : ℝ)) (Nat.le_ceil t)
    _ ≤ (Nat.ceil t : ℝ) * A * Real.log ((Nat.ceil t : ℝ) + 3) :=
      cumulative_nat_of_unit_bound A hA hunit (Nat.ceil t)
    _ ≤ ((Nat.ceil t : ℝ) * A) * (3 * Real.log t) :=
      mul_le_mul_of_nonneg_left hlog (mul_nonneg hn0 hA)
    _ ≤ (2 * t * A) * (3 * Real.log t) :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right hn hA) (by positivity)
    _ = (6 * A) * t * Real.log t := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24e9a0fae70f158e8b1c83e96d4b03f190da1922` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
