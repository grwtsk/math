# density_prime_half_mass_algebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44d8c68c-f2db-7a07-ea0a-24d1f33313b7",
  "kind": "theorem",
  "lexical_name": "density_prime_half_mass_algebra",
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
  "slug": "density-prime-half-mass-algebra--f1073ab2fe1128309bec5b13",
  "source": {
    "blob": "360b92fe6e8cc25cb7eba1f75c4047a5b4340cdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 68,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/DensityHalfPrimeFactor.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1073ab2fe1128309bec5b13d32cad0f18355ebdce636f0644a2d8cd04087ffe",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfPrimeFactor.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44d8c68c-f2db-7a07-ea0a-24d1f33313b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_prime_half_mass_algebra {p : ℕ} (hp : p.Prime) :
    (1 / Real.sqrt (p : ℝ)) /
        (((p : ℝ) + 1) * (1 - 1 / Real.sqrt (p : ℝ))) =
      1 / (((p : ℝ) + 1) * (Real.sqrt (p : ℝ) - 1)) := by
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  have hs1 : 1 < Real.sqrt (p : ℝ) := by
    simpa only [Real.sqrt_one] using
      (Real.sqrt_lt_sqrt_iff (show 0 ≤ (1 : ℝ) by norm_num)).mpr hp1
  have hs0 : Real.sqrt (p : ℝ) ≠ 0 := by linarith
  have hm : Real.sqrt (p : ℝ) - 1 ≠ 0 := by linarith
  field_simp [hs0, hm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfPrimeFactor.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/DensityHalfPrimeFactor.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `360b92fe6e8cc25cb7eba1f75c4047a5b4340cdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
