# leftParameter_val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3aab4da0-ece3-c226-c609-95508e9a415c",
  "kind": "theorem",
  "lexical_name": "leftParameter_val",
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
  "slug": "leftparameter-val--781eb2055374e63baf26c56d",
  "source": {
    "blob": "641120279d49dbefae1c893ca239537f35ba0fea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 594,
    "line": 590,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variantb4c2d1799d3d0b3b7de6c6dfb1ec8fb6955a6d5a7e81a4eece78b2cf8e3dc02c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:781eb2055374e63baf26c56d0380583401ca7dddca7e71d2aa0e51e1f2c488cd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variantb4c2d1799d3d0b3b7de6c6dfb1ec8fb6955a6d5a7e81a4eece78b2cf8e3dc02c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3aab4da0-ece3-c226-c609-95508e9a415c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 590–594.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem leftParameter_val (tau t : UnitInterval) :
    (leftParameter tau t).1 = tau.1 * t.1 :=
  rfl

@[surface_novel, simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variantb4c2d1799d3d0b3b7de6c6dfb1ec8fb6955a6d5a7e81a4eece78b2cf8e3dc02c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variantb4c2d1799d3d0b3b7de6c6dfb1ec8fb6955a6d5a7e81a4eece78b2cf8e3dc02c.lean#L590).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `641120279d49dbefae1c893ca239537f35ba0fea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
