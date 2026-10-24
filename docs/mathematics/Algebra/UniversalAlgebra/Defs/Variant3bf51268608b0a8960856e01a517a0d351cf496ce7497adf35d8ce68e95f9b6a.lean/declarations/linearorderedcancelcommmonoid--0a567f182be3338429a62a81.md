# LinearOrderedCancelCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:473d2b2f943270441fba0d69f268cefb2373e1b591e32f97b222b661c1cc14d0",
  "kind": "structure",
  "lexical_name": "LinearOrderedCancelCommMonoid",
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
  "slug": "linearorderedcancelcommmonoid--0a567f182be3338429a62a81",
  "source": {
    "blob": "0e76df72ddf85eded6632af981be37826277815e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 165,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a567f182be3338429a62a8168b5ef3a64045ac93d9e935511c13c4bc1c8f179",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:473d2b2f943270441fba0d69f268cefb2373e1b591e32f97b222b661c1cc14d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LinearOrderedCancelCommMonoid (α : Type*) extends OrderedCancelCommMonoid α,
    LinearOrderedCommMonoid α

attribute [nolint docBlame]
  LinearOrderedAddCommMonoid.toLinearOrder
  LinearOrderedCancelCommMonoid.toLinearOrderedCommMonoid
  LinearOrderedCancelAddCommMonoid.toLinearOrderedAddCommMonoid
  LinearOrderedCommMonoid.toLinearOrder

variable [CommMonoid α] [LinearOrder α] [IsOrderedMonoid α] {a : α}

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e76df72ddf85eded6632af981be37826277815e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
