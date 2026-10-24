# prototypeVertexModel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c2141efece922ba832de38bd9d6533fd4d073e6927d8bc899e6adf9b6f1f087",
  "kind": "def",
  "lexical_name": "prototypeVertexModel",
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
  "slug": "prototypevertexmodel--13f876b29a426f0785d78c70",
  "source": {
    "blob": "daaff3500e4b68fdd740ce9404c7e98007d83368",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Translations/Variantcb92498c0cdccd312eacf1f818fe21d6866cff6c983e37d3fcd932456b976b68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13f876b29a426f0785d78c7042a38d1abbbba339eb8cd6cfaeb4fc6fc3024fcd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Translations/Variantcb92498c0cdccd312eacf1f818fe21d6866cff6c983e37d3fcd932456b976b68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c2141efece922ba832de38bd9d6533fd4d073e6927d8bc899e6adf9b6f1f087`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prototypeVertexModel : PrototypeVertex → PrototypeModel
  | .P => .permutationDynamics
  | .B => .booleanQuantizedMatrices
  | .G => .hammingGroupActions
  | .S => .strictSimplicialFabric
  | .H => .finiteEditHomology

/-- Relation class intentionally differs from edge to edge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Translations/Variantcb92498c0cdccd312eacf1f818fe21d6866cff6c983e37d3fcd932456b976b68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Translations/Variantcb92498c0cdccd312eacf1f818fe21d6866cff6c983e37d3fcd932456b976b68.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daaff3500e4b68fdd740ce9404c7e98007d83368` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
