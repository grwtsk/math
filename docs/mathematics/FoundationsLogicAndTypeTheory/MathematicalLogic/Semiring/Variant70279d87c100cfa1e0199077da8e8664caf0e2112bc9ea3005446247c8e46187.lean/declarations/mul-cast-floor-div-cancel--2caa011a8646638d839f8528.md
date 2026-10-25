# mul_cast_floor_div_cancel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eeaba3d8-8ae0-1677-7bb9-317277417a31",
  "kind": "theorem",
  "lexical_name": "mul_cast_floor_div_cancel",
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
  "slug": "mul-cast-floor-div-cancel--2caa011a8646638d839f8528",
  "source": {
    "blob": "bb82421571621ca5478fc6b47d67e7dd466dbd9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 159,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiring/Variant70279d87c100cfa1e0199077da8e8664caf0e2112bc9ea3005446247c8e46187.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2caa011a8646638d839f85283fc4b267253aa1b9a06c7a9d6b795c46c241fa08",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiring/Variant70279d87c100cfa1e0199077da8e8664caf0e2112bc9ea3005446247c8e46187.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeaba3d8-8ae0-1677-7bb9-317277417a31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_cast_floor_div_cancel {n : ℕ} (hn : n ≠ 0) (a : R) : ⌊a * n⌋₊ / n = ⌊a⌋₊ := by
  rcases le_total a 0 with ha | ha
  · rw [floor_of_nonpos, floor_of_nonpos ha]
    · simp
    apply mul_nonpos_of_nonpos_of_nonneg ha n.cast_nonneg
  refine eq_of_forall_le_iff fun m ↦ ?_
  rw [le_div_iff_mul_le (zero_lt_of_ne_zero hn), le_floor_iff (mul_nonneg ha (cast_nonneg' n)),
    le_floor_iff ha, cast_mul, mul_le_mul_iff_of_pos_right (cast_pos'.mpr (zero_lt_of_ne_zero hn))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiring/Variant70279d87c100cfa1e0199077da8e8664caf0e2112bc9ea3005446247c8e46187.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiring/Variant70279d87c100cfa1e0199077da8e8664caf0e2112bc9ea3005446247c8e46187.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb82421571621ca5478fc6b47d67e7dd466dbd9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
