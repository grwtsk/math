# Coloring.sumLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cacbd1e1849f9633882d0a5f0c0643ca89049f84b339323411393cc5df0d83c8",
  "kind": "def",
  "lexical_name": "Coloring.sumLeft",
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
  "slug": "coloring-sumleft--56a83e51d9a6d65973734e4c",
  "source": {
    "blob": "9ccfc2b20da2f28ff6d3e9a28d350cc3c4fc1353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 217,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantd61b533e47ba5e8e48fb9e41be3a74822af56e22940a53f1ac74f1b7906ce39d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56a83e51d9a6d65973734e4c53dc6b8658db0893dc4237e4880ded88cb0a12be",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantd61b533e47ba5e8e48fb9e41be3a74822af56e22940a53f1ac74f1b7906ce39d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cacbd1e1849f9633882d0a5f0c0643ca89049f84b339323411393cc5df0d83c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Coloring.sumLeft (c : (G ⊕g H).Coloring γ) : G.Coloring γ := c.comp Embedding.sumInl.toHom

/-- Get coloring of `H` from coloring of `G ⊕g H` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantd61b533e47ba5e8e48fb9e41be3a74822af56e22940a53f1ac74f1b7906ce39d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variantd61b533e47ba5e8e48fb9e41be3a74822af56e22940a53f1ac74f1b7906ce39d.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ccfc2b20da2f28ff6d3e9a28d350cc3c4fc1353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
