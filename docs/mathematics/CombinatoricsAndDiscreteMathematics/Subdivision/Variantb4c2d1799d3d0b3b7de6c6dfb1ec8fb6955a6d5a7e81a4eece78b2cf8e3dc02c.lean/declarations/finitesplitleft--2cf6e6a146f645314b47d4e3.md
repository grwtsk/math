# finiteSplitLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7831503bae9f5c9b8c5f2eac5e09030823e58af9b2c8c761c1645a3fa761ec3e",
  "kind": "def",
  "lexical_name": "finiteSplitLeft",
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
  "slug": "finitesplitleft--2cf6e6a146f645314b47d4e3",
  "source": {
    "blob": "641120279d49dbefae1c893ca239537f35ba0fea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 254,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variantb4c2d1799d3d0b3b7de6c6dfb1ec8fb6955a6d5a7e81a4eece78b2cf8e3dc02c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2cf6e6a146f645314b47d4e3e74f027ffd8ad0b317a374032fe30f3ded61da08",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variantb4c2d1799d3d0b3b7de6c6dfb1ec8fb6955a6d5a7e81a4eece78b2cf8e3dc02c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7831503bae9f5c9b8c5f2eac5e09030823e58af9b2c8c761c1645a3fa761ec3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteSplitLeft (n : ℕ) (p : FiniteControl n M) (u : ℝ) :
    FiniteControl n M :=
  fun i => splitLeft (extendFinite n p) u i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variantb4c2d1799d3d0b3b7de6c6dfb1ec8fb6955a6d5a7e81a4eece78b2cf8e3dc02c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variantb4c2d1799d3d0b3b7de6c6dfb1ec8fb6955a6d5a7e81a4eece78b2cf8e3dc02c.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `641120279d49dbefae1c893ca239537f35ba0fea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
