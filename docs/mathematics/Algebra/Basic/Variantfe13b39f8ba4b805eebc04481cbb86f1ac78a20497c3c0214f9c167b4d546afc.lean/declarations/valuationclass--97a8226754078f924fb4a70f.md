# ValuationClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f08a06848dae1c95cc1f5c8981790c552b82ee4725a0e43245b58d50aa7fcdd1",
  "kind": "class",
  "lexical_name": "ValuationClass",
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
  "slug": "valuationclass--97a8226754078f924fb4a70f",
  "source": {
    "blob": "426380d048576f26cd51f627dc4dce9473acf0f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 85,
    "path": "GRWTSK/Algebra/Basic/Variantfe13b39f8ba4b805eebc04481cbb86f1ac78a20497c3c0214f9c167b4d546afc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97a8226754078f924fb4a70f7650afe61748e255b8ad23413192aa470cdfcffd",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantfe13b39f8ba4b805eebc04481cbb86f1ac78a20497c3c0214f9c167b4d546afc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f08a06848dae1c95cc1f5c8981790c552b82ee4725a0e43245b58d50aa7fcdd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ValuationClass (F) (R Γ₀ : outParam (Type*)) [LinearOrderedCommMonoidWithZero Γ₀] [Ring R]
  extends MonoidWithZeroHomClass F R Γ₀ where
  /-- The valuation of a a sum is less that the sum of the valuations -/
  map_add_le_max (f : F) (x y : R) : f (x + y) ≤ max (f x) (f y)
#align valuation_class ValuationClass

export ValuationClass (map_add_le_max)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantfe13b39f8ba4b805eebc04481cbb86f1ac78a20497c3c0214f9c167b4d546afc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantfe13b39f8ba4b805eebc04481cbb86f1ac78a20497c3c0214f9c167b4d546afc.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `426380d048576f26cd51f627dc4dce9473acf0f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
