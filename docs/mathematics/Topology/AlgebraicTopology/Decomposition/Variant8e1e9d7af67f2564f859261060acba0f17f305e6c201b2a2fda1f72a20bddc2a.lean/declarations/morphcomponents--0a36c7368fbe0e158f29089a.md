# MorphComponents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:669fe3a2294f3b69da3e7050aa439bc765cf6988d9bdbae736d40b73f0621751",
  "kind": "structure",
  "lexical_name": "MorphComponents",
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
  "slug": "morphcomponents--0a36c7368fbe0e158f29089a",
  "source": {
    "blob": "a173aea1e4df7d23b5997cb51770569038f88602",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 100,
    "path": "GRWTSK/Topology/AlgebraicTopology/Decomposition/Variant8e1e9d7af67f2564f859261060acba0f17f305e6c201b2a2fda1f72a20bddc2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a36c7368fbe0e158f29089a56e8acd602d98c1cd7fb6fb323a89e33afa6a861",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Decomposition/Variant8e1e9d7af67f2564f859261060acba0f17f305e6c201b2a2fda1f72a20bddc2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:669fe3a2294f3b69da3e7050aa439bc765cf6988d9bdbae736d40b73f0621751`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MorphComponents (n : ℕ) (Z : C) where
  a : X _⦋n + 1⦌ ⟶ Z
  b : Fin (n + 1) → (X _⦋n⦌ ⟶ Z)

namespace MorphComponents

variable {X} {n : ℕ} {Z Z' : C} (f : MorphComponents X n Z) (g : X' ⟶ X) (h : Z ⟶ Z')

/-- The morphism `X _⦋n+1⦌ ⟶ Z` associated to `f : MorphComponents X n Z`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Decomposition/Variant8e1e9d7af67f2564f859261060acba0f17f305e6c201b2a2fda1f72a20bddc2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Decomposition/Variant8e1e9d7af67f2564f859261060acba0f17f305e6c201b2a2fda1f72a20bddc2a.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a173aea1e4df7d23b5997cb51770569038f88602` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
