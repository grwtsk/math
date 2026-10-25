# insertUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:954cf3a13acc6f2b87cf9b705e5686ba7a7ca487c084c2f9990108ae4037d547",
  "kind": "def",
  "lexical_name": "insertUnit",
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
  "slug": "insertunit--25a36fb0cfe0498578ed4c5d",
  "source": {
    "blob": "b8b6591954dd3adf74158525b5c3fafc522b4f8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Implementation/Variant9a04a29d7ac7d89b715632fc180ac3dd2ef46caf2dab20a3762deb14aa5e0179.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25a36fb0cfe0498578ed4c5d4732db668b241ef4ddd4c3a475fd4302e4f50165",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Implementation/Variant9a04a29d7ac7d89b715632fc180ac3dd2ef46caf2dab20a3762deb14aa5e0179.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:954cf3a13acc6f2b87cf9b705e5686ba7a7ca487c084c2f9990108ae4037d547`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def insertUnit : Array (Literal (PosFin n)) × Array Assignment × Bool →
    Literal (PosFin n) → Array (Literal (PosFin n)) × Array Assignment × Bool :=
  fun (units, assignments, foundContradiction) (l, b) =>
    let curAssignment := assignments[l.1]!
    if hasAssignment b curAssignment then
      (units, assignments, foundContradiction)
    else
      let units := units.push (l, b)
      let assignments := assignments.modify l (addAssignment b)
      let foundContradiction := foundContradiction || curAssignment != unassigned
      (units, assignments, foundContradiction)

/--
Returns an updated formula f and a bool which indicates whether a contradiction was found in the
process of updating f.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Implementation/Variant9a04a29d7ac7d89b715632fc180ac3dd2ef46caf2dab20a3762deb14aa5e0179.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Implementation/Variant9a04a29d7ac7d89b715632fc180ac3dd2ef46caf2dab20a3762deb14aa5e0179.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8b6591954dd3adf74158525b5c3fafc522b4f8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
