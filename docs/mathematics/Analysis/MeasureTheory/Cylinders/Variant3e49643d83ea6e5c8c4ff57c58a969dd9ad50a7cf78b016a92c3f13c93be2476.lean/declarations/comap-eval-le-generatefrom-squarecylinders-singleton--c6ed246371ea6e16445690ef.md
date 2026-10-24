# comap_eval_le_generateFrom_squareCylinders_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8ba55d2-5a9e-2444-a1aa-3c83cbd458d0",
  "kind": "theorem",
  "lexical_name": "comap_eval_le_generateFrom_squareCylinders_singleton",
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
  "slug": "comap-eval-le-generatefrom-squarecylinders-singleton--c6ed246371ea6e16445690ef",
  "source": {
    "blob": "3db4768a242244f020714b3f090254da00c898f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 116,
    "path": "GRWTSK/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6ed246371ea6e16445690efb5a6f3ca2b4b9f608762242948aaf55a2015eeba",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8ba55d2-5a9e-2444-a1aa-3c83cbd458d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_eval_le_generateFrom_squareCylinders_singleton
    (α : ι → Type*) [m : ∀ i, MeasurableSpace (α i)] (i : ι) :
    MeasurableSpace.comap (Function.eval i) (m i) ≤
      MeasurableSpace.generateFrom
        ((fun t ↦ ({i} : Set ι).pi t) '' univ.pi fun i ↦ {s : Set (α i) | MeasurableSet s}) := by
  simp only [Function.eval, singleton_pi]
  rw [MeasurableSpace.comap_eq_generateFrom]
  refine MeasurableSpace.generateFrom_mono fun S ↦ ?_
  simp only [mem_setOf_eq, mem_image, mem_univ_pi, forall_exists_index, and_imp]
  intro t ht h
  classical
  refine ⟨fun j ↦ if hji : j = i then by convert t else univ, fun j ↦ ?_, ?_⟩
  · by_cases hji : j = i
    · simp only [hji, eq_self_iff_true, eq_mpr_eq_cast, dif_pos]
      convert ht
      simp only [id_eq, cast_heq]
    · simp only [hji, not_false_iff, dif_neg, MeasurableSet.univ]
  · simp only [id_eq, eq_mpr_eq_cast, ← h]
    ext1 x
    simp only [singleton_pi, Function.eval, cast_eq, dite_eq_ite, ite_true, mem_preimage]

/-- The square cylinders formed from measurable sets generate the product σ-algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3db4768a242244f020714b3f090254da00c898f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
