# congrHoleIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:599afd607097ddcf354b4c0be2b8844a7b536a249229610ab2dd8ecd3a8f60af",
  "kind": "def",
  "lexical_name": "congrHoleIndex",
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
  "slug": "congrholeindex--c158701e4db4848c34f4694d",
  "source": {
    "blob": "5b3eb42aca3843e4bdf648ca4813ef2f45423496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant5c71b328c582231a9d3b1704a839e023b06e616801a2c8a403cec0a880ecca08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c158701e4db4848c34f4694da41da8f26ee016c8c3542abc115efb4d6309ae87",
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

Occurrence: `declaration:599afd607097ddcf354b4c0be2b8844a7b536a249229610ab2dd8ecd3a8f60af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def congrHoleIndex : Name := decl_name%

/-- For holding onto the hole's value along with the value of either the LHS or RHS of the hole.
These occur wrapped in metadata so that they always appear as function application
with exactly four arguments.

Note that there is no relation between `val` and the proof.
We need to decouple these to support letting the proof's elaboration be deferred until
we know whether we want an iff, eq, or heq, while also allowing it to choose
to elaborate as an iff, eq, or heq.
Later, the congruence generator handles any discrepencies.
See `Mathlib.Tactic.TermCongr.CongrResult`. -/
@[reducible, nolint unusedArguments]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant5c71b328c582231a9d3b1704a839e023b06e616801a2c8a403cec0a880ecca08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant5c71b328c582231a9d3b1704a839e023b06e616801a2c8a403cec0a880ecca08.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b3eb42aca3843e4bdf648ca4813ef2f45423496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
