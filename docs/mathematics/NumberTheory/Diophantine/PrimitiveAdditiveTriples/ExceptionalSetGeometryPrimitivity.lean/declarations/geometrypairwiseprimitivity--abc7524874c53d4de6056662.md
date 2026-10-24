# GeometryPairwisePrimitivity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:525ecf9b1b77dd1a560fe476e7b83821528c5f212b3b71e25e93a252c4f2840d",
  "kind": "structure",
  "lexical_name": "GeometryPairwisePrimitivity",
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
  "slug": "geometrypairwiseprimitivity--abc7524874c53d4de6056662",
  "source": {
    "blob": "e5ff8583109ed0814dd13368901e9eee6f3f8c51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 80,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abc7524874c53d4de60566627b9295fc00ae01d0c6ad1676542f7c8e9281704c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:525ecf9b1b77dd1a560fe476e7b83821528c5f212b3b71e25e93a252c4f2840d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GeometryPairwisePrimitivity {d : ℕ}
    (p : Parameters d) (q : Point d)
    (I I' I'' : Finset (Fin d)) : Prop where
  coefficients_ab :
    Nat.Coprime (geometryCoefficientA p I q)
      (geometryCoefficientB p I' q)
  coefficients_ac :
    Nat.Coprime (geometryCoefficientA p I q)
      (geometryCoefficientC p I'' q)
  coefficients_bc :
    Nat.Coprime (geometryCoefficientB p I' q)
      (geometryCoefficientC p I'' q)
  variables_ab :
    Nat.Coprime (geometryVariableA I q)
      (geometryVariableB I' q)
  variables_ac :
    Nat.Coprime (geometryVariableA I q)
      (geometryVariableC I'' q)
  variables_bc :
    Nat.Coprime (geometryVariableB I' q)
      (geometryVariableC I'' q)

/-- Each selected or complementary factor divides its reconstructed total, so
pairwise coprimality of the totals descends to all coefficient and variable
pairs occurring on different sides of the inherited abc equation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5ff8583109ed0814dd13368901e9eee6f3f8c51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
