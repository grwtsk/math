# chainSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4a3904244de6117da9bc287beff8ef9e106cf96db6e3fe1c3065d4d36f99520",
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
  "slug": "chainsup--c9ffa8f4cbc08301686f4a39",
  "source": {
    "blob": "2425239e28a40656dbbec1cea36e96cc3c6f0d6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 142,
    "path": "GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9ffa8f4cbc08301686f4a390eba17ef17d6605bc63f24210e009fc8f3614f04",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4a3904244de6117da9bc287beff8ef9e106cf96db6e3fe1c3065d4d36f99520`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def chainSup (c : Set (PartialRefinement u s)) (hc : IsChain (· ≤ ·) c) (ne : c.Nonempty)
    (hfin : ∀ x ∈ s, { i | x ∈ u i }.Finite) (hU : s ⊆ ⋃ i, u i) : PartialRefinement u s where
  toFun i := find c ne i i
  carrier := chainSupCarrier c
  isOpen i := (find _ _ _).isOpen i
  subset_iUnion x hxs := mem_iUnion.2 <| by
    rcases em (∃ i, i ∉ chainSupCarrier c ∧ x ∈ u i) with (⟨i, hi, hxi⟩ | hx)
    · use i
      simpa only [(find c ne i).apply_eq (mt (mem_find_carrier_iff _).1 hi)]
    · simp_rw [not_exists, not_and, not_imp_not, chainSupCarrier, mem_iUnion₂] at hx
      haveI : Nonempty (PartialRefinement u s) := ⟨ne.some⟩
      choose! v hvc hiv using hx
      rcases(hfin x hxs).exists_maximal_wrt v _ (mem_iUnion.1 (hU hxs)) with
        ⟨i, hxi : x ∈ u i, hmax : ∀ j, x ∈ u j → v i ≤ v j → v i = v j⟩
      rcases mem_iUnion.1 ((v i).subset_iUnion hxs) with ⟨j, hj⟩
      use j
      have hj' : x ∈ u j := (v i).subset _ hj
      have : v j ≤ v i := (hc.total (hvc _ hxi) (hvc _ hj')).elim (fun h => (hmax j hj' h).ge) id
      simpa only [find_apply_of_mem hc ne (hvc _ hxi) (this.1 <| hiv _ hj')]
  closure_subset hi := (find c ne _).closure_subset ((mem_find_carrier_iff _).2 hi)
  apply_eq hi := (find c ne _).apply_eq (mt (mem_find_carrier_iff _).1 hi)
#align shrinking_lemma.partial_refinement.chain_Sup ShrinkingLemma.PartialRefinement.chainSup

/-- `chainSup hu c hc ne hfin hU` is an upper bound of the chain `c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2425239e28a40656dbbec1cea36e96cc3c6f0d6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
