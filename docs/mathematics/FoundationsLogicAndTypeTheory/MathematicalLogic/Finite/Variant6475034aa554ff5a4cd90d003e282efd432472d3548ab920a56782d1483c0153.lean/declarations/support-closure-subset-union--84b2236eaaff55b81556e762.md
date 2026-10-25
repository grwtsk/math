# support_closure_subset_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45215ec4-d0fa-7a52-4e5d-f915309f7547",
  "kind": "lemma",
  "lexical_name": "support_closure_subset_union",
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
  "slug": "support-closure-subset-union--84b2236eaaff55b81556e762",
  "source": {
    "blob": "45275f6dfc8d412e8d60eeed282bb2f9f9849f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 259,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant6475034aa554ff5a4cd90d003e282efd432472d3548ab920a56782d1483c0153.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84b2236eaaff55b81556e76256f361b6de546a3758e455e33a6757ddf82126f9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant6475034aa554ff5a4cd90d003e282efd432472d3548ab920a56782d1483c0153.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45215ec4-d0fa-7a52-4e5d-f915309f7547`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma support_closure_subset_union (S : Set (Perm α)) :
    ∀ a ∈ closure S, (a.support : Set α) ⊆ ⋃ b ∈ S, b.support := by
  apply closure_induction
  · exact fun x hx ↦ Set.subset_iUnion₂_of_subset x hx subset_rfl
  · simp
  · intro a b ha hb hc hd
    refine (Finset.coe_subset.mpr (support_mul_le a b)).trans ?_
    rw [Finset.sup_eq_union, Finset.coe_union, Set.union_subset_iff]
    exact ⟨hc, hd⟩
  · simp only [support_inv, imp_self, implies_true]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant6475034aa554ff5a4cd90d003e282efd432472d3548ab920a56782d1483c0153.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant6475034aa554ff5a4cd90d003e282efd432472d3548ab920a56782d1483c0153.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45275f6dfc8d412e8d60eeed282bb2f9f9849f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
