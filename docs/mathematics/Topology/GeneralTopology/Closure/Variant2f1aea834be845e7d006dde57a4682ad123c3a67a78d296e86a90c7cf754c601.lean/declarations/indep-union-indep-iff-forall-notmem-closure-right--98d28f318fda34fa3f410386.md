# Indep.union_indep_iff_forall_notMem_closure_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac95de52-3ded-814a-742f-89dd6547e7f1",
  "kind": "lemma",
  "lexical_name": "Indep.union_indep_iff_forall_notMem_closure_right",
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
  "slug": "indep-union-indep-iff-forall-notmem-closure-right--98d28f318fda34fa3f410386",
  "source": {
    "blob": "47c1114aae9848672188b2156ac53232436a03d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 686,
    "line": 667,
    "path": "GRWTSK/Topology/GeneralTopology/Closure/Variant2f1aea834be845e7d006dde57a4682ad123c3a67a78d296e86a90c7cf754c601.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98d28f318fda34fa3f4103869567a6a9577a71f52d9c0c45b4d68ac270fd9a0c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closure/Variant2f1aea834be845e7d006dde57a4682ad123c3a67a78d296e86a90c7cf754c601.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac95de52-3ded-814a-742f-89dd6547e7f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 667–686.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Indep.union_indep_iff_forall_notMem_closure_right (hI : M.Indep I) (hJ : M.Indep J) :
    M.Indep (I ∪ J) ↔ ∀ e ∈ J \ I, e ∉ M.closure (I ∪ (J \ {e})) := by
  refine ⟨fun h e heJ hecl ↦ h.notMem_closure_diff_of_mem (.inr heJ.1) ?_, fun h ↦ ?_⟩
  · rwa [union_diff_distrib, diff_singleton_eq_self heJ.2]
  obtain ⟨K, hKIJ, hK⟩ := hI.subset_isBasis_of_subset (show I ⊆ I ∪ J from subset_union_left)
  obtain rfl | hssu := hKIJ.subset.eq_or_ssubset
  · exact hKIJ.indep
  exfalso
  obtain ⟨e, heI, heK⟩ := exists_of_ssubset hssu
  have heJI : e ∈ J \ I := by
    rw [← union_diff_right, union_comm]
    exact ⟨heI, notMem_subset hK heK⟩
  refine h _ heJI ?_
  rw [← diff_singleton_eq_self heJI.2, ← union_diff_distrib]
  exact M.closure_subset_closure (subset_diff_singleton hKIJ.subset heK) <| hKIJ.subset_closure heI

@[deprecated (since := "2025-05-23")]
alias Indep.union_indep_iff_forall_not_mem_closure_right :=
  Indep.union_indep_iff_forall_notMem_closure_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closure/Variant2f1aea834be845e7d006dde57a4682ad123c3a67a78d296e86a90c7cf754c601.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closure/Variant2f1aea834be845e7d006dde57a4682ad123c3a67a78d296e86a90c7cf754c601.lean#L667).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47c1114aae9848672188b2156ac53232436a03d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
