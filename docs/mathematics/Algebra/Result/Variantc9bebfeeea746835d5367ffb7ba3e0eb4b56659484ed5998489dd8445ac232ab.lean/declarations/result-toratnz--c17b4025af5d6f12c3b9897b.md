# Result.toRatNZ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1aa092b77c1329689df3d70d17dd8dc0491e7e4a0533b2fa5060aaa1be5b457c",
  "kind": "def",
  "lexical_name": "Result.toRatNZ",
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
  "slug": "result-toratnz--c17b4025af5d6f12c3b9897b",
  "source": {
    "blob": "69f1f7c68dbbb8fe65b8a71cb26a128d88252f72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 414,
    "path": "GRWTSK/Algebra/Result/Variantc9bebfeeea746835d5367ffb7ba3e0eb4b56659484ed5998489dd8445ac232ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c17b4025af5d6f12c3b9897bda675bec22470df32f9ca538630c03bbc80d6d21",
  "verification": {
    "reference": "docs/verification/Algebra/Result/Variantc9bebfeeea746835d5367ffb7ba3e0eb4b56659484ed5998489dd8445ac232ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1aa092b77c1329689df3d70d17dd8dc0491e7e4a0533b2fa5060aaa1be5b457c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Result.toRatNZ {α : Q(Type u)} {e : Q($α)} : Result e → Option (Rat × Option Expr)
  | .isBool .. => none
  | .isNat _ lit _ => some (lit.natLit!, none)
  | .isNegNat _ lit _ => some (-lit.natLit!, none)
  | .isNNRat _ q _ _ p => some (q, q(IsNNRat.den_nz $p))
  | .isNegNNRat _ q _ _ p => some (q, q(IsRat.den_nz $p))

/--
Extract from a `Result` the integer value (as both a term and an expression),
and the proof that the original expression is equal to this integer.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Result/Variantc9bebfeeea746835d5367ffb7ba3e0eb4b56659484ed5998489dd8445ac232ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Result/Variantc9bebfeeea746835d5367ffb7ba3e0eb4b56659484ed5998489dd8445ac232ab.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69f1f7c68dbbb8fe65b8a71cb26a128d88252f72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
