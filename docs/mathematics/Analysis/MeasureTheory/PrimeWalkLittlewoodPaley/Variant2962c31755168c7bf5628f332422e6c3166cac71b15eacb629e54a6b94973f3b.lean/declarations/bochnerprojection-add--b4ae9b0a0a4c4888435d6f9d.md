# bochnerProjection_add

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
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f2dfb28-6ada-7654-004b-96a6f1d902a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09f8c357-c3cd-dc64-672a-fb205ab1d158",
  "kind": "theorem",
  "lexical_name": "bochnerProjection_add",
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
  "slug": "bochnerprojection-add--b4ae9b0a0a4c4888435d6f9d",
  "source": {
    "blob": "53cabc24d62dac43363592d28460909fd5da9052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 208,
    "path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4ae9b0a0a4c4888435d6f9d107d669e55381c425de257c9cb5d26465eed6170",
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

Occurrence: `result:09f8c357-c3cd-dc64-672a-fb205ab1d158`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bochnerProjection_add
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (j : ℤ) (f g : ℝ → E)
    (hf : ProjectionExists kernel j f) (hg : ProjectionExists kernel j g) :
    bochnerProjection kernel j (f + g) =
      bochnerProjection kernel j f + bochnerProjection kernel j g := by
  exact hf.distrib_add hg

/-! ## Exact finite square functions -/

/-- Finite sum of squared dyadic projection norms. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53cabc24d62dac43363592d28460909fd5da9052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
