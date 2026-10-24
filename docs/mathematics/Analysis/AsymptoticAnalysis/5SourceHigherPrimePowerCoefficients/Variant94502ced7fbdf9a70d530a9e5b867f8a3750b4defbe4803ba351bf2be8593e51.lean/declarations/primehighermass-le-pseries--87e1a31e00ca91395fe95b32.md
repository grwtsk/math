# primeHigherMass_le_pseries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "261645fc8aaa3257c7dac433d79d17ce5be118a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94502ced7fbdf9a70d530a9e5b867f8a3750b4defbe4803ba351bf2be8593e51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53982380-1564-0a6b-b117-c48d70244ff8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d6928c0-d9b7-f623-90c4-17ca3957e492",
  "kind": "theorem",
  "lexical_name": "primeHigherMass_le_pseries",
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
  "slug": "primehighermass-le-pseries--87e1a31e00ca91395fe95b32",
  "source": {
    "blob": "261645fc8aaa3257c7dac433d79d17ce5be118a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 141,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/5SourceHigherPrimePowerCoefficients/Variant94502ced7fbdf9a70d530a9e5b867f8a3750b4defbe4803ba351bf2be8593e51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87e1a31e00ca91395fe95b3220657072c5a80458853b3808a984a9e398b59296",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/5SourceHigherPrimePowerCoefficients/Variant94502ced7fbdf9a70d530a9e5b867f8a3750b4defbe4803ba351bf2be8593e51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d6928c0-d9b7-f623-90c4-17ca3957e492`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeHigherMass_le_pseries (p : Nat.Primes) :
    primeHigherMass p ≤ 16 * ((p : ℕ) : ℝ) ^ (-(5 : ℝ) / 4) := by
  have hp0 : 0 < ((p : ℕ) : ℝ) := by exact_mod_cast p.property.pos
  have hp1 : (1 : ℝ) ≤ (p : ℕ) := by exact_mod_cast p.property.one_le
  have hl := Real.log_nonneg hp1
  have hr := primeRatio_nonneg p
  have hi : (1 - primeRatio p)⁻¹ ≤ 4 := by
    rw [inv_le_iff_one_le_mul₀ (by linarith [primeRatio_le_three_quarters p] :
      0 < 1 - primeRatio p)]
    linarith [primeRatio_le_three_quarters p]
  have hlog := Real.log_le_rpow_div hp0.le (by norm_num : (0 : ℝ) < 1 / 4)
  calc
    primeHigherMass p ≤ Real.log ((p : ℕ) : ℝ) * primeRatio p ^ 3 * 4 :=
      mul_le_mul_of_nonneg_left hi (mul_nonneg hl (pow_nonneg hr 3))
    _ ≤ (((p : ℕ) : ℝ) ^ ((1 : ℝ) / 4) / (1 / 4)) * primeRatio p ^ 3 * 4 :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_right hlog (pow_nonneg hr 3)) (by norm_num)
    _ = 16 * ((p : ℕ) : ℝ) ^ (-(5 : ℝ) / 4) := by
      unfold primeRatio
      rw [← Real.rpow_mul_natCast hp0.le]
      have he : ((p : ℕ) : ℝ) ^ ((1 : ℝ) / 4) *
          ((p : ℕ) : ℝ) ^ ((-(1 : ℝ) / 2) * (3 : ℕ)) =
          ((p : ℕ) : ℝ) ^ (-(5 : ℝ) / 4) := by
        rw [← Real.rpow_add hp0]
        congr 1
        norm_num
      calc
        _ = 16 * (((p : ℕ) : ℝ) ^ ((1 : ℝ) / 4) *
            ((p : ℕ) : ℝ) ^ ((-(1 : ℝ) / 2) * (3 : ℕ))) := by ring
        _ = _ := by rw [he]

/-- Restricting the established all-natural p-series to prime bases preserves summability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/5SourceHigherPrimePowerCoefficients/Variant94502ced7fbdf9a70d530a9e5b867f8a3750b4defbe4803ba351bf2be8593e51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/5SourceHigherPrimePowerCoefficients/Variant94502ced7fbdf9a70d530a9e5b867f8a3750b4defbe4803ba351bf2be8593e51.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `261645fc8aaa3257c7dac433d79d17ce5be118a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
