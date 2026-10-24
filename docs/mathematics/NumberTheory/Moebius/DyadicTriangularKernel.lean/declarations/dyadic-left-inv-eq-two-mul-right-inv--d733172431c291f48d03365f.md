# dyadic_left_inv_eq_two_mul_right_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62828fdb-ba2e-4642-1fc4-3e9a49fbee63",
  "kind": "theorem",
  "lexical_name": "dyadic_left_inv_eq_two_mul_right_inv",
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
  "slug": "dyadic-left-inv-eq-two-mul-right-inv--d733172431c291f48d03365f",
  "source": {
    "blob": "29207a118760feb5bf47b46b80ce9bdcd0702d94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 164,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicTriangularKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d733172431c291f48d03365ff74c64ae7e0817331c4edcc09ee2d3cbd2de37d8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicTriangularKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62828fdb-ba2e-4642-1fc4-3e9a49fbee63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadic_left_inv_eq_two_mul_right_inv (j : ℕ) :
    (((2 ^ j : ℕ) : ℝ))⁻¹ =
      2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
  rw [Nat.pow_succ, Nat.cast_mul, Nat.cast_ofNat]
  field_simp [show (((2 ^ j : ℕ) : ℝ)) ≠ 0 by positivity]

/-- Finite telescoping of the triangular increments across a consecutive
range. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicTriangularKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicTriangularKernel.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29207a118760feb5bf47b46b80ce9bdcd0702d94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
