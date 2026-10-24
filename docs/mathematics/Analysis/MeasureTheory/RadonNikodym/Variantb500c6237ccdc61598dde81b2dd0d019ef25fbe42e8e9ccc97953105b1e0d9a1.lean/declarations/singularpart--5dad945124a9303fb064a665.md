# singularPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d98caa9313702433d2d7cf7490297d054b34b3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b500c6237ccdc61598dde81b2dd0d019ef25fbe42e8e9ccc97953105b1e0d9a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64f4c728-049e-5bff-488e-c2c23783acb7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55908504-5503-e9e3-9d95-a9fef77d0379",
  "kind": "theorem",
  "lexical_name": "singularPart",
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
  "slug": "singularpart--5dad945124a9303fb064a665",
  "source": {
    "blob": "0d98caa9313702433d2d7cf7490297d054b34b3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 38,
    "path": "GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variantb500c6237ccdc61598dde81b2dd0d019ef25fbe42e8e9ccc97953105b1e0d9a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5dad945124a9303fb064a66539fcb0dc5d011bf1d61170204e75531ffe08154b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/RadonNikodym/Variantb500c6237ccdc61598dde81b2dd0d019ef25fbe42e8e9ccc97953105b1e0d9a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55908504-5503-e9e3-9d95-a9fef77d0379`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem singularPart [SigmaFinite ν] {f : X → X}
    (hfμ : MeasurePreserving f μ μ) (hfν : MeasurePreserving f ν ν) :
    MeasurePreserving f (μ.singularPart ν) (μ.singularPart ν) := by
  rcases (μ.mutuallySingular_singularPart ν).symm with ⟨s, hsm, hνs, hμs⟩
  convert! hfμ.restrict_preimage hsm using 1
  · refine singularPart_eq_restrict ?_ (hfν.preimage_null hνs)
    rw [← mem_ae_iff, ← Filter.eventuallyEqSet_univ,
      ae_eq_univ_iff_measure_eq (hfμ.measurable hsm).nullMeasurableSet]
    calc
      μ.singularPart ν (f ⁻¹' s) = (ν.withDensity (μ.rnDeriv ν) + μ.singularPart ν) (f ⁻¹' s) := by
        rw [← hfν.measure_preimage hsm.nullMeasurableSet] at hνs
        rw [add_apply, withDensity_absolutelyContinuous _ _ hνs, zero_add]
      _ = (ν.withDensity (μ.rnDeriv ν) + μ.singularPart ν) s := by
        rw [rnDeriv_add_singularPart, hfμ.measure_preimage hsm.nullMeasurableSet]
      _ = μ.singularPart ν s := by
        rw [add_apply, withDensity_absolutelyContinuous _ _ hνs, zero_add]
      _ = μ.singularPart ν univ := by
        rw [← measure_add_measure_compl hsm, hμs, add_zero]
  · exact singularPart_eq_restrict hμs hνs

/-- The absolutely continuous part of a finite invariant measure of a self-map
with respect to a σ-finite invariant measure is an invariant measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/RadonNikodym/Variantb500c6237ccdc61598dde81b2dd0d019ef25fbe42e8e9ccc97953105b1e0d9a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variantb500c6237ccdc61598dde81b2dd0d019ef25fbe42e8e9ccc97953105b1e0d9a1.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d98caa9313702433d2d7cf7490297d054b34b3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
