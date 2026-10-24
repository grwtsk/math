# toFunctions_toMeasure_continuousPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adb1e915-5fbf-505a-cca1-7edbe9be1ba2",
  "kind": "theorem",
  "lexical_name": "toFunctions_toMeasure_continuousPart",
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
  "slug": "tofunctions-tomeasure-continuouspart--0b0376bdc9348464835004c9",
  "source": {
    "blob": "991551b0c73179f1f965fb62118e5b9f577fdfde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 441,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variantc4211c849b434a376a9e3b537997e1d6a3f8b2e45155fc11880bb470b477b530.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b0376bdc9348464835004c9dabb3d5ad7c0ac1952d4b3942b1b01c1b1aa0649",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Phillips/Variantc4211c849b434a376a9e3b537997e1d6a3f8b2e45155fc11880bb470b477b530.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adb1e915-5fbf-505a-cca1-7edbe9be1ba2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toFunctions_toMeasure_continuousPart [MeasurableSpace α] [MeasurableSingletonClass α]
    (μ : Measure α) [IsFiniteMeasure μ] [NoAtoms μ] (s : Set α) (hs : MeasurableSet s) :
    μ.extensionToBoundedFunctions.toBoundedAdditiveMeasure.continuousPart s = μ.real s := by
  let f := μ.extensionToBoundedFunctions.toBoundedAdditiveMeasure
  change f (univ \ f.discreteSupport ∩ s) = μ.real s
  rw [toFunctions_toMeasure]; swap
  · exact
      MeasurableSet.inter
        (MeasurableSet.univ.diff (Countable.measurableSet f.countable_discreteSupport)) hs
  simp only [measureReal_def]
  congr 1
  rw [inter_comm, ← inter_diff_assoc, inter_univ]
  exact measure_diff_null (f.countable_discreteSupport.measure_zero _)

end

/-!
### A set in `ℝ²` large along verticals, small along horizontals

We construct a subset of `ℝ²`, given as a family of sets, which is large along verticals (i.e.,
it only misses a countable set along each vertical) but small along horizontals (it is countable
along horizontals). Such a set can not be measurable as it would contradict Fubini theorem.
We need the continuum hypothesis to construct it.
-/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Phillips/Variantc4211c849b434a376a9e3b537997e1d6a3f8b2e45155fc11880bb470b477b530.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variantc4211c849b434a376a9e3b537997e1d6a3f8b2e45155fc11880bb470b477b530.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `991551b0c73179f1f965fb62118e5b9f577fdfde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
