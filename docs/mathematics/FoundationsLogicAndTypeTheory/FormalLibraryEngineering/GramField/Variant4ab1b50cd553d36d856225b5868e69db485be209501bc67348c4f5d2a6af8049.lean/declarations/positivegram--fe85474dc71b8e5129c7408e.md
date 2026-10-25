# PositiveGram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94c62a044c07b0c13dff707d035bb9978d987ef12ff8e70e25702a2b2dedd9a2",
  "kind": "structure",
  "lexical_name": "PositiveGram",
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
  "slug": "positivegram--fe85474dc71b8e5129c7408e",
  "source": {
    "blob": "9b7d2d9d1962d976ced21ee487b72e1077e80bb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe85474dc71b8e5129c7408e9f8abae42f19519321468050b85069232efb8b69",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94c62a044c07b0c13dff707d035bb9978d987ef12ff8e70e25702a2b2dedd9a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PositiveGram (V : Type u)
    [AddCommGroup V] [Module ℝ V] where
  form : V →ₗ[ℝ] V →ₗ[ℝ] ℝ
  symmetric : ∀ left right, form left right = form right left
  positive : ∀ vector, vector ≠ 0 → 0 < form vector vector
  certificate : ObjectAddress

namespace PositiveGram

variable
    {V : Type u} [AddCommGroup V] [Module ℝ V]
    (gram : PositiveGram V)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GramField/Variant4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b7d2d9d1962d976ced21ee487b72e1077e80bb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
