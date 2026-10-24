# nonaffineWork_corrected_terminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ea71f57-2bfc-09f5-868d-80a46909119f",
  "kind": "theorem",
  "lexical_name": "nonaffineWork_corrected_terminal",
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
  "slug": "nonaffinework-corrected-terminal--a45b6e287307dc55d85ae7b6",
  "source": {
    "blob": "8726697e74aa9321a878e5a340f390d06f6ca84b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 73,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceStorageDescent/Varianta3330b42248d519c994de8abbbf110eca7fc42e90c75e3e951592fac3c0b83e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a45b6e287307dc55d85ae7b6ba3cf263a9b9c251295a83e79c15dfb5af7dcea1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceStorageDescent/Varianta3330b42248d519c994de8abbbf110eca7fc42e90c75e3e951592fac3c0b83e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ea71f57-2bfc-09f5-868d-80a46909119f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonaffineWork_corrected_terminal (A : ℝ) (hA : 1 ≤ A) :
    nonaffineWork A = correctedEnergy A 0 (node A 0) -
      correctedEnergy A (cutoff A) (node A (cutoff A)) + totalSmoothWork A := by
  have hc := actual_cell_partition A (by linarith) (kapitzaWeight A)
    (kapitzaWeight_continuous A (by linarith))
  change nonaffineWork A = _ at hc
  rw [hc]
  have ht := StorageDescent.switched_sum (correctedEnergy A) id (node A) (cutoff A)
  simp only [id_eq, correctedEnergy_seam, sub_self, Finset.sum_const_zero, add_zero] at ht
  calc
    _ = ∑ j ∈ Finset.range (cutoff A),
        (correctedEnergy A j (node A j) - correctedEnergy A j (node A (j + 1)) +
          ∫ s in node A j..node A (j + 1), smoothBalance A (j + 1) s) := by
      apply Finset.sum_congr rfl
      intro j hj
      exact corrected_cell_balance A hA j (Finset.mem_range.mp hj)
    _ = _ := by rw [Finset.sum_add_distrib, ht]; rfl

/-- The correction pays exactly the original signed event sector, including quadratic atoms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceStorageDescent/Varianta3330b42248d519c994de8abbbf110eca7fc42e90c75e3e951592fac3c0b83e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceStorageDescent/Varianta3330b42248d519c994de8abbbf110eca7fc42e90c75e3e951592fac3c0b83e1.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8726697e74aa9321a878e5a340f390d06f6ca84b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
