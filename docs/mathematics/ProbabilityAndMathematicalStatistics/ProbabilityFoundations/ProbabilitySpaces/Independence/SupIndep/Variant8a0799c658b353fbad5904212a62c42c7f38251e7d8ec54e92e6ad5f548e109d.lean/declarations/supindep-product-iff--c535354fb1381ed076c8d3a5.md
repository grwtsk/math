# supIndep_product_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83bfa4a6-d757-facf-810b-98c97d93a1cb",
  "kind": "theorem",
  "lexical_name": "supIndep_product_iff",
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
  "slug": "supindep-product-iff--c535354fb1381ed076c8d3a5",
  "source": {
    "blob": "f725cd9f73e9cc2af80959c45c6e4773c278e2d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 270,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SupIndep/Variant8a0799c658b353fbad5904212a62c42c7f38251e7d8ec54e92e6ad5f548e109d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c535354fb1381ed076c8d3a550bf12a20235d84cfcdc6bfeaa606a629b4bda0d",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SupIndep/Variant8a0799c658b353fbad5904212a62c42c7f38251e7d8ec54e92e6ad5f548e109d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83bfa4a6-d757-facf-810b-98c97d93a1cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem supIndep_product_iff {s : Finset ι} {t : Finset ι'} {f : ι × ι' → α} :
    (s.product t).SupIndep f ↔ (s.SupIndep fun i => t.sup fun i' => f (i, i'))
      ∧ t.SupIndep fun i' => s.sup fun i => f (i, i') := by
  refine' ⟨_, fun h => h.1.product h.2⟩
  simp_rw [supIndep_iff_pairwiseDisjoint]
  refine' fun h => ⟨fun i hi j hj hij => _, fun i hi j hj hij => _⟩ <;>
      simp_rw [Function.onFun, Finset.disjoint_sup_left, Finset.disjoint_sup_right] <;>
    intro i' hi' j' hj'
  · exact h (mk_mem_product hi hi') (mk_mem_product hj hj') (ne_of_apply_ne Prod.fst hij)
  · exact h (mk_mem_product hi' hi) (mk_mem_product hj' hj) (ne_of_apply_ne Prod.snd hij)
#align finset.sup_indep_product_iff Finset.supIndep_product_iff

end DistribLattice

end Finset

/-! ### On complete lattices via `sSup` -/


namespace CompleteLattice

variable [CompleteLattice α]

open Set Function

/-- An independent set of elements in a complete lattice is one in which every element is disjoint
  from the `Sup` of the rest. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SupIndep/Variant8a0799c658b353fbad5904212a62c42c7f38251e7d8ec54e92e6ad5f548e109d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SupIndep/Variant8a0799c658b353fbad5904212a62c42c7f38251e7d8ec54e92e6ad5f548e109d.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f725cd9f73e9cc2af80959c45c6e4773c278e2d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
