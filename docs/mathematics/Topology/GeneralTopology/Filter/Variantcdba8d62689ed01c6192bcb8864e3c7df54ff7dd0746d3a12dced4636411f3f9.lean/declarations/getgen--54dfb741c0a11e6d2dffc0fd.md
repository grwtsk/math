# getGen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cafd8bf563a61c00aa69c05584fa6cdc77289977a6c20d483b81a9d2728ea0c5",
  "kind": "def",
  "lexical_name": "getGen",
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
  "slug": "getgen--54dfb741c0a11e6d2dffc0fd",
  "source": {
    "blob": "47613b51be2c9f46181b20a41fe9ae054d7eda25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 29,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variantcdba8d62689ed01c6192bcb8864e3c7df54ff7dd0746d3a12dced4636411f3f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54dfb741c0a11e6d2dffc0fd1d55b11f8806e0394786a8d8208b2c5ff72d4e01",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variantcdba8d62689ed01c6192bcb8864e3c7df54ff7dd0746d3a12dced4636411f3f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cafd8bf563a61c00aa69c05584fa6cdc77289977a6c20d483b81a9d2728ea0c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getGen (e : Expr) : GoalM Nat := do
  if (← alreadyInternalized e) then
    getGeneration e
  else match_expr e with
   | Eq _ lhs rhs => return max (← getGeneration lhs) (← getGeneration rhs)
   | _ => return 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variantcdba8d62689ed01c6192bcb8864e3c7df54ff7dd0746d3a12dced4636411f3f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variantcdba8d62689ed01c6192bcb8864e3c7df54ff7dd0746d3a12dced4636411f3f9.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47613b51be2c9f46181b20a41fe9ae054d7eda25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
