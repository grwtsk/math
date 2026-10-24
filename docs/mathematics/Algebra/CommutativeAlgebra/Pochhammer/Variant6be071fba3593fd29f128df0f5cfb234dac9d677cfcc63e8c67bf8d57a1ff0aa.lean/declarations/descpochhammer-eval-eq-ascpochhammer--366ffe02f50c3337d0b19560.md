# descPochhammer_eval_eq_ascPochhammer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e83a6e2-f5dd-5bf7-afb4-04b5a1f2e129",
  "kind": "theorem",
  "lexical_name": "descPochhammer_eval_eq_ascPochhammer",
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
  "slug": "descpochhammer-eval-eq-ascpochhammer--366ffe02f50c3337d0b19560",
  "source": {
    "blob": "b3e72f1bfd6c728bee050e7cda463456adced908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 348,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:366ffe02f50c3337d0b195607b6880d19553f5dbafe3b0f53e90afb2865e9b88",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e83a6e2-f5dd-5bf7-afb4-04b5a1f2e129`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem descPochhammer_eval_eq_ascPochhammer (r : R) (n : ℕ) :
    (descPochhammer R n).eval r = (ascPochhammer R n).eval (r - n + 1) := by
  induction n with
  | zero => rw [descPochhammer_zero, eval_one, ascPochhammer_zero, eval_one]
  | succ n ih =>
    rw [Nat.cast_succ, sub_add, add_sub_cancel_right, descPochhammer_succ_eval, ih,
      ascPochhammer_succ_left, X_mul, eval_mul_X, show (X + 1 : R[X]) =
      (X + 1 : ℕ[X]).map (algebraMap ℕ R) by simp only [Polynomial.map_add, map_X,
      Polynomial.map_one], ascPochhammer_eval_comp, eval₂_add, eval₂_X, eval₂_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3e72f1bfd6c728bee050e7cda463456adced908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
