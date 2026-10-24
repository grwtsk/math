# miscomputedDegree?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52dba859e38e19dbb87eba4a9843fcb7ebca6c50b0202c8fdae0a0b6057855cd",
  "kind": "def",
  "lexical_name": "miscomputedDegree?",
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
  "slug": "miscomputeddegree--cb8438860b757ddc951c2a66",
  "source": {
    "blob": "1df57ee8aca3403ebe07cdd32bea7113830bb7b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 471,
    "line": 443,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantd43f519b7895d696b6c6aab2ad2f45f5193be79ff5c15c3814bc70bb1676e6eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb8438860b757ddc951c2a66fa1d96933e57b21a0677acb458f7fee8b213db24",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ComputeDegree/Variantd43f519b7895d696b6c6aab2ad2f45f5193be79ff5c15c3814bc70bb1676e6eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52dba859e38e19dbb87eba4a9843fcb7ebca6c50b0202c8fdae0a0b6057855cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–471.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def miscomputedDegree? (deg : Expr) : List Expr → List MessageData
  | tgt::tgts =>
    let rest := miscomputedDegree? deg tgts
    if tgt.ne?.isSome then
      m!"* the coefficient of degree {deg} may be zero" :: rest
    else if let some ((Expr.const ``Nat []), lhs, _) := tgt.le? then
      m!"* there is at least one term of naïve degree {lhs}" :: rest
    else if let some (_, lhs, _) := tgt.eq? then
      m!"* there may be a term of naïve degree {lhs}" :: rest
    else rest
  | [] => []

/--
`compute_degree` is a tactic to solve goals of the form
*  `natDegree f = d`,
*  `degree f = d`,
*  `natDegree f ≤ d` (or `<`),
*  `degree f ≤ d` (or `<`),
*  `coeff f d = r`, if `d` is the degree of `f`.

The tactic may leave goals of the form `d' = d`, `d' ≤ d`, `d' < d`, or `r ≠ 0`, where `d'` in `ℕ`
or `WithBot ℕ` is the tactic's guess of the degree, and `r` is the coefficient's guess of the
leading coefficient of `f`.

`compute_degree` applies `norm_num` to the left-hand side of all side goals, trying to close them.

The variant `compute_degree!` first applies `compute_degree`.
Then it uses `norm_num` on all the remaining goals and tries `assumption`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ComputeDegree/Variantd43f519b7895d696b6c6aab2ad2f45f5193be79ff5c15c3814bc70bb1676e6eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantd43f519b7895d696b6c6aab2ad2f45f5193be79ff5c15c3814bc70bb1676e6eb.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1df57ee8aca3403ebe07cdd32bea7113830bb7b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
