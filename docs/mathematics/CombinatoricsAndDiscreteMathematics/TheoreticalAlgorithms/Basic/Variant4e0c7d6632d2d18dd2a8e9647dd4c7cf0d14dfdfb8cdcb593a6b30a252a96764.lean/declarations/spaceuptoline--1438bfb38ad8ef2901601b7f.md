# spaceUptoLine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88ae79fd560e7fe28000d280cdba68e7c5bf733d8230a0200e5d5e889605afee",
  "kind": "def",
  "lexical_name": "spaceUptoLine",
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
  "slug": "spaceuptoline--1438bfb38ad8ef2901601b7f",
  "source": {
    "blob": "310cea7dfdad9f9bd709caf781450a2e16770c94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 162,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4e0c7d6632d2d18dd2a8e9647dd4c7cf0d14dfdfb8cdcb593a6b30a252a96764.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1438bfb38ad8ef2901601b7f9a6df751e8bb61d572188d1a8fa856825086d820",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4e0c7d6632d2d18dd2a8e9647dd4c7cf0d14dfdfb8cdcb593a6b30a252a96764.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88ae79fd560e7fe28000d280cdba68e7c5bf733d8230a0200e5d5e889605afee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def spaceUptoLine : Format → Bool → Int → Nat → SpaceResult
  | nil,          _,       _, _ => {}
  | line,         flatten, _, _ => if flatten then { space := 1 } else { foundLine := true }
  | align force,  flatten, m, w =>
    if flatten && !force then {}
    else if w < m then
      { space := (m - w).toNat }
    else
      { foundLine := true }
  | text s,       flatten, _, _ =>
    let p := String.Internal.posOf s '\n'
    let off := String.Internal.offsetOfPos s p
    { foundLine := p != s.rawEndPos, foundFlattenedHardLine := flatten && p != s.rawEndPos, space := off }
  | append f₁ f₂, flatten, m, w => merge w (spaceUptoLine f₁ flatten m w) (spaceUptoLine f₂ flatten m)
  | nest n f,     flatten, m, w => spaceUptoLine f flatten (m - n) w
  | group f _,    _,       m, w => spaceUptoLine f true m w
  | tag _ f,      flatten, m, w => spaceUptoLine f flatten m w

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4e0c7d6632d2d18dd2a8e9647dd4c7cf0d14dfdfb8cdcb593a6b30a252a96764.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4e0c7d6632d2d18dd2a8e9647dd4c7cf0d14dfdfb8cdcb593a6b30a252a96764.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `310cea7dfdad9f9bd709caf781450a2e16770c94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
