# checkJpInScope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b97895fa4c18ba43c54daaf3d32540dfe7582a8f8551ed13172e402bc0567ce",
  "kind": "def",
  "lexical_name": "checkJpInScope",
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
  "slug": "checkjpinscope--873c4ac7a22897d54d6cc6f2",
  "source": {
    "blob": "cd7d38b80b555b456edbfa5bd0a6a5126e839adf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:873c4ac7a22897d54d6cc6f252391e9982eda8a96803111be1a2b0eb6c08cdb3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b97895fa4c18ba43c54daaf3d32540dfe7582a8f8551ed13172e402bc0567ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def checkJpInScope (jp : FVarId) : CheckM Unit := do
  unless (← read).jps.contains jp do
    /-
    We cannot jump to join points defined out of the scope of a local function declaration.
    For example, the following is an invalid LCNF.
    ```
    jp_1 := fun x => ... -- Some join point
    let f := fun y => -- Local function declaration.
      ...
      jp_1 _x.n -- jump to a join point that is not in the scope of `f`.
    ```
    -/
    throwError "invalid jump to out of scope join point `{mkFVar jp}`"

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd7d38b80b555b456edbfa5bd0a6a5126e839adf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
