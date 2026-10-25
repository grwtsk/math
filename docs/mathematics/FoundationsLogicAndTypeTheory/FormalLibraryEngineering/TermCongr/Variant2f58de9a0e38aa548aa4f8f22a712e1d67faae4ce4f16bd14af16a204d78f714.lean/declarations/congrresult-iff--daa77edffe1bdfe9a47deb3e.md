# CongrResult.iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dab1748fcc0aa10503cb6c29a7259b5901a9069a88cd31cf4f08f08e481ff838",
  "kind": "def",
  "lexical_name": "CongrResult.iff",
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
  "slug": "congrresult-iff--daa77edffe1bdfe9a47deb3e",
  "source": {
    "blob": "c76112d1f1a838af5b3d3645665dd0eea3b0ada1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 302,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2f58de9a0e38aa548aa4f8f22a712e1d67faae4ce4f16bd14af16a204d78f714.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:daa77edffe1bdfe9a47deb3e84ec4ca74cfb22df66bbea584846895504696594",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2f58de9a0e38aa548aa4f8f22a712e1d67faae4ce4f16bd14af16a204d78f714.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dab1748fcc0aa10503cb6c29a7259b5901a9069a88cd31cf4f08f08e481ff838`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CongrResult.iff (res : CongrResult) : MetaM Expr := do
  unless ← Meta.isProp res.lhs do
    throwError "Expecting{indentD res.lhs}\nto be a proposition."
  return mkApp3 (.const ``iff_of_eq []) res.lhs res.rhs (← res.eq)

/-- Combine two congruence proofs using transitivity.
Does not check that `res1.rhs` is defeq to `res2.lhs`.
If both `res1` and `res2` are trivial then the result is trivial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2f58de9a0e38aa548aa4f8f22a712e1d67faae4ce4f16bd14af16a204d78f714.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2f58de9a0e38aa548aa4f8f22a712e1d67faae4ce4f16bd14af16a204d78f714.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c76112d1f1a838af5b3d3645665dd0eea3b0ada1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
