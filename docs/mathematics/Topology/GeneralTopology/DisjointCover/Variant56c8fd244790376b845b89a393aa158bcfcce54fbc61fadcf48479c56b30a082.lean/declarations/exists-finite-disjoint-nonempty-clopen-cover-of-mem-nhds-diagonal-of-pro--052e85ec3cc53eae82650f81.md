# exists_finite_disjoint_nonempty_clopen_cover_of_mem_nhds_diagonal_of_profinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c377084-ef8f-9232-ee7b-2623ceeed981",
  "kind": "lemma",
  "lexical_name": "exists_finite_disjoint_nonempty_clopen_cover_of_mem_nhds_diagonal_of_profinite",
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
  "slug": "exists-finite-disjoint-nonempty-clopen-cover-of-mem-nhds-diagonal-of-pro--052e85ec3cc53eae82650f81",
  "source": {
    "blob": "a0249b1f29e80cd35378db4149d89b86606dac3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 109,
    "path": "GRWTSK/Topology/GeneralTopology/DisjointCover/Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:052e85ec3cc53eae82650f814430f33d858a471f1dd44709fdb3d03a8be95dba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DisjointCover/Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c377084-ef8f-9232-ee7b-2623ceeed981`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_finite_disjoint_nonempty_clopen_cover_of_mem_nhds_diagonal_of_profinite
    (hS : S ∈ nhdsSet (diagonal X)) :
    ∃ (n : ℕ) (D : Fin n → Clopens X), (∀ i, D i ≠ ⊥) ∧ (∀ i, ∀ y ∈ D i, ∀ z ∈ D i, (y, z) ∈ S)
    ∧ (univ : Set X) ⊆ ⋃ i, D i ∧ Pairwise (Disjoint on D) := by
  obtain ⟨t, U, hUc, hUS⟩ := exists_finite_open_cover_prod_subset_of_mem_nhds_diagonal_of_compact hS
  -- Now refine it to a disjoint covering.
  obtain ⟨n, W, hW₁, hW₂, hW₃⟩ := hUc.exists_finite_nonempty_disjoint_clopen_cover
  refine ⟨n, W, fun j ↦ (hW₁ j).1, fun j y hy z hz ↦ ?_, hW₂, hW₃⟩
  exact match (hW₁ j).2 with | ⟨i, hi⟩ => hUS i ⟨hi hy, hi hz⟩

end TopologicalSpace

namespace ContinuousMap

variable {X V : Type*} [TopologicalSpace X] [TopologicalSpace V] [TotallyDisconnectedSpace X]
  [T2Space X] [CompactSpace X] {S : Set (V × V)} (f : C(X, V))

/--
For any continuous function `f : X → V`, with `X` profinite, and `S` a neighbourhood of the
diagonal in `V × V`, there exists a finite cover of `X` by pairwise-disjoint nonempty clopens, on
each of which `f` varies within `S`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DisjointCover/Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DisjointCover/Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0249b1f29e80cd35378db4149d89b86606dac3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
