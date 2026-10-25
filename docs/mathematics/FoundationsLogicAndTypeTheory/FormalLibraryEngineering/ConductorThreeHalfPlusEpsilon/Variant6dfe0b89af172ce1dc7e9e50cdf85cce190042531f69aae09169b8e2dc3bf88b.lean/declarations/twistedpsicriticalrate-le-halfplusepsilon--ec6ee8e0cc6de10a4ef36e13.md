# twistedPsiCriticalRate_le_halfPlusEpsilon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b75b21433614f86c097c9b3683ea0cab0ec1160",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a8824dd-4761-27ba-d9e7-c8ae35a115e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e0b6820-7f3b-fd1b-4510-c59fd45fb388",
  "kind": "lemma",
  "lexical_name": "twistedPsiCriticalRate_le_halfPlusEpsilon",
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
  "slug": "twistedpsicriticalrate-le-halfplusepsilon--ec6ee8e0cc6de10a4ef36e13",
  "source": {
    "blob": "9b75b21433614f86c097c9b3683ea0cab0ec1160",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variant6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec6ee8e0cc6de10a4ef36e1312d387c43cf2d1c59680b94d31ded18878b5cd45",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variant6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e0b6820-7f3b-fd1b-4510-c59fd45fb388`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma twistedPsiCriticalRate_le_halfPlusEpsilon
    {epsilon : ℝ} (hepsilon : 0 < epsilon) (x : ℕ) (hx : 1 ≤ x) :
    twistedPsiCriticalRate x ≤
      (4 / epsilon ^ 2) * (x : ℝ) ^ (1 / 2 + epsilon) := by
  have hhalf : 0 < epsilon / 2 := by positivity
  have hx0 : 0 ≤ (x : ℝ) := Nat.cast_nonneg x
  have hlog0 : 0 ≤ Real.log (x : ℝ) :=
    Real.log_nonneg (by exact_mod_cast hx)
  have hlog := Real.log_le_rpow_div hx0 hhalf
  have hpow0 : 0 ≤ (x : ℝ) ^ (epsilon / 2) := Real.rpow_nonneg hx0 _
  have hdiv0 : 0 ≤ (x : ℝ) ^ (epsilon / 2) / (epsilon / 2) :=
    div_nonneg hpow0 hhalf.le
  have hlog2 : Real.log (x : ℝ) ^ 2 ≤
      ((x : ℝ) ^ (epsilon / 2) / (epsilon / 2)) ^ 2 := by
    exact (sq_le_sq₀ hlog0 hdiv0).2 hlog
  unfold twistedPsiCriticalRate
  rw [Real.sqrt_eq_rpow]
  calc
    (x : ℝ) ^ ((1 : ℝ) / 2) * Real.log (x : ℝ) ^ 2 ≤
        (x : ℝ) ^ ((1 : ℝ) / 2) *
          ((x : ℝ) ^ (epsilon / 2) / (epsilon / 2)) ^ 2 := by
      exact mul_le_mul_of_nonneg_left hlog2 (Real.rpow_nonneg hx0 _)
    _ = (4 / epsilon ^ 2) * (x : ℝ) ^ (1 / 2 + epsilon) := by
      rw [div_pow, ← Real.rpow_natCast]
      rw [← Real.rpow_mul hx0]
      norm_num only [Nat.cast_ofNat]
      have hexp : epsilon / 2 * (2 : ℝ) = epsilon := by ring
      rw [hexp]
      have hxpos : 0 < (x : ℝ) := by exact_mod_cast (show 0 < x by omega)
      have hden : ((epsilon / 2) ^ 2)⁻¹ = 4 / epsilon ^ 2 := by
        field_simp
        <;> ring
      rw [show (x : ℝ) ^ epsilon / (epsilon / 2) ^ 2 =
          (x : ℝ) ^ epsilon * ((epsilon / 2) ^ 2)⁻¹ by
        rw [div_eq_mul_inv]]
      rw [hden]
      calc
        (x : ℝ) ^ ((1 : ℝ) / 2) *
            ((x : ℝ) ^ epsilon * (4 / epsilon ^ 2)) =
            (4 / epsilon ^ 2) *
              ((x : ℝ) ^ ((1 : ℝ) / 2) * (x : ℝ) ^ epsilon) := by
                ring
        _ = (4 / epsilon ^ 2) * (x : ℝ) ^ ((1 : ℝ) / 2 + epsilon) := by
          rw [← Real.rpow_add hxpos]

/-- The sharp logarithmic critical bound implies every half-plus-epsilon
bound. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variant6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variant6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b75b21433614f86c097c9b3683ea0cab0ec1160` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
