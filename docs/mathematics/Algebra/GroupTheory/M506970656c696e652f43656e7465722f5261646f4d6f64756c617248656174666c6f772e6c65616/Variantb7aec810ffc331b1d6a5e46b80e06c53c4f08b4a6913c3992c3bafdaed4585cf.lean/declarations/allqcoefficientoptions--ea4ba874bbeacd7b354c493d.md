# allQCoefficientOptions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:793008446bc6486619cd725e598b733d17c3596bee0f78f68cec4a53bbe425d5",
  "kind": "def",
  "lexical_name": "allQCoefficientOptions",
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
  "slug": "allqcoefficientoptions--ea4ba874bbeacd7b354c493d",
  "source": {
    "blob": "b7f59ed55948fcdef5e4037fa96f5f4a362e3adc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 298,
    "path": "GRWTSK/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variantb7aec810ffc331b1d6a5e46b80e06c53c4f08b4a6913c3992c3bafdaed4585cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea4ba874bbeacd7b354c493d828629681932a752909ba40db544e62b0d8275d4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variantb7aec810ffc331b1d6a5e46b80e06c53c4f08b4a6913c3992c3bafdaed4585cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:793008446bc6486619cd725e598b733d17c3596bee0f78f68cec4a53bbe425d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def allQCoefficientOptions : List QCoefficientOption :=
  [ QCoefficientOption.structural
  , QCoefficientOption.radoAdjacencyBits
  , QCoefficientOption.treeDepth
  , QCoefficientOption.heatSignature
  , QCoefficientOption.residueSignature
  , QCoefficientOption.spectralSignature
  , QCoefficientOption.ellipticTrace
  , QCoefficientOption.hybrid
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variantb7aec810ffc331b1d6a5e46b80e06c53c4f08b4a6913c3992c3bafdaed4585cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variantb7aec810ffc331b1d6a5e46b80e06c53c4f08b4a6913c3992c3bafdaed4585cf.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7f59ed55948fcdef5e4037fa96f5f4a362e3adc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
