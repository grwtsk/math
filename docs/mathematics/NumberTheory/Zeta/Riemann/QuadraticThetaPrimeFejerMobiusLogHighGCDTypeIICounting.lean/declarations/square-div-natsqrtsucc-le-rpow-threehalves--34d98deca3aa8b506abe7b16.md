# square_div_natSqrtSucc_le_rpow_threeHalves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3768a40c-e1bb-6339-c019-29bbc64bd7c0",
  "kind": "theorem",
  "lexical_name": "square_div_natSqrtSucc_le_rpow_threeHalves",
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
  "slug": "square-div-natsqrtsucc-le-rpow-threehalves--34d98deca3aa8b506abe7b16",
  "source": {
    "blob": "d70aa7eaaad0837560046946811c547bd5fc5266",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 130,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34d98deca3aa8b506abe7b16ed8fed011a273a4f377ef26729ccd71194106d32",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3768a40c-e1bb-6339-c019-29bbc64bd7c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem square_div_natSqrtSucc_le_rpow_threeHalves
    {X : ℕ}
    (hX : 0 < X) :
    (X : ℝ)^2 / ((Nat.sqrt X + 1 : ℕ) : ℝ) ≤
      Real.rpow (X : ℝ) ((3 : ℝ) / 2) := by
  have hXr : 0 < (X : ℝ) := by exact_mod_cast hX
  have hsqrt :
      Real.sqrt (X : ℝ) ≤ ((Nat.sqrt X + 1 : ℕ) : ℝ) := by
    exact Real.real_sqrt_le_nat_sqrt_succ
  have hsqrt0 : 0 < Real.sqrt (X : ℝ) :=
    Real.sqrt_pos.2 hXr
  calc
    (X : ℝ)^2 / ((Nat.sqrt X + 1 : ℕ) : ℝ)
      ≤ (X : ℝ)^2 / Real.sqrt (X : ℝ) :=
        div_le_div_of_nonneg_left (sq_nonneg _) hsqrt0 hsqrt
    _ = Real.rpow (X : ℝ) ((3 : ℝ) / 2) := by
      rw [Real.sqrt_eq_rpow, ← Real.rpow_two,
        ← Real.rpow_sub hXr]
      congr 1
      ring

/-- At the square-root split, the relaxed tuple box is already at the exact
`X^(3/2)` scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d70aa7eaaad0837560046946811c547bd5fc5266` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
