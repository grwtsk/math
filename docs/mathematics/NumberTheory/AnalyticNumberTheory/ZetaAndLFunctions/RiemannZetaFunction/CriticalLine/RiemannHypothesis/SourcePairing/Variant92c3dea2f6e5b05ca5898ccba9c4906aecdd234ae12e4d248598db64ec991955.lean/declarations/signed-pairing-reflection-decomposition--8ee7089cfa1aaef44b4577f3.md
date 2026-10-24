# signed_pairing_reflection_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "600065deef0de35eac8ce386959a9d51308c42b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/92c3dea2f6e5b05ca5898ccba9c4906aecdd234ae12e4d248598db64ec991955.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c78765b2-b349-f892-e8e3-a28f6876e6de",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b333f37-7939-0d52-da97-75192db4f874",
  "kind": "theorem",
  "lexical_name": "signed_pairing_reflection_decomposition",
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
  "slug": "signed-pairing-reflection-decomposition--8ee7089cfa1aaef44b4577f3",
  "source": {
    "blob": "600065deef0de35eac8ce386959a9d51308c42b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 251,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairing/Variant92c3dea2f6e5b05ca5898ccba9c4906aecdd234ae12e4d248598db64ec991955.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ee7089cfa1aaef44b4577f3d4b751cff5ad6c922405d1d59d0f1b8083fbe3f1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairing/Variant92c3dea2f6e5b05ca5898ccba9c4906aecdd234ae12e4d248598db64ec991955.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b333f37-7939-0d52-da97-75192db4f874`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_pairing_reflection_decomposition (r : DilationRealization) (A : Set.Ici (1 : ℝ))
    (hpp : IntervalIntegrable (fun t ↦
      evenPart lowerEndpoint (2 * A) errorProfile t *
      evenPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t)
      volume lowerEndpoint (2 * A))
    (hpm : IntervalIntegrable (fun t ↦
      evenPart lowerEndpoint (2 * A) errorProfile t *
      oddPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t)
      volume lowerEndpoint (2 * A))
    (hmp : IntervalIntegrable (fun t ↦
      oddPart lowerEndpoint (2 * A) errorProfile t *
      evenPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t)
      volume lowerEndpoint (2 * A))
    (hmm : IntervalIntegrable (fun t ↦
      oddPart lowerEndpoint (2 * A) errorProfile t *
      oddPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t)
      volume lowerEndpoint (2 * A)) :
    signedPairing r.secondDerivative A =
      (∫ t in lowerEndpoint..2 * A,
        evenPart lowerEndpoint (2 * A) errorProfile t *
        evenPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t) +
      (∫ t in lowerEndpoint..2 * A,
        oddPart lowerEndpoint (2 * A) errorProfile t *
        oddPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t) :=
  integral_product_eq_even_add_odd lowerEndpoint (2 * A)
    errorProfile (sourceWeight r.secondDerivative A) hpp hpm hmp hmm

end

end FormalResearch.RiemannHypothesis.SourcePairing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairing/Variant92c3dea2f6e5b05ca5898ccba9c4906aecdd234ae12e4d248598db64ec991955.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairing/Variant92c3dea2f6e5b05ca5898ccba9c4906aecdd234ae12e4d248598db64ec991955.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `600065deef0de35eac8ce386959a9d51308c42b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
