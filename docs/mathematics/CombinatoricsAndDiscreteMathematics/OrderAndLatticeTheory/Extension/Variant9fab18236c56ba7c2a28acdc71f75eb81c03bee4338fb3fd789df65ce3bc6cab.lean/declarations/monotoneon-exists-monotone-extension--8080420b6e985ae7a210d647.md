# MonotoneOn.exists_monotone_extension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de4bd3a2a9025c8542dfdcc155f480b14d2c309a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9fab18236c56ba7c2a28acdc71f75eb81c03bee4338fb3fd789df65ce3bc6cab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77bdc3f7-7ca8-c29c-be39-9c5ed6080c8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13a8cc78-18c9-dfb8-6020-db3e2e7be6d9",
  "kind": "theorem",
  "lexical_name": "MonotoneOn.exists_monotone_extension",
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
  "slug": "monotoneon-exists-monotone-extension--8080420b6e985ae7a210d647",
  "source": {
    "blob": "de4bd3a2a9025c8542dfdcc155f480b14d2c309a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 27,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant9fab18236c56ba7c2a28acdc71f75eb81c03bee4338fb3fd789df65ce3bc6cab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8080420b6e985ae7a210d6479af71b7602e755b05a148292669ee3ed8e69836a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant9fab18236c56ba7c2a28acdc71f75eb81c03bee4338fb3fd789df65ce3bc6cab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13a8cc78-18c9-dfb8-6020-db3e2e7be6d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonotoneOn.exists_monotone_extension (h : MonotoneOn f s) (hl : BddBelow (f '' s))
    (hu : BddAbove (f '' s)) : ∃ g : α → β, Monotone g ∧ EqOn f g s := by
  classical
    /- The extension is defined by `f x = f a` for `x ≤ a`, and `f x` is the supremum of the values
      of `f` to the left of `x` for `x ≥ a`. -/
    rcases hl with ⟨a, ha⟩
    have hu' : ∀ x, BddAbove (f '' (Iic x ∩ s)) := fun x =>
      hu.mono (image_mono inter_subset_right)
    let g : α → β := fun x => if Disjoint (Iic x) s then a else sSup (f '' (Iic x ∩ s))
    have hgs : EqOn f g s := by
      intro x hx
      simp only [g]
      have : IsGreatest (Iic x ∩ s) x := ⟨⟨self_mem_Iic, hx⟩, fun y hy => hy.1⟩
      rw [ite_eq_right this.nonempty.not_disjoint,
        ((h.mono inter_subset_right).map_isGreatest this).csSup_eq]
    refine ⟨g, fun x y hxy => ?_, hgs⟩
    by_cases hx : Disjoint (Iic x) s <;> by_cases hy : Disjoint (Iic y) s <;>
      simp only [g, ite_eq_left, ite_eq_right, not_false_iff, *, refl]
    · rcases not_disjoint_iff_nonempty_inter.1 hy with ⟨z, hz⟩
      exact le_csSup_of_le (hu' _) (mem_image_of_mem _ hz) (ha <| mem_image_of_mem _ hz.2)
    · exact (hx <| hy.mono_left <| Iic_subset_Iic.2 hxy).elim
    · rw [not_disjoint_iff_nonempty_inter] at hx
      gcongr; exacts [hu' _, hx.image _]

/-- If a function is antitone and is bounded on a set `s`, then it admits an antitone extension to
the whole space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant9fab18236c56ba7c2a28acdc71f75eb81c03bee4338fb3fd789df65ce3bc6cab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant9fab18236c56ba7c2a28acdc71f75eb81c03bee4338fb3fd789df65ce3bc6cab.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de4bd3a2a9025c8542dfdcc155f480b14d2c309a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
