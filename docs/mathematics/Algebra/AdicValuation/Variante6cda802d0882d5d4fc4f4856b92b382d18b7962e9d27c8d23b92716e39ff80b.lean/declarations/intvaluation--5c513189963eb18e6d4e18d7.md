# intValuation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1d67ab7cffba8be73bcb8486dccba000c3c7cc2a5f91d9fb66610f1f7b54dbb",
  "kind": "def",
  "lexical_name": "intValuation",
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
  "slug": "intvaluation--5c513189963eb18e6d4e18d7",
  "source": {
    "blob": "832efdce7053f304164f3c839e771c8d8626427a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 166,
    "path": "GRWTSK/Algebra/AdicValuation/Variante6cda802d0882d5d4fc4f4856b92b382d18b7962e9d27c8d23b92716e39ff80b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c513189963eb18e6d4e18d75790636d2a4e8227d2f570272e8cd3498d6c4729",
  "verification": {
    "reference": "docs/verification/Algebra/AdicValuation/Variante6cda802d0882d5d4fc4f4856b92b382d18b7962e9d27c8d23b92716e39ff80b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1d67ab7cffba8be73bcb8486dccba000c3c7cc2a5f91d9fb66610f1f7b54dbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def intValuation : Valuation R ℤₘ₀ where
  toFun := v.intValuationDef
  map_zero' := intValuation.map_zero' v
  map_one' := intValuation.map_one' v
  map_mul' := intValuation.map_mul' v
  map_add_le_max' := intValuation.map_add_le_max' v

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AdicValuation/Variante6cda802d0882d5d4fc4f4856b92b382d18b7962e9d27c8d23b92716e39ff80b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AdicValuation/Variante6cda802d0882d5d4fc4f4856b92b382d18b7962e9d27c8d23b92716e39ff80b.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `832efdce7053f304164f3c839e771c8d8626427a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
