# map_atTop_eq_of_gc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edd233e0-8530-9e4b-6e5d-b442df8e2f2b",
  "kind": "theorem",
  "lexical_name": "map_atTop_eq_of_gc",
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
  "slug": "map-attop-eq-of-gc--b3d9dc8601371a8c21edb47d",
  "source": {
    "blob": "1ed1b80d083d0d420812a0efa6b4785df8a1fcf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 297,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant049ddfbb934dcd20266f77391dc1848a16a6b6d7d5c159bdffba2014464f2d06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3d9dc8601371a8c21edb47d121cdb422d52726646e4aea74371b08da4e9de26",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant049ddfbb934dcd20266f77391dc1848a16a6b6d7d5c159bdffba2014464f2d06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edd233e0-8530-9e4b-6e5d-b442df8e2f2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_atTop_eq_of_gc
    [Preorder α] [IsDirected α (· ≤ ·)] [PartialOrder β] [IsDirected β (· ≤ ·)]
    {f : α → β} (g : β → α) (b : β) (hf : Monotone f)
    (gc : ∀ a, ∀ c ≥ b, f a ≤ c ↔ a ≤ g c) (hgi : ∀ c ≥ b, c ≤ f (g c)) :
    map f atTop = atTop :=
  map_atTop_eq_of_gc_preorder hf b fun c hc ↦
    ⟨g c, le_antisymm ((gc _ _ hc).2 le_rfl) (hgi c hc), (gc · c hc)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant049ddfbb934dcd20266f77391dc1848a16a6b6d7d5c159bdffba2014464f2d06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant049ddfbb934dcd20266f77391dc1848a16a6b6d7d5c159bdffba2014464f2d06.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ed1b80d083d0d420812a0efa6b4785df8a1fcf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
