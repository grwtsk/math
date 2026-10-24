# boxProdLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4d903a7b88916b1beef0cfcc381974f86e1c229e46c0f6d25b30101dc87c887",
  "kind": "def",
  "lexical_name": "boxProdLeft",
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
  "slug": "boxprodleft--05af27ed7b501d0be55d98e8",
  "source": {
    "blob": "2c6fc7955102b936ef273b3a1421882b93463774",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 82,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05af27ed7b501d0be55d98e8d4e5f0ae2384dcbb3eb2cf067b8d37fa05a57805",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4d903a7b88916b1beef0cfcc381974f86e1c229e46c0f6d25b30101dc87c887`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boxProdLeft (b : β) : G ↪g G □ H where
  toFun a := (a, b)
  inj' _ _ := congr_arg Prod.fst
  map_rel_iff' {_ _} := boxProd_adj_left

/-- The embedding of `H` into `G □ H` given by `a`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c6fc7955102b936ef273b3a1421882b93463774` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
