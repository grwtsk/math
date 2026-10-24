# typeIIProductIntervalMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:599ff00e8a55a55b6f49b912c9c0f190ae9fd9a83c0129f580525b3ce0d8aac7",
  "kind": "def",
  "lexical_name": "typeIIProductIntervalMatrix",
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
  "slug": "typeiiproductintervalmatrix--61cca669781e642e4e7f52f9",
  "source": {
    "blob": "4ab9c830a3c890c571b331ffbb9fad43c5c23578",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 180,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProductDyadicInterval/Variant309ce7abb72748c50269cf6d865f19fd1c4dbf71431376648d2f65a9fb6a7941.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61cca669781e642e4e7f52f9b7c4f9fd03dda7c8497c0f1d556467af8a90c2b0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ProductDyadicInterval/Variant309ce7abb72748c50269cf6d865f19fd1c4dbf71431376648d2f65a9fb6a7941.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:599ff00e8a55a55b6f49b912c9c0f190ae9fd9a83c0129f580525b3ce0d8aac7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def typeIIProductIntervalMatrix {N q : ℕ} {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ)
    (interval : TypeIIProductDyadicInterval N q) : Matrix Left Right ℂ :=
  fun left right ↦
    if interval.lower < leftIndex left * rightIndex right ∧
        leftIndex left * rightIndex right ≤ interval.upper then 1 else 0

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ProductDyadicInterval/Variant309ce7abb72748c50269cf6d865f19fd1c4dbf71431376648d2f65a9fb6a7941.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ProductDyadicInterval/Variant309ce7abb72748c50269cf6d865f19fd1c4dbf71431376648d2f65a9fb6a7941.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ab9c830a3c890c571b331ffbb9fad43c5c23578` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
