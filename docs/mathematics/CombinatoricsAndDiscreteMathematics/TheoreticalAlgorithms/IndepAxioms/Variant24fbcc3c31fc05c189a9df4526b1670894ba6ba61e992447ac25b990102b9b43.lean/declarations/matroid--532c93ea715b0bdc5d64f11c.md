# matroid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfaa4cdc6ddc4a53db17fd591291a122a2f5587abe649a01ea6f6637dc236a41",
  "kind": "def",
  "lexical_name": "matroid",
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
  "slug": "matroid--532c93ea715b0bdc5d64f11c",
  "source": {
    "blob": "6709a937797d5763a647c6ef29537e0e3261628c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 137,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:532c93ea715b0bdc5d64f11c439fc8f38a8dc5735800b81b829d8b1765c807cf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bfaa4cdc6ddc4a53db17fd591291a122a2f5587abe649a01ea6f6637dc236a41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] protected def matroid (M : IndepMatroid α) : Matroid α where
  E := M.E
  IsBase := Maximal M.Indep
  Indep := M.Indep
  indep_iff' := by
    refine fun I ↦ ⟨fun h ↦ ?_, fun ⟨B, ⟨h, _⟩, hIB'⟩ ↦ M.indep_subset h hIB'⟩
    obtain ⟨J, hIJ, hmax⟩ := M.indep_maximal M.E rfl.subset I h (M.subset_ground I h)
    rw [maximal_and_iff_right_of_imp M.subset_ground] at hmax
    exact ⟨J, hmax.1, hIJ⟩
  exists_isBase := by
    obtain ⟨B, -, hB⟩ := M.indep_maximal M.E rfl.subset ∅ M.indep_empty <| empty_subset _
    rw [maximal_and_iff_right_of_imp M.subset_ground] at hB
    exact ⟨B, hB.1⟩
  isBase_exchange B B' hB hB' e he := by
    have hnotmax : ¬ Maximal M.Indep (B \ {e}) :=
      fun h ↦ h.not_prop_of_ssuperset (diff_singleton_ssubset.2 he.1) hB.prop
    obtain ⟨f, hf, hfB⟩ := M.indep_aug (M.indep_subset hB.prop diff_subset) hnotmax hB'
    replace hf := show f ∈ B' \ B by simpa [show f ≠ e by rintro rfl; exact he.2 hf.1] using hf
    refine ⟨f, hf, by_contra fun hnot ↦ ?_⟩
    obtain ⟨x, hxB, hind⟩ := M.indep_aug hfB hnot hB
    obtain ⟨-, rfl⟩ : _ ∧ x = e := by simpa [hxB.1] using hxB
    refine hB.not_prop_of_ssuperset ?_ hind
    rw [insert_comm, insert_diff_singleton, insert_eq_of_mem he.1]
    exact ssubset_insert hf.2
  maximality := M.indep_maximal
  subset_ground B hB := M.subset_ground B hB.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6709a937797d5763a647c6ef29537e0e3261628c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
