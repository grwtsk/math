# low_high_eq_iff_not_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe1dfa00-9853-b8eb-ebbb-78f4cc02938e",
  "kind": "theorem",
  "lexical_name": "low_high_eq_iff_not_squarefree",
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
  "slug": "low-high-eq-iff-not-squarefree--2919e934f4189ff602049f7b",
  "source": {
    "blob": "ea5dcbcebf6d9eb2f24de56749b2bbfaad2fff5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 20,
    "path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/SquarefulMoebiusReturn.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2919e934f4189ff602049f7bf6d4866479a7d27996b8339b52b347350fccf3cb",
  "verification": {
    "reference": "docs/verification/NumberTheory/FunctionFieldArithmetic/SquarefulMoebiusReturn.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe1dfa00-9853-b8eb-ebbb-78f4cc02938e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem low_high_eq_iff_not_squarefree (U n : ℕ) (hU : U < n) :
    lowMoebiusCoefficient U n = highMoebiusCoefficient U n ↔ ¬Squarefree n := by
  have hreturn := moebius_low_high_coefficient_return U n hU
  have hzero : (μ n : ℤ) = 0 ↔ ¬Squarefree n := by
    simpa only [not_not] using not_congr
      (ArithmeticFunction.moebius_ne_zero_iff_squarefree (n := n))
  constructor
  · intro heq
    apply hzero.mp
    simpa [heq] using hreturn
  · intro hsq
    rw [hzero.mpr hsq] at hreturn
    omega

/-- Every finite weighted squareful-output block cancels in the scalar return.
Both complete source coefficients remain in the literal expression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FunctionFieldArithmetic/SquarefulMoebiusReturn.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FunctionFieldArithmetic/SquarefulMoebiusReturn.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea5dcbcebf6d9eb2f24de56749b2bbfaad2fff5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
