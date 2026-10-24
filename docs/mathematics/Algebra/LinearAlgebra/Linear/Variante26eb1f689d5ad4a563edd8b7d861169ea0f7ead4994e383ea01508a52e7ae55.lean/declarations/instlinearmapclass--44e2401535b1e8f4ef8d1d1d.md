# instLinearMapClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d62434e5fb49ad56bde51a191e4c8f8ac8f72300b1c8b3a08e31cb2ee23586a1",
  "kind": "instance",
  "lexical_name": "instLinearMapClass",
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
  "slug": "instlinearmapclass--44e2401535b1e8f4ef8d1d1d",
  "source": {
    "blob": "4b2fae72ab752283205fe21fc477051e9547fa70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 70,
    "path": "GRWTSK/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44e2401535b1e8f4ef8d1d1d5cfb3f7cf7d1a654e982a425953584c6f6a2d660",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d62434e5fb49ad56bde51a191e4c8f8ac8f72300b1c8b3a08e31cb2ee23586a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instLinearMapClass : LinearMapClass (Weight R L M) R L R where
  map_add χ := LinearWeights.map_add χ χ.genWeightSpace_ne_bot
  map_smulₛₗ χ := LinearWeights.map_smul χ χ.genWeightSpace_ne_bot

variable {R L M χ}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b2fae72ab752283205fe21fc477051e9547fa70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
