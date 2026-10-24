# chainSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15115fa5aa94307370d6a6245d327922d28fd56d1c19c4e4603d50c05d5d9797",
  "kind": "def",
  "lexical_name": "chainSup",
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
  "slug": "chainsup--ed5a8baa7bb4823688bd2a9b",
  "source": {
    "blob": "f2eee98655cba0c53c083594411994eefe9106b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 137,
    "path": "GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed5a8baa7bb4823688bd2a9b832b21b50cb2e508d0125a7805ce4d284018c84d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15115fa5aa94307370d6a6245d327922d28fd56d1c19c4e4603d50c05d5d9797`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def chainSup (c : Set (PartialRefinement u s p)) (hc : IsChain (· ≤ ·) c) (ne : c.Nonempty)
    (hfin : ∀ x ∈ s, { i | x ∈ u i }.Finite) (hU : s ⊆ ⋃ i, u i) : PartialRefinement u s p where
  toFun i := find c ne i i
  carrier := chainSupCarrier c
  isOpen i := (find _ _ _).isOpen i
  subset_iUnion x hxs := mem_iUnion.2 <| by
    rcases em (∃ i, i ∉ chainSupCarrier c ∧ x ∈ u i) with (⟨i, hi, hxi⟩ | hx)
    · use i
      simpa only [(find c ne i).apply_eq (mt (mem_find_carrier_iff _).1 hi)]
    · simp_rw [not_exists, not_and, not_imp_not, chainSupCarrier, mem_iUnion₂] at hx
      haveI : Nonempty (PartialRefinement u s p) := ⟨ne.some⟩
      choose! v hvc hiv using hx
      rcases (hfin x hxs).exists_maximalFor v _ (mem_iUnion.1 (hU hxs)) with
        ⟨i, hxi : x ∈ u i, hmax : ∀ j, x ∈ u j → v i ≤ v j → v j ≤ v i⟩
      rcases mem_iUnion.1 ((v i).subset_iUnion hxs) with ⟨j, hj⟩
      use j
      have hj' : x ∈ u j := (v i).subset _ hj
      have : v j ≤ v i := (hc.total (hvc _ hxi) (hvc _ hj')).elim (hmax j hj') id
      simpa only [find_apply_of_mem hc ne (hvc _ hxi) (this.1 <| hiv _ hj')]
  closure_subset hi := (find c ne _).closure_subset ((mem_find_carrier_iff _).2 hi)
  pred_of_mem {i} hi := by
    obtain ⟨v, hv⟩ := Set.mem_iUnion.mp hi
    simp only [mem_iUnion, exists_prop] at hv
    rw [find_apply_of_mem hc ne hv.1 hv.2]
    exact v.pred_of_mem hv.2
  apply_eq hi := (find c ne _).apply_eq (mt (mem_find_carrier_iff _).1 hi)

/-- `chainSup hu c hc ne hfin hU` is an upper bound of the chain `c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant92b9326e0328e91b4b7f926146dd7b25272eaa38b161463470f2240d30d66851.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2eee98655cba0c53c083594411994eefe9106b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
