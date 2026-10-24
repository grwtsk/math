# range_prod_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41502994584fc64e692d2cd94c36bff7280903f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 869,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f05aeba822408507bb83ba7866a2fcba58e753dc986d0b0fffd491481c1090e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25332ff0-d09b-56c9-9aa8-3c2cbb4ad5d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae6783ff-2ddd-24f3-1b36-deff01d06bc0",
  "kind": "theorem",
  "lexical_name": "range_prod_eq",
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
  "slug": "range-prod-eq--76fb1f8ea6b3e1b0d4d38496",
  "source": {
    "blob": "41502994584fc64e692d2cd94c36bff7280903f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 918,
    "line": 869,
    "path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant8f05aeba822408507bb83ba7866a2fcba58e753dc986d0b0fffd491481c1090e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76fb1f8ea6b3e1b0d4d38496f76c07a03044349c885244bae683bb7ed5be759f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Prod/Variant8f05aeba822408507bb83ba7866a2fcba58e753dc986d0b0fffd491481c1090e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae6783ff-2ddd-24f3-1b36-deff01d06bc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 869–918.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_prod_eq {f : M →ₗ[R] M₂} {g : M →ₗ[R] M₃} (h : ker f ⊔ ker g = ⊤) :
    range (prod f g) = (range f).prod (range g) := by
  refine' le_antisymm (f.range_prod_le g) _
  simp only [SetLike.le_def, prod_apply, mem_range, SetLike.mem_coe, mem_prod, exists_imp, and_imp,
    Prod.forall, Pi.prod]
  rintro _ _ x rfl y rfl
  simp only [Prod.mk.inj_iff, ← sub_mem_ker_iff]
  have : y - x ∈ ker f ⊔ ker g := by simp only [h, mem_top]
  rcases mem_sup.1 this with ⟨x', hx', y', hy', H⟩
  refine' ⟨x' + x, _, _⟩
  · rwa [add_sub_cancel]
  · simp [← eq_sub_iff_add_eq.1 H, map_add, add_left_inj, self_eq_add_right, mem_ker.mp hy']
#align linear_map.range_prod_eq LinearMap.range_prod_eq

end LinearMap

namespace LinearMap

/-!
## Tunnels and tailings

Some preliminary work for establishing the strong rank condition for noetherian rings.

Given a morphism `f : M × N →ₗ[R] M` which is `i : Injective f`,
we can find an infinite decreasing `tunnel f i n` of copies of `M` inside `M`,
and sitting beside these, an infinite sequence of copies of `N`.

We picturesquely name these as `tailing f i n` for each individual copy of `N`,
and `tailings f i n` for the supremum of the first `n+1` copies:
they are the pieces left behind, sitting inside the tunnel.

By construction, each `tailing f i (n+1)` is disjoint from `tailings f i n`;
later, when we assume `M` is noetherian, this implies that `N` must be trivial,
and establishes the strong rank condition for any left-noetherian ring.
-/


noncomputable section Tunnel

-- (This doesn't work over a semiring: we need to use that `Submodule R M` is a modular lattice,
-- which requires cancellation.)
variable [Ring R]

variable {N : Type*} [AddCommGroup M] [Module R M] [AddCommGroup N] [Module R N]

open Function

/-- An auxiliary construction for `tunnel`.
The composition of `f`, followed by the isomorphism back to `K`,
followed by the inclusion of this submodule back into `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Prod/Variant8f05aeba822408507bb83ba7866a2fcba58e753dc986d0b0fffd491481c1090e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Prod/Variant8f05aeba822408507bb83ba7866a2fcba58e753dc986d0b0fffd491481c1090e.lean#L869).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41502994584fc64e692d2cd94c36bff7280903f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
