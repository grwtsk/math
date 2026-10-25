# parseLowerHex?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34bfb1aea2ff9370801c8f0883d7bab8bae51a70c14bc29693b16185cfa05d10",
  "kind": "def",
  "lexical_name": "parseLowerHex?",
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
  "slug": "parselowerhex--f71c530126a3145c1e215e60",
  "source": {
    "blob": "7e08d8ef771904ac0c8419368d637846486fc9a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f71c530126a3145c1e215e605cea2197f74f641015dbafc93a86d040cbbaf202",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34bfb1aea2ff9370801c8f0883d7bab8bae51a70c14bc29693b16185cfa05d10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseLowerHex? (k : Nat) (s : String) (p : s.Pos) (acc : Nat) :
    Option (s.Pos × Nat) :=
  match k with
  | 0 => some (p, acc)
  | k + 1 =>
    if h : p = s.endPos then
      none
    else
      match fromHex? (p.get h) with
      | some d => parseLowerHex? k s (p.next h) (acc <<< 4 ||| d)
      | none => none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e08d8ef771904ac0c8419368d637846486fc9a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
