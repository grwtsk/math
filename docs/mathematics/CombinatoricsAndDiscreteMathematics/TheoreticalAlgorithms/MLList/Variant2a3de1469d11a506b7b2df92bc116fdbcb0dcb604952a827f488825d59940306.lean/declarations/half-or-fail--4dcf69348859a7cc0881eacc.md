# half_or_fail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07c2bc05fa92449f9cadf979d5d58713461eb2040f3fe00c8edf4ccd50cae43b",
  "kind": "def",
  "lexical_name": "half_or_fail",
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
  "slug": "half-or-fail--4dcf69348859a7cc0881eacc",
  "source": {
    "blob": "031f47dfb0895a3152697222bcd44d97eacd5517",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MLList/Variant2a3de1469d11a506b7b2df92bc116fdbcb0dcb604952a827f488825d59940306.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4dcf69348859a7cc0881eacc4a1800a08a5d7edf96d441f9f8f757c7e8410cde",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MLList/Variant2a3de1469d11a506b7b2df92bc116fdbcb0dcb604952a827f488825d59940306.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07c2bc05fa92449f9cadf979d5d58713461eb2040f3fe00c8edf4ccd50cae43b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def half_or_fail (n : Nat) : MetaM Nat :=
do guard (n % 2 = 0)
   pure (n / 2)

#eval do
  let x : MLList MetaM Nat := MLList.range
  let y := x.filterMapM fun n => try? <| half_or_fail n
  let z ← y.takeAsList 10
  guard $ z.length = 10

#eval do
  let R : MLList MetaM Nat := MLList.range
  let S : MLList MetaM Nat := R.filterMapM fun n => try? do
    guard (n % 5 = 0)
    pure n
  let n ← R.takeAsList 5
  let m ← S.head
  guard $ n = [0,1,2,3,4]
  guard $ m = 0

#eval do
  let R : MLList MetaM Nat := MLList.range
  let n ← R.firstM fun n => try? do
    guard (n = 5)
    pure n
  guard $ n = 5
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MLList/Variant2a3de1469d11a506b7b2df92bc116fdbcb0dcb604952a827f488825d59940306.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MLList/Variant2a3de1469d11a506b7b2df92bc116fdbcb0dcb604952a827f488825d59940306.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `031f47dfb0895a3152697222bcd44d97eacd5517` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
