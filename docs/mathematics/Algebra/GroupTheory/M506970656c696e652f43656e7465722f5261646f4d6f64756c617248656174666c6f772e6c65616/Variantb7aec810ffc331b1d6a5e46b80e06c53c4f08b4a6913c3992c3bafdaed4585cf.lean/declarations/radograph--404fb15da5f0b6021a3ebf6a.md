# RadoGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f492263f2cff9e1e330ae44a4ec4a5cfff3cdbe475c2545eb630446f7a75276",
  "kind": "structure",
  "lexical_name": "RadoGraph",
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
  "slug": "radograph--404fb15da5f0b6021a3ebf6a",
  "source": {
    "blob": "b7f59ed55948fcdef5e4037fa96f5f4a362e3adc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 356,
    "path": "GRWTSK/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variantb7aec810ffc331b1d6a5e46b80e06c53c4f08b4a6913c3992c3bafdaed4585cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:404fb15da5f0b6021a3ebf6aedeb108804538f1ec3af4947b2dc42261c1d31b6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variantb7aec810ffc331b1d6a5e46b80e06c53c4f08b4a6913c3992c3bafdaed4585cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f492263f2cff9e1e330ae44a4ec4a5cfff3cdbe475c2545eb630446f7a75276`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RadoGraph (Omega : Type u) where
  edge : Omega -> Omega -> Prop
  symmetric : Prop
  irreflexive : Prop
  extensionProperty : Prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variantb7aec810ffc331b1d6a5e46b80e06c53c4f08b4a6913c3992c3bafdaed4585cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variantb7aec810ffc331b1d6a5e46b80e06c53c4f08b4a6913c3992c3bafdaed4585cf.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7f59ed55948fcdef5e4037fa96f5f4a362e3adc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
