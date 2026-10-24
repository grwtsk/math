# AddContent.onIoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64cda9c3ae1b75e6f353ab51f7d56a267cc3329a8b887755ac560a3eb83903fa",
  "kind": "def",
  "lexical_name": "AddContent.onIoc",
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
  "slug": "addcontent-onioc--8710e6e9296b7ecafaeee403",
  "source": {
    "blob": "36511f3c1ee578146fd740b5241d08316d783442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 394,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant0345798209e37802b387be6c7ff051914c1924e165450e101692fe555f39772f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8710e6e9296b7ecafaeee403baa2a9ed460ef326e3b961931747be29588f3ded",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AddContent/Variant0345798209e37802b387be6c7ff051914c1924e165450e101692fe555f39772f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64cda9c3ae1b75e6f353ab51f7d56a267cc3329a8b887755ac560a3eb83903fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def AddContent.onIoc (f : α → G) :
    AddContent G {s : Set α | ∃ u v, u ≤ v ∧ s = Set.Ioc u v} where
  toFun := AddContent.onIocAux f
  empty' := AddContent.onIocAux_empty f
  sUnion' := by
    /- Consider a finite union of open-closed intervals whose union is again an open-closed
    interval `(u, v]`. We have to show that the sum of `f b - f a` over the intervals gives
    `f v - f u`. Informally, `(u, v]` is an ordered
    union `(a₀, a₁] ∪ (a₁, a₂] ∪ ... ∪ (a_{n-1}, aₙ]` and there is a telescoping sum.
    For the formal argument, we argue by induction on the number of intervals, and remove the
    right-most one (i.e., the one that contains `v`) to reduce to one interval less. Denoting
    this right-most interval by `(u', v]`, then the union of the other intervals
    is exactly `(u, u']`. From this and the induction assumption, the conclusion follows. -/
    intro I hI h'I h''I
    induction hn : Finset.card I generalizing I with
    | zero =>
      have : I = ∅ := by grind
      simp [this, onIocAux_empty f]
    | succ n ih =>
      rcases h''I with ⟨u, v, huv, h'uv⟩
      -- If the interval `(u, v]` is empty, i.e., `u = v`, then the result is easy.
      rcases huv.eq_or_lt with rfl | huv
      · have : onIocAux f (Set.Ioc u u) = ∑ u ∈ I, 0 := by simp [onIocAux_empty f]
        rw [h'uv, this]
        apply Finset.sum_congr rfl fun i hi ↦ ?_
        have : i = ∅ := by grind [sUnion_eq_empty]
        grind [onIocAux_empty]
      -- otherwise, `v` is in `(u, v]`, therefore it belongs to some interval `(u', v']`
      -- featuring in the union.
      have : v ∈ ⋃₀ ↑I := by simp [h'uv, huv]
      obtain ⟨t, tI, ht⟩ : ∃ t ∈ I, v ∈ t := by simpa using this
      rcases hI tI with ⟨u', v', hu'v', rfl⟩
      -- we have `u ≤ u'` and `v' = v` since `(u', v']` is part of the union, and therefore
      -- contained in `(u, v]`.
      have ⟨_, uu'⟩ : v' ≤ v ∧ u ≤ u' := (Ioc_subset_Ioc_iff (by grind)).1 (by grind)
      obtain rfl : v = v' := by grind
      rw [h'uv, onIocAux_apply huv.le]
      -- let us remove the right-most interval `(u', v]` from the union, and let `I'` be the
      -- remaining set of intervals.
      let I' := I.erase (Set.Ioc u' v)
      have I'I : I' ⊆ I := erase_subset (Set.Ioc u' v) I
      have I_eq_insert : I = insert (Set.Ioc u' v) I' := by simp [I', tI]
      -- the intervals in `I'` cover exactly `(u, u']`.
      have UI' : ⋃₀ ↑I' = Ioc u u' := by
        have : (Ioc u' v ∪ ⋃₀ ↑I') \ Ioc u' v = ⋃₀ ↑I' := by
          refine Disjoint.sup_sdiff_cancel_left ?_
          simp only [coe_erase, disjoint_sUnion_right, Set.mem_sdiff, mem_singleton_iff, and_imp,
            I']
          intro u hu hu'
          exact (h'I hu tI hu').symm
        simp only [I_eq_insert, coe_insert, sUnion_insert] at h'uv
        grind
      -- by the inductive assumption, the sum over `I'` is exactly `f u' - f u`.
      have IH : onIocAux f (⋃₀ ↑I') = ∑ u ∈ I', onIocAux f u :=
        ih _ (Subset.trans I'I hI) (h'I.subset I'I) (by grind) (by grind)
      -- the conclusion follows.
      rw [I_eq_insert, sum_insert, ← IH, UI', onIocAux_apply hu'v', onIocAux_apply uu']
      · simp
      · simp [I']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AddContent/Variant0345798209e37802b387be6c7ff051914c1924e165450e101692fe555f39772f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant0345798209e37802b387be6c7ff051914c1924e165450e101692fe555f39772f.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36511f3c1ee578146fd740b5241d08316d783442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
