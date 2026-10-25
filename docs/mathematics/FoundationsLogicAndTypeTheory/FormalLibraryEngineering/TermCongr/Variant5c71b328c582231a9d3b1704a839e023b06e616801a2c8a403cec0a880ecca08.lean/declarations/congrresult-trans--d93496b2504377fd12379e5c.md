# CongrResult.trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e51bbad7f842dd37161985853b360e509cbde9a74a2cea325fcb9a5b3beacd8b",
  "kind": "def",
  "lexical_name": "CongrResult.trans",
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
  "slug": "congrresult-trans--d93496b2504377fd12379e5c",
  "source": {
    "blob": "5b3eb42aca3843e4bdf648ca4813ef2f45423496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 384,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant5c71b328c582231a9d3b1704a839e023b06e616801a2c8a403cec0a880ecca08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d93496b2504377fd12379e5cde6cb1b20fc08de13b1ecfd96516299e0b2af488",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant5c71b328c582231a9d3b1704a839e023b06e616801a2c8a403cec0a880ecca08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e51bbad7f842dd37161985853b360e509cbde9a74a2cea325fcb9a5b3beacd8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CongrResult.trans (res1 res2 : CongrResult) : CongrResult where
  lhs := res1.lhs
  rhs := res2.rhs
  pf? :=
    if res1.isRfl then
      res2.pf?
    else if res2.isRfl then
      res1.pf?
    else
      some fun
        | .eq => do mkEqTrans (← res1.eq) (← res2.eq)
        | .heq => do mkHEqTrans (← res1.heq) (← res2.heq)

/-- Make a `CongrResult` from a LHS, a RHS, and a proof of an Iff, Eq, or HEq.
The proof is allowed to have a metavariable for its type.
Validates the inputs and throws errors in the `pf?` function.

The `pf?` function is responsible for finally unifying the type of `pf` with `lhs` and `rhs`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant5c71b328c582231a9d3b1704a839e023b06e616801a2c8a403cec0a880ecca08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant5c71b328c582231a9d3b1704a839e023b06e616801a2c8a403cec0a880ecca08.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b3eb42aca3843e4bdf648ca4813ef2f45423496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
