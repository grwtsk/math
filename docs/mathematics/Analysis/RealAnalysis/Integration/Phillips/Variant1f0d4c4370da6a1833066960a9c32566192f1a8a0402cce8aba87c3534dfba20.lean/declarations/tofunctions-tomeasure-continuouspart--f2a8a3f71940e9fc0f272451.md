# toFunctions_toMeasure_continuousPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82d4373ee90daf79bd0c2954b8a60cc96f575818",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 433,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f0d4c4370da6a1833066960a9c32566192f1a8a0402cce8aba87c3534dfba20.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:213a6d41-5e95-cb76-320c-1048af301e34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:606c0644-8435-07aa-9648-dabd2b89a6ec",
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
  "slug": "tofunctions-tomeasure-continuouspart--f2a8a3f71940e9fc0f272451",
  "source": {
    "blob": "82d4373ee90daf79bd0c2954b8a60cc96f575818",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 433,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant1f0d4c4370da6a1833066960a9c32566192f1a8a0402cce8aba87c3534dfba20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2a8a3f71940e9fc0f272451e2c9c6952fcb12a6767a40a336877bd525152697",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Phillips/Variant1f0d4c4370da6a1833066960a9c32566192f1a8a0402cce8aba87c3534dfba20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:606c0644-8435-07aa-9648-dabd2b89a6ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–458.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Phillips/Variant1f0d4c4370da6a1833066960a9c32566192f1a8a0402cce8aba87c3534dfba20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant1f0d4c4370da6a1833066960a9c32566192f1a8a0402cce8aba87c3534dfba20.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82d4373ee90daf79bd0c2954b8a60cc96f575818` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
