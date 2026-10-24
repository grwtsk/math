# squareIncrement_eq_vonMangoldt_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c442d97a-648b-4213-4893-d2b135f52d00",
  "kind": "theorem",
  "lexical_name": "squareIncrement_eq_vonMangoldt_sum",
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
  "slug": "squareincrement-eq-vonmangoldt-sum--b3e1542407483751f8953a68",
  "source": {
    "blob": "648ba8cc9873e647af70dd079847d85f7eea27f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 63,
    "path": "GRWTSK/NumberTheory/Chebyshev/HigherPrimePowerSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3e1542407483751f8953a6818fa0c779f058a15d30e3d14d10ca5291f9ff3bd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c442d97a-648b-4213-4893-d2b135f52d00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareIncrement_eq_vonMangoldt_sum (n : ℕ) :
    squareIncrement n =
      ∑ m ∈ Finset.Ioc (n ^ 2) ((n + 1) ^ 2), ArithmeticFunction.vonMangoldt m := by
  have hright : ((n : ℝ) + 1) ^ 2 = (((n + 1) ^ 2 : ℕ) : ℝ) := by
    simp only [Nat.cast_pow, Nat.cast_add, Nat.cast_one]
  have hleft : (n : ℝ) ^ 2 = ((n ^ 2 : ℕ) : ℝ) := (Nat.cast_pow n 2).symm
  rw [squareIncrement, hright, hleft, source_eq_mathlib_psi, source_eq_mathlib_psi]
  simp only [_root_.Chebyshev.psi, Nat.floor_natCast]
  exact sum_Ioc_difference _ _ (pow_le_pow_left₀ (Nat.zero_le n) (by omega : n ≤ n + 1) 2) _

/-- The prime-only increment is defined from Mathlib theta, not fitted to the correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/HigherPrimePowerSource.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `648ba8cc9873e647af70dd079847d85f7eea27f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
