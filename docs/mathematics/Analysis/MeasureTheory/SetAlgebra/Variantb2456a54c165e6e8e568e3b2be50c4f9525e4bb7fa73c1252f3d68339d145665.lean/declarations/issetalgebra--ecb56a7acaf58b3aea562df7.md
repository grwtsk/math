# IsSetAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f12b00bcf0d485f2a369a00aa4516d7d66bedfeaef836d85b47e5483fa36d62c",
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
  "slug": "issetalgebra--ecb56a7acaf58b3aea562df7",
  "source": {
    "blob": "608224c0d4d0b73137c0cc91b2dc97f5ac357c4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 59,
    "path": "GRWTSK/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecb56a7acaf58b3aea562df757e818c8fbc2b12d6b6b4d341464ebee7b2a6a8a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f12b00bcf0d485f2a369a00aa4516d7d66bedfeaef836d85b47e5483fa36d62c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–66.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `608224c0d4d0b73137c0cc91b2dc97f5ac357c4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
