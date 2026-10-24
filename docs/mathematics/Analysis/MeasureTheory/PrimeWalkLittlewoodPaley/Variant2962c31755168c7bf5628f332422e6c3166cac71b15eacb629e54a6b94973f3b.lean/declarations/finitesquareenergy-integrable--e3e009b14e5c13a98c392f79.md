# finiteSquareEnergy_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53cabc24d62dac43363592d28460909fd5da9052",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 326,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08c86906-5258-6051-3fbf-0bb7c5195275",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0400b81e-67c8-e792-f898-c961f3df861e",
  "kind": "theorem",
  "lexical_name": "finiteSquareEnergy_integrable",
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
  "slug": "finitesquareenergy-integrable--e3e009b14e5c13a98c392f79",
  "source": {
    "blob": "53cabc24d62dac43363592d28460909fd5da9052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 326,
    "path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3e009b14e5c13a98c392f7989443cadac227096816a369e1bf6705fc65f1454",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0400b81e-67c8-e792-f898-c961f3df861e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteSquareEnergy_integrable
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (scales : Finset ℤ) (f : ℝ → E)
    (hproj : ∀ j ∈ scales,
      Integrable (fun x ↦ ‖bochnerProjection kernel j f x‖ ^ 2) volume) :
    Integrable (finiteSquareEnergy kernel scales f) volume := by
  unfold finiteSquareEnergy
  exact integrable_finsetSum scales fun j hj ↦ hproj j hj

/-! ## Literal application to a measure bridge

These wrappers apply the same checked convolution and finite square function
to the trajectory stored in `MeasureBridgeData`.  They make no claim that the
result controls, interpolates, or recovers the discrete observable.
-/

/-- The dyadic convolution of a measure bridge's continuous trajectory. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53cabc24d62dac43363592d28460909fd5da9052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
