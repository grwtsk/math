# condExp_traj'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55c556e1012c4fcc8a84a45c7cd0c3a401453c4c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 738,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e01f3ab2-5ee0-acab-7258-857874ed813f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17cbd5d3-91d8-b873-70b8-2d11e9b60198",
  "kind": "theorem",
  "lexical_name": "condExp_traj'",
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
  "slug": "condexp-traj--16a426c5532b33dc73dc3172",
  "source": {
    "blob": "55c556e1012c4fcc8a84a45c7cd0c3a401453c4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 761,
    "line": 738,
    "path": "GRWTSK/Analysis/MeasureTheory/Traj/Variant71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16a426c5532b33dc73dc3172f5c48ae35e5788a49b2c8287925c68eb28a3fce6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Traj/Variant71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17cbd5d3-91d8-b873-70b8-2d11e9b60198`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 738–761.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_traj' {a b c : ℕ} (hab : a ≤ b) (hbc : b ≤ c)
    (x₀ : Π i : Iic a, X i) (f : (Π n, X n) → E) :
    (traj κ a x₀)[f | piLE b] =ᵐ[traj κ a x₀]
      fun x ↦ ∫ y, ((traj κ a x₀)[f | piLE c]) (updateFinset x (Iic c) y)
        ∂partialTraj κ b c (frestrictLe b x) := by
  have i_cf : Integrable ((traj κ a x₀)[f | piLE c]) (traj κ a x₀) :=
    integrable_condExp
  have mcf : StronglyMeasurable ((traj κ a x₀)[f | piLE c]) :=
    stronglyMeasurable_condExp.mono (piLE.le c)
  filter_upwards [piLE.condExp_condExp f hbc, condExp_traj hab i_cf] with x h1 h2
  rw [← h1, h2, ← traj_map_frestrictLe, Kernel.map_apply, integral_map]
  · congr with y
    apply stronglyMeasurable_condExp.dependsOn_of_piLE
    simp only [Set.mem_Iic, updateFinset, mem_Iic, frestrictLe_apply, dite_eq_ite]
    exact fun i hi ↦ (ite_eq_left hi).symm
  any_goals fun_prop
  exact (mcf.comp_measurable measurable_updateFinset).aestronglyMeasurable

end integral

section trajMeasure

/-- Distribution of the trajectory obtained by starting with `μ₀` and iterating the kernels `κ`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Traj/Variant71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Traj/Variant71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean#L738).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55c556e1012c4fcc8a84a45c7cd0c3a401453c4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
