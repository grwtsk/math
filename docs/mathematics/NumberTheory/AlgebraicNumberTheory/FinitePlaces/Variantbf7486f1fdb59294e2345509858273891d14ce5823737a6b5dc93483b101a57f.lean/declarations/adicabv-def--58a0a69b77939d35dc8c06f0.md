# adicAbv_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "276e6dcfcb94e989031eecbb4418cc2d3e75acc6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6705bebd-9558-a4fa-1960-9bb0ea678205",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76a80fb6-7bc4-b042-4588-2c50df36be2b",
  "kind": "theorem",
  "lexical_name": "adicAbv_def",
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
  "slug": "adicabv-def--58a0a69b77939d35dc8c06f0",
  "source": {
    "blob": "276e6dcfcb94e989031eecbb4418cc2d3e75acc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 86,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58a0a69b77939d35dc8c06f06a6666377eadfe19df9b2d7133e1ceebce0cee28",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76a80fb6-7bc4-b042-4588-2c50df36be2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adicAbv_def {x : K} : adicAbv v x = toNNReal (absNorm_ne_zero v) (v.valuation K x) := rfl

@[deprecated (since := "2025-02-28")] alias vadicAbv_def := adicAbv_def

end AbsoluteValue

end RingOfIntegers.HeightOneSpectrum

section FinitePlace
variable {K : Type*} [Field K] [NumberField K] (v : HeightOneSpectrum (𝓞 K))

open RingOfIntegers.HeightOneSpectrum

/-- The embedding of a number field inside its completion with respect to `v`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variantbf7486f1fdb59294e2345509858273891d14ce5823737a6b5dc93483b101a57f.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `276e6dcfcb94e989031eecbb4418cc2d3e75acc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
