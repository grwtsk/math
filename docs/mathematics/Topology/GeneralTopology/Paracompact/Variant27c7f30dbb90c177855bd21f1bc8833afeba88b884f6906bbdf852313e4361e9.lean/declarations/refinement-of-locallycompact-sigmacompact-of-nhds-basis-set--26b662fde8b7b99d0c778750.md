# refinement_of_locallyCompact_sigmaCompact_of_nhds_basis_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "467b767e2718e1745e06725bc9c822535472a746",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4731b37c-dab2-b528-1cef-720c37032053",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e17051b0-8dbc-c87c-2110-ad7e4b24430d",
  "kind": "theorem",
  "lexical_name": "refinement_of_locallyCompact_sigmaCompact_of_nhds_basis_set",
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
  "slug": "refinement-of-locallycompact-sigmacompact-of-nhds-basis-set--26b662fde8b7b99d0c778750",
  "source": {
    "blob": "467b767e2718e1745e06725bc9c822535472a746",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 189,
    "path": "GRWTSK/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26b662fde8b7b99d0c77875054468fad9837e5ad145463ae7ae97161e605333e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e17051b0-8dbc-c87c-2110-ad7e4b24430d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem refinement_of_locallyCompact_sigmaCompact_of_nhds_basis_set [WeaklyLocallyCompactSpace X]
    [SigmaCompactSpace X] [T2Space X] {ι : X → Type u} {p : ∀ x, ι x → Prop} {B : ∀ x, ι x → Set X}
    {s : Set X} (hs : IsClosed s) (hB : ∀ x ∈ s, (𝓝 x).HasBasis (p x) (B x)) :
    ∃ (α : Type v) (c : α → X) (r : ∀ a, ι (c a)),
      (∀ a, c a ∈ s ∧ p (c a) (r a)) ∧
        (s ⊆ ⋃ a, B (c a) (r a)) ∧ LocallyFinite fun a ↦ B (c a) (r a) := by
  classical
    -- For technical reasons we prepend two empty sets to the sequence `CompactExhaustion.choice X`
    set K' : CompactExhaustion X := CompactExhaustion.choice X
    set K : CompactExhaustion X := K'.shiftr.shiftr
    set Kdiff := fun n ↦ K (n + 1) \ interior (K n)
    -- Now we restate some properties of `CompactExhaustion` for `K`/`Kdiff`
    have hKcov : ∀ x, x ∈ Kdiff (K'.find x + 1) := fun x ↦ by
      simpa only [K'.find_shiftr] using
        diff_subset_diff_right interior_subset (K'.shiftr.mem_diff_shiftr_find x)
    have Kdiffc : ∀ n, IsCompact (Kdiff n ∩ s) :=
      fun n ↦ ((K.isCompact _).diff isOpen_interior).inter_right hs
    -- Next we choose a finite covering `B (c n i) (r n i)` of each
    -- `Kdiff (n + 1) ∩ s` such that `B (c n i) (r n i) ∩ s` is disjoint with `K n`
    have : ∀ (n) (x : ↑(Kdiff (n + 1) ∩ s)), (K n)ᶜ ∈ 𝓝 (x : X) :=
      fun n x ↦ (K.isClosed n).compl_mem_nhds fun hx' ↦ x.2.1.2 <| K.subset_interior_succ _ hx'
    choose! r hrp hr using fun n (x : ↑(Kdiff (n + 1) ∩ s)) ↦ (hB x x.2.2).mem_iff.1 (this n x)
    have hxr : ∀ (n x) (hx : x ∈ Kdiff (n + 1) ∩ s), B x (r n ⟨x, hx⟩) ∈ 𝓝 x := fun n x hx ↦
      (hB x hx.2).mem_of_mem (hrp _ ⟨x, hx⟩)
    choose T hT using fun n ↦ (Kdiffc (n + 1)).elim_nhds_subcover' _ (hxr n)
    set T' : ∀ n, Set ↑(Kdiff (n + 1) ∩ s) := fun n ↦ T n
    -- Finally, we take the union of all these coverings
    refine ⟨Σn, T' n, fun a ↦ a.2, fun a ↦ r a.1 a.2, ?_, ?_, ?_⟩
    · rintro ⟨n, x, hx⟩
      exact ⟨x.2.2, hrp _ _⟩
    · refine fun x hx ↦ mem_iUnion.2 ?_
      rcases mem_iUnion₂.1 (hT _ ⟨hKcov x, hx⟩) with ⟨⟨c, hc⟩, hcT, hcx⟩
      exact ⟨⟨_, ⟨c, hc⟩, hcT⟩, hcx⟩
    · intro x
      refine
        ⟨interior (K (K'.find x + 3)),
          IsOpen.mem_nhds isOpen_interior (K.subset_interior_succ _ (hKcov x).1), ?_⟩
      have : (⋃ k ≤ K'.find x + 2, range (Sigma.mk k) : Set (Σn, T' n)).Finite :=
        (finite_le_nat _).biUnion fun k _ ↦ finite_range _
      apply this.subset
      rintro ⟨k, c, hc⟩
      simp only [mem_iUnion, mem_setOf_eq, mem_image, Subtype.coe_mk]
      rintro ⟨x, hxB : x ∈ B c (r k c), hxK⟩
      refine ⟨k, ?_, ⟨c, hc⟩, rfl⟩
      have := (mem_compl_iff _ _).1 (hr k c hxB)
      contrapose! this with hnk
      exact K.subset hnk (interior_subset hxK)

/-- Let `X` be a locally compact sigma compact Hausdorff topological space. Suppose that for each
`x` the sets `B x : ι x → Set X` with the predicate `p x : ι x → Prop` form a basis of the filter
`𝓝 x`. Then there exists a locally finite covering `fun i ↦ B (c i) (r i)` of `X` such that each
`r i` satisfies `p (c i)`.

The notation is inspired by the case `B x r = Metric.ball x r` but the theorem applies to
`nhds_basis_opens` as well. If the covering must be subordinate to some open covering of `s`, then
the user should use a basis obtained by `Filter.HasBasis.restrict_subset` or a similar lemma, see
the proof of `paracompact_of_locallyCompact_sigmaCompact` for an example.

The formalization is based on two [ncatlab](https://ncatlab.org/) proofs:
* [locally compact and sigma compact spaces are paracompact](https://ncatlab.org/nlab/show/locally+compact+and+sigma-compact+spaces+are+paracompact);
* [open cover of smooth manifold admits locally finite refinement by closed balls](https://ncatlab.org/nlab/show/partition+of+unity#ExistenceOnSmoothManifolds).

See also `refinement_of_locallyCompact_sigmaCompact_of_nhds_basis_set` for a version of this lemma
dealing with a covering of a closed set.

In most cases (namely, if `B c r ∪ B c r'` is again a set of the form `B c r''`) it is possible
to choose `α = X`. This fact is not yet formalized in `mathlib`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `467b767e2718e1745e06725bc9c822535472a746` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
