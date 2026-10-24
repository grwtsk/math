# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c118e4d633e7f2576bfff31cbbed53fe61be2e2a11caa874f5a9792e5600a65a",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--52adbb80eb08679128c95a8b",
  "source": {
    "blob": "e97ef366feb4b5cad5c0a9f000000a248c0102ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 28,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Prod/Variantc98aa68d303753806f010d36e64559aabf2f2124681f5619ecfdab5fcbe10612.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52adbb80eb08679128c95a8b0798b80eb1c03119f4d2c5bb11dbd7f7631b30d6",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Prod/Variantc98aa68d303753806f010d36e64559aabf2f2124681f5619ecfdab5fcbe10612.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c118e4d633e7f2576bfff31cbbed53fe61be2e2a11caa874f5a9792e5600a65a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [OrderedCommMonoid α] [OrderedCommMonoid β] : OrderedCommMonoid (α × β) where
  mul_le_mul_left _ _ h _ := ⟨mul_le_mul_left' h.1 _, mul_le_mul_left' h.2 _⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Prod/Variantc98aa68d303753806f010d36e64559aabf2f2124681f5619ecfdab5fcbe10612.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Prod/Variantc98aa68d303753806f010d36e64559aabf2f2124681f5619ecfdab5fcbe10612.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e97ef366feb4b5cad5c0a9f000000a248c0102ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
