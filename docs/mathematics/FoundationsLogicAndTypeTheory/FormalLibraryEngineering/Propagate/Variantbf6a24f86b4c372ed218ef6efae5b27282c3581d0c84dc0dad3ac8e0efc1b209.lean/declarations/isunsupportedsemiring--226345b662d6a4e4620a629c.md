# isUnsupportedSemiring?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a901b0adec03b98c198c2528f9dcf36101587c7ec672ac2b6a89a4af80f141e5",
  "kind": "def",
  "lexical_name": "isUnsupportedSemiring?",
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
  "slug": "isunsupportedsemiring--226345b662d6a4e4620a629c",
  "source": {
    "blob": "fdee1361c3427e6b51ab21fc5834b0b8f0d70fc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variantbf6a24f86b4c372ed218ef6efae5b27282c3581d0c84dc0dad3ac8e0efc1b209.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:226345b662d6a4e4620a629c5f8bc54afc791bf0b2497175e94afd4873d43e96",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variantbf6a24f86b4c372ed218ef6efae5b27282c3581d0c84dc0dad3ac8e0efc1b209.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a901b0adec03b98c198c2528f9dcf36101587c7ec672ac2b6a89a4af80f141e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def isUnsupportedSemiring? (type : Expr) : GoalM (Option Expr) := do
  if isSupportedSemiringQuick type then return none
  if (← getCommRingId? type).isSome then return none
  if let some id ← getCommSemiringId? type then
    -- CommSemiring also needs `propagateMul` because the ring envelope approach
    -- does not propagate `0 * a = 0` back to original terms.
    -- In the future, we want to add support for propagating equalities when the
    -- `CommSemiring` implements `AddRightCancel`.
    return some (← SemiringM.run id (return (← getSemiring).semiringInst))
  if let some id ← getNonCommRingId? type then
    let inst ← NonCommRingM.run id do return (← getRing).semiringInst
    return some inst
  if let some id ← getNonCommSemiringId? type then
    let inst ← NonCommSemiringM.run id do return (← getSemiring).semiringInst
    return some inst
  return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variantbf6a24f86b4c372ed218ef6efae5b27282c3581d0c84dc0dad3ac8e0efc1b209.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variantbf6a24f86b4c372ed218ef6efae5b27282c3581d0c84dc0dad3ac8e0efc1b209.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdee1361c3427e6b51ab21fc5834b0b8f0d70fc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
