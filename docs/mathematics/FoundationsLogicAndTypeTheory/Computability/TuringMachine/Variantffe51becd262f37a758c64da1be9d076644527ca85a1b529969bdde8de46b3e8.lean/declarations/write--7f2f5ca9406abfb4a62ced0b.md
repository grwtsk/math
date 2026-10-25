# write

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be9faf524cbf933035efabf9e5cbe51ab6f9d7b696cd28efcdc089910c8956c5",
  "kind": "def",
  "lexical_name": "write",
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
  "slug": "write--7f2f5ca9406abfb4a62ced0b",
  "source": {
    "blob": "8e5b31d39d6dea47790cb5fec7eafa75b7029607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1694,
    "line": 1688,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f2f5ca9406abfb4a62ced0bfb1f44d76785da5c411f0c4fe52ce968cb51485d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be9faf524cbf933035efabf9e5cbe51ab6f9d7b696cd28efcdc089910c8956c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1688–1694.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def write : List Bool → Stmt'₁ → Stmt'₁
  | [], q => q
  | a :: l, q => (Stmt.write fun _ _ ↦ a) <| Stmt.move Dir.right <| write l q
#align turing.TM1to1.write Turing.TM1to1.write

/-- Translate a normal instruction. For the `write` command, we use a `goto` indirection so that
we can access the current value of the tape. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean#L1688).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e5b31d39d6dea47790cb5fec7eafa75b7029607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
