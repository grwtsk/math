# generateFrom_measurableCylinders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:781a0adc-3e48-b312-0b77-d93e25ab7633",
  "kind": "theorem",
  "lexical_name": "generateFrom_measurableCylinders",
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
  "slug": "generatefrom-measurablecylinders--31740d8470a865bb340a1b80",
  "source": {
    "blob": "2f94d2f3a0ff3d5830d0500dc701143cb84e1896",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 370,
    "path": "GRWTSK/Analysis/MeasureTheory/Cylinders/Variantc1bd2a2248090516c28718d323adfcc82ac6dcb50b0f94a2e4b4f181d4142e76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31740d8470a865bb340a1b809f6b60d61215a677d78900bc4ff26c2830e84db9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Cylinders/Variantc1bd2a2248090516c28718d323adfcc82ac6dcb50b0f94a2e4b4f181d4142e76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:781a0adc-3e48-b312-0b77-d93e25ab7633`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generateFrom_measurableCylinders :
    MeasurableSpace.generateFrom (measurableCylinders α) = MeasurableSpace.pi := by
  apply le_antisymm
  · refine MeasurableSpace.generateFrom_le (fun S hS ↦ ?_)
    obtain ⟨s, S, hSm, rfl⟩ := (mem_measurableCylinders _).mp hS
    exact hSm.cylinder
  · refine iSup_le fun i ↦ ?_
    refine (comap_eval_le_generateFrom_squareCylinders_singleton α i).trans ?_
    refine MeasurableSpace.generateFrom_mono (fun x ↦ ?_)
    simp only [singleton_pi, mem_image, mem_pi, mem_univ, mem_ofPred_eq,
      forall_true_left, mem_measurableCylinders, forall_exists_index, and_imp]
    rintro t ht rfl
    refine ⟨{i}, {f | f ⟨i, Finset.mem_singleton_self i⟩ ∈ t i}, measurable_pi_apply _ (ht i), ?_⟩
    ext1 x
    simp only [mem_preimage, Function.eval, mem_cylinder, mem_ofPred_eq, Finset.restrict]

/-- The cylinders of a product space indexed by `ℕ` can be seen as depending on the first
coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Cylinders/Variantc1bd2a2248090516c28718d323adfcc82ac6dcb50b0f94a2e4b4f181d4142e76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Cylinders/Variantc1bd2a2248090516c28718d323adfcc82ac6dcb50b0f94a2e4b4f181d4142e76.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f94d2f3a0ff3d5830d0500dc701143cb84e1896` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
