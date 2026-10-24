# IsSetAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:834c7d580075ae2db6891492bef611369b99d82a2bbafa77d8c4130f2894069e",
  "kind": "structure",
  "lexical_name": "IsSetAlgebra",
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
  "slug": "issetalgebra--c2d72b1c93a39dc23cfa7fbb",
  "source": {
    "blob": "0ff0ada7f3f9e7b6cb3b58a13002e288c1343d84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 55,
    "path": "GRWTSK/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2d72b1c93a39dc23cfa7fbbef4ec903d01ceb045a260ffd1befb9ebf7bdb8c0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:834c7d580075ae2db6891492bef611369b99d82a2bbafa77d8c4130f2894069e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsSetAlgebra (𝒜 : Set (Set α)) : Prop where
  empty_mem : ∅ ∈ 𝒜
  compl_mem : ∀ ⦃s⦄, s ∈ 𝒜 → sᶜ ∈ 𝒜
  union_mem : ∀ ⦃s t⦄, s ∈ 𝒜 → t ∈ 𝒜 → s ∪ t ∈ 𝒜

namespace IsSetAlgebra

/-- An algebra of sets contains the whole set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ff0ada7f3f9e7b6cb3b58a13002e288c1343d84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
