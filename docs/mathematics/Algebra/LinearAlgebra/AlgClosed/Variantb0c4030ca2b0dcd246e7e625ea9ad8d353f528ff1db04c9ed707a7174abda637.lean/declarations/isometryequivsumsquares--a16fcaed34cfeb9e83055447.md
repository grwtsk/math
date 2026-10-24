# isometryEquivSumSquares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:786ef5c76539f1e17f87ef25bc04eab74c60dc56f2aed0ea04507fbbf6d2cd14",
  "kind": "def",
  "lexical_name": "isometryEquivSumSquares",
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
  "slug": "isometryequivsumsquares--a16fcaed34cfeb9e83055447",
  "source": {
    "blob": "e9f107fa34a7a5782c87227ab30bb5a73d11695a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 30,
    "path": "GRWTSK/Algebra/LinearAlgebra/AlgClosed/Variantb0c4030ca2b0dcd246e7e625ea9ad8d353f528ff1db04c9ed707a7174abda637.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a16fcaed34cfeb9e83055447f29a62424d2ea08d08a7ea196c90ea45ffc4b619",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AlgClosed/Variantb0c4030ca2b0dcd246e7e625ea9ad8d353f528ff1db04c9ed707a7174abda637.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:786ef5c76539f1e17f87ef25bc04eab74c60dc56f2aed0ea04507fbbf6d2cd14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isometryEquivSumSquares [DecidableEq K] (w : ι → K) :
    IsometryEquiv (weightedSumSquares K w)
      (weightedSumSquares K (fun i => if w i = 0 then 0 else 1 : ι → K)) := by
  refine isometryEquivWeightedSumSquaresWeightedSumSquares (fun i => if h : w i = 0 then 1 else
    Units.mk0 (IsAlgClosed.exists_eq_mul_self (w i)).choose (by
      rw [← mul_self_eq_zero.ne, ← (IsAlgClosed.exists_eq_mul_self (w i)).choose_spec]
      simpa using h)) ?_
  intro i
  split_ifs with h <;>
    simp [h, pow_two, ← (IsAlgClosed.exists_eq_mul_self (w i : K)).choose_spec]

/-- The isometry between a weighted sum of squares on an algebraically closed field and the
sum of squares, i.e. `weightedSumSquares` with weight `fun (i : ι) => 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AlgClosed/Variantb0c4030ca2b0dcd246e7e625ea9ad8d353f528ff1db04c9ed707a7174abda637.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AlgClosed/Variantb0c4030ca2b0dcd246e7e625ea9ad8d353f528ff1db04c9ed707a7174abda637.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9f107fa34a7a5782c87227ab30bb5a73d11695a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
