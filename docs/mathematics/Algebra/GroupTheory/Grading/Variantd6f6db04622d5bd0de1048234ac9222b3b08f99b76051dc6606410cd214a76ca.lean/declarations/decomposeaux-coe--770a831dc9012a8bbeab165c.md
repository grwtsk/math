# decomposeAux_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21afdc1e-296d-d9f8-e342-0ab1d405f928",
  "kind": "theorem",
  "lexical_name": "decomposeAux_coe",
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
  "slug": "decomposeaux-coe--770a831dc9012a8bbeab165c",
  "source": {
    "blob": "63bd96a03ca8ff0956814d451e5654bd03a9ed58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 165,
    "path": "GRWTSK/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:770a831dc9012a8bbeab165cdc635d57bc2a2fc54f9dfb7231f1bd27047b1c9b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21afdc1e-296d-d9f8-e342-0ab1d405f928`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decomposeAux_coe {i : ι} (x : gradeBy R f i) :
    decomposeAux f ↑x = DirectSum.of (fun i => gradeBy R f i) i x := by
  obtain ⟨x, hx⟩ := x
  revert hx
  refine' Finsupp.induction x _ _
  · intro hx
    symm
    exact AddMonoidHom.map_zero _
  · intro m b y hmy hb ih hmby
    have : Disjoint (Finsupp.single m b).support y.support := by
      simpa only [Finsupp.support_single_ne_zero _ hb, Finset.disjoint_singleton_left]
    rw [mem_gradeBy_iff, Finsupp.support_add_eq this, Finset.coe_union, Set.union_subset_iff]
      at hmby
    cases' hmby with h1 h2
    have : f m = i := by
      rwa [Finsupp.support_single_ne_zero _ hb, Finset.coe_singleton, Set.singleton_subset_iff]
        at h1
    subst this
    simp only [AlgHom.map_add, Submodule.coe_mk, decomposeAux_single f m]
    let ih' := ih h2
    dsimp at ih'
    rw [ih', ← AddMonoidHom.map_add]
    apply DirectSum.of_eq_of_gradedMonoid_eq
    congr 2
#align add_monoid_algebra.decompose_aux_coe AddMonoidAlgebra.decomposeAux_coe

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63bd96a03ca8ff0956814d451e5654bd03a9ed58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
