# coeff_intCast_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b77efba-7ad9-f661-b2c6-22c61bf9fbc3",
  "kind": "theorem",
  "lexical_name": "coeff_intCast_ite",
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
  "slug": "coeff-intcast-ite--05d8c62d04824187fc4f484d",
  "source": {
    "blob": "22f5c723b7c4823e8d7123b3af865ae9d6cb9caf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 210,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variant3dc4652ae1ef3a5e4595688ba42cd7396e5b11bca0201443d0905cc1c4d4239a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05d8c62d04824187fc4f484de2ac4b47b6538565d7760abf8a6b3deade62c212",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ComputeDegree/Variant3dc4652ae1ef3a5e4595688ba42cd7396e5b11bca0201443d0905cc1c4d4239a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b77efba-7ad9-f661-b2c6-22c61bf9fbc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_intCast_ite {n : ℕ} {a : ℤ} : (Int.cast a : R[X]).coeff n = ite (n = 0) a 0 := by
  simp only [← C_eq_intCast, coeff_C, Int.cast_ite, Int.cast_zero]

end ring

end recursion_lemmas

section Tactic

open Lean Elab Tactic Meta Expr

/-- `twoHeadsArgs e` takes an `Expr`ession `e` as input and recurses into `e` to make sure
that `e` looks like `lhs ≤ rhs`, `lhs < rhs` or `lhs = rhs` and that `lhs` is one of
`natDegree f, degree f, coeff f d`.
It returns
* the function being applied on the LHS (`natDegree`, `degree`, or `coeff`),
  or else `.anonymous` if it's none of these;
* the name of the relation (`Eq`, `LE.le` or `LT.lt`), or else `.anonymous` if it's none of these;
* either
  * `.inl zero`, `.inl one`, or `.inl many` if the polynomial in a numeral;
  * or `.inr` of the head symbol of `f`;
  * or `.inl .anonymous` if inapplicable;
* if it exists, whether the `rhs` is a metavariable;
* if the LHS is `coeff f d`, whether `d` is a metavariable.

This is all the data needed to figure out whether `compute_degree` can make progress on `e`
and, if so, which lemma it should apply.

Sample outputs:
* `natDegree (f + g) ≤ d => (natDegree, LE.le, HAdd.hAdd, d.isMVar, none)` (similarly for `=`);
* `degree (f * g) = d => (degree, Eq, HMul.hMul, d.isMVar, none)` (similarly for `≤`);
* `coeff (1 : ℕ[X]) c = x => (coeff, Eq, one, x.isMVar, c.isMVar)` (no `≤` option!).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ComputeDegree/Variant3dc4652ae1ef3a5e4595688ba42cd7396e5b11bca0201443d0905cc1c4d4239a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variant3dc4652ae1ef3a5e4595688ba42cd7396e5b11bca0201443d0905cc1c4d4239a.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22f5c723b7c4823e8d7123b3af865ae9d6cb9caf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
