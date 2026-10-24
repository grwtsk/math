# brailleCellAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4c359b2a75d4a1704aacd6e65c8fce373c3d34e95c3c14fc70eac8131b70b39",
  "kind": "def",
  "lexical_name": "brailleCellAt",
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
  "slug": "braillecellat--17735f5393fb84fe616a7b1e",
  "source": {
    "blob": "e319843ad1210998e75e03afc81cdd2231b2efd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 385,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3fcfc93aaa59c33af79baf3bfba71d898e082b29afffaccadec915bd59a43827.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17735f5393fb84fe616a7b1eadef0f64efc4b468b0f5c1176183952a2c7b4445",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3fcfc93aaa59c33af79baf3bfba71d898e082b29afffaccadec915bd59a43827.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4c359b2a75d4a1704aacd6e65c8fce373c3d34e95c3c14fc70eac8131b70b39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def brailleCellAt (i : Nat) (n : Needs) : Char := Id.run do
  let mut dots := 0
  -- Accumulate per `NeedsKind` so that the cell does not depend on the order of `NeedsKind.all`
  for k in NeedsKind.all do
    if n.has k i then
      let row := if k.isExported then 0 else if k.isAll then 2 else 1
      let col := if k.isMeta then 1 else 0
      -- Braille numbers its dots down the left column, then down the right
      dots := dots ||| (1 <<< (3 * col + row))
  return .ofNat (0x2800 + dots)

/-- Represents a `Needs` as a string of the form e.g. `│⠇│⠑│⠁│⠝│`, where each braille cell
represents the set of `NeedsKind`s expressed by a single "column" of the `Needs` (i.e. at a given
index). The left column of each Braille cell are non-meta needs, and the right column holds meta
needs; the top row holds public needs, the middle private, and the bottom private-of-private.

By default, shows dividers (`│`) between each braille cell; `dividers := false` omits dividers.

By default this shows only as many cells as necessary, or a single empty cell for an empty `Needs`.
Instead, `univSize? : Option Nat` can be provided to set the total number of indices, and will
either truncate (even if higher indices are set) or pad with empty cells as appropriate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3fcfc93aaa59c33af79baf3bfba71d898e082b29afffaccadec915bd59a43827.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3fcfc93aaa59c33af79baf3bfba71d898e082b29afffaccadec915bd59a43827.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e319843ad1210998e75e03afc81cdd2231b2efd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
