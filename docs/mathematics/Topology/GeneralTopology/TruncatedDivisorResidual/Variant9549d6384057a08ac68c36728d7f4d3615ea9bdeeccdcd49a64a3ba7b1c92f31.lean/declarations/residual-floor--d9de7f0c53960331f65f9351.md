# residual_floor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cef40a0b-0ef1-0bd6-2bba-4eb1d5532905",
  "kind": "theorem",
  "lexical_name": "residual_floor",
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
  "slug": "residual-floor--d9de7f0c53960331f65f9351",
  "source": {
    "blob": "05c09f58b33946fbfca88bc36bf4041d31844db8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/TruncatedDivisorResidual/Variant9549d6384057a08ac68c36728d7f4d3615ea9bdeeccdcd49a64a3ba7b1c92f31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9de7f0c53960331f65f9351be5456c8e2327273622533d8e50c1909d4ecf73b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TruncatedDivisorResidual/Variant9549d6384057a08ac68c36728d7f4d3615ea9bdeeccdcd49a64a3ba7b1c92f31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cef40a0b-0ef1-0bd6-2bba-4eb1d5532905`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem residual_floor (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) (hx : 0 ≤ x) :
    arithmeticResidual X ε x = (if 1 ≤ x then 1 else 0) +
      (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) -
      ((∑ d ∈ Icc 1 X, dampedCoefficient X ε d *
        (⌊x / (d : ℝ)⌋₊ : ℝ) : ℝ) : ℂ) := by
  rw [arithmeticResidual, ← dampedCoefficient_reciprocal_sum X ε hX]
  push_cast
  rw [Finset.mul_sum, add_sub_assoc, ← Finset.sum_sub_distrib]
  congr 1
  apply sum_congr rfl
  intro d hd
  have hd0 : (0 : ℝ) ≤ d := Nat.cast_nonneg _
  rw [Int.fract, ← natCast_floor_eq_intCast_floor (div_nonneg hx hd0)]
  push_cast
  ring

/-- The unchanged complex residual has its exact truncated-divisor identity on the full half-line.
The endpoint correction is kept at and beyond the source cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TruncatedDivisorResidual/Variant9549d6384057a08ac68c36728d7f4d3615ea9bdeeccdcd49a64a3ba7b1c92f31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TruncatedDivisorResidual/Variant9549d6384057a08ac68c36728d7f4d3615ea9bdeeccdcd49a64a3ba7b1c92f31.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05c09f58b33946fbfca88bc36bf4041d31844db8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
