# charFunDual_eq_pi_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8642bb731c6c7d7982c045bce1fced92b98765f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 527,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f90bba2eb49b295a4dd7bb80f5434f66c31ebdd2801a0bc82e5c9476c9b54e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4dc8e50e-e088-4eb7-08dc-685c1e9b5b18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5930728f-a518-fab2-8c59-475a9a990837",
  "kind": "lemma",
  "lexical_name": "charFunDual_eq_pi_iff'",
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
  "slug": "charfundual-eq-pi-iff--a24b7dcc24a790755fe3f4ee",
  "source": {
    "blob": "8642bb731c6c7d7982c045bce1fced92b98765f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 527,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant3f90bba2eb49b295a4dd7bb80f5434f66c31ebdd2801a0bc82e5c9476c9b54e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a24b7dcc24a790755fe3f4eec8e6932d8a6ba2184ea2e2082cb59b75fc74fb16",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant3f90bba2eb49b295a4dd7bb80f5434f66c31ebdd2801a0bc82e5c9476c9b54e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5930728f-a518-fab2-8c59-475a9a990837`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 527–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma charFunDual_eq_pi_iff' (p : ℝ≥0∞) [Fact (1 ≤ p)] {ι : Type*} [Fintype ι] [DecidableEq ι]
    {E : ι → Type*} [∀ i, NormedAddCommGroup (E i)] [∀ i, NormedSpace ℝ (E i)]
    {mE : ∀ i, MeasurableSpace (E i)} [∀ i, BorelSpace (E i)] [∀ i, SecondCountableTopology (E i)]
    [∀ i, CompleteSpace (E i)] {μ : (i : ι) → Measure (E i)} {ν : Measure (Π i, E i)}
    [∀ i, IsFiniteMeasure (μ i)] [IsFiniteMeasure ν] :
    (∀ L, charFunDual (ν.map (toLp p)) L =
      ∏ i, charFunDual (μ i) (L.comp
        ((PiLp.continuousLinearEquiv p ℝ E).symm.toContinuousLinearMap.comp (.single ℝ E i)))) ↔
    ν = Measure.pi μ where
  mp h := by
    refine (MeasurableEquiv.toLp p (Π i, E i)).map_measurableEquiv_injective
      <| Measure.ext_of_charFunDual <| funext fun L ↦ ?_
    rw [MeasurableEquiv.coe_toLp, h, charFunDual_pi']
  mpr h := by rw [h]; exact charFunDual_pi' p

/-- The characteristic function of a convolution of measures
is the product of the respective characteristic functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant3f90bba2eb49b295a4dd7bb80f5434f66c31ebdd2801a0bc82e5c9476c9b54e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant3f90bba2eb49b295a4dd7bb80f5434f66c31ebdd2801a0bc82e5c9476c9b54e4.lean#L527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8642bb731c6c7d7982c045bce1fced92b98765f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
