# pderiv.ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e266d2e-0854-f559-4261-3817b9975803",
  "kind": "theorem",
  "lexical_name": "pderiv.ext",
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
  "slug": "pderiv-ext--a568c9e1ba0c417c048c06e6",
  "source": {
    "blob": "952625ec5083cedb64ca6716ab5362765568f352",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 178,
    "path": "GRWTSK/Algebra/Derivative/Varianteaaa9e8a2c0e9ecda6b8baf848a8bde7182e5c3b94c898292bb16ea7822d4280.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a568c9e1ba0c417c048c06e6127c2e06e26993def2a6fe515415cfbb77329276",
  "verification": {
    "reference": "docs/verification/Algebra/Derivative/Varianteaaa9e8a2c0e9ecda6b8baf848a8bde7182e5c3b94c898292bb16ea7822d4280.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e266d2e-0854-f559-4261-3817b9975803`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pderiv.ext [CommRing R] [IsAddTorsionFree R] {f g : MvPowerSeries σ R}
    (hD : ∀ i, pderiv i f = pderiv i g) (hc : constantCoeff f = constantCoeff g) : f = g := by
  ext n
  by_cases h : n = 0
  · rw [h, coeff_zero_eq_constantCoeff, hc]
  obtain ⟨i, hi : n i ≠ 0⟩ := ne_iff.mp h
  have : single i 1 ≤ n := fun j ↦ by
    by_cases hj : j = i <;> grind [single_eq_same, single_eq_of_ne]
  have e := congr(coeff (n - single i 1) $(hD i))
  rwa [coeff_pderiv, coeff_pderiv, tsub_add_cancel_of_le this, coe_tsub, Pi.sub_apply,
    single_eq_same, Nat.cast_sub (Nat.one_le_iff_ne_zero.mpr hi), Nat.cast_one, sub_add_cancel,
    mul_comm, ← nsmul_eq_mul, mul_comm, ← nsmul_eq_mul, smul_right_inj hi] at e

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Derivative/Varianteaaa9e8a2c0e9ecda6b8baf848a8bde7182e5c3b94c898292bb16ea7822d4280.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Derivative/Varianteaaa9e8a2c0e9ecda6b8baf848a8bde7182e5c3b94c898292bb16ea7822d4280.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `952625ec5083cedb64ca6716ab5362765568f352` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
