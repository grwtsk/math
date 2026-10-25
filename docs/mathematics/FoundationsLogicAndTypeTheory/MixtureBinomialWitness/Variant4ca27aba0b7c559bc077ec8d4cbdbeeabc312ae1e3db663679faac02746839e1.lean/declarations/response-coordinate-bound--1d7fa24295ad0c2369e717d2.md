# response_coordinate_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb683859-e335-082f-34a7-188bd6ec5121",
  "kind": "theorem",
  "lexical_name": "response_coordinate_bound",
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
  "slug": "response-coordinate-bound--1d7fa24295ad0c2369e717d2",
  "source": {
    "blob": "e70121258818465f72ece3e908c0d7cf1b87410d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variant4ca27aba0b7c559bc077ec8d4cbdbeeabc312ae1e3db663679faac02746839e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d7fa24295ad0c2369e717d282449b0b4383dd29cf0febfb3910da48bfc76513",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variant4ca27aba0b7c559bc077ec8d4cbdbeeabc312ae1e3db663679faac02746839e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb683859-e335-082f-34a7-188bd6ec5121`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem response_coordinate_bound {m : ℕ} (hm : 2 ≤ m)
    (p : Fin 2) (r : Fin (m + 1)) :
    ‖response m (witness m) (p, r)‖ ≤ (Real.log 3 / m) ^ m := by
  rw [exact_response, norm_pow]
  apply pow_le_pow_left₀ (norm_nonneg _)
  rw [norm_sub_rev]
  have h := Real.norm_exp_I_mul_ofReal_sub_one_le
    (x := (r : ℝ) / (m : ℝ) ^ 2 * primeLog p)
  have hr : (r : ℝ) ≤ m := by exact_mod_cast Nat.le_of_lt_succ r.isLt
  have hmp : (0 : ℝ) < m := by exact_mod_cast (by omega : 0 < m)
  have harg : 0 ≤ (r : ℝ) / (m : ℝ) ^ 2 * primeLog p :=
    mul_nonneg (by positivity) (primeLog_nonnegative p)
  rw [Real.norm_eq_abs, abs_of_nonneg harg] at h
  apply h.trans
  apply (le_div_iff₀ hmp).2
  have hdiv : (r : ℝ) / (m : ℝ) ^ 2 * primeLog p * m =
      (r : ℝ) / m * primeLog p := by field_simp
  rw [hdiv]
  exact (mul_le_of_le_one_left (primeLog_nonnegative p)
    ((div_le_one hmp).2 hr)).trans (primeLog_le_three p)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variant4ca27aba0b7c559bc077ec8d4cbdbeeabc312ae1e3db663679faac02746839e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variant4ca27aba0b7c559bc077ec8d4cbdbeeabc312ae1e3db663679faac02746839e1.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e70121258818465f72ece3e908c0d7cf1b87410d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
