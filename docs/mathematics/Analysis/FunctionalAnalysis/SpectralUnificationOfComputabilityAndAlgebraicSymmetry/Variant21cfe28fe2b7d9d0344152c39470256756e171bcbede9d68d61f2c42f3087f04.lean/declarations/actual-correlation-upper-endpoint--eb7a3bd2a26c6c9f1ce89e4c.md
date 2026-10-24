# actual_correlation_upper_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b63b073450ac178c908621f96330602de61d1bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/21cfe28fe2b7d9d0344152c39470256756e171bcbede9d68d61f2c42f3087f04.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e0a24a3-5961-2a3c-12a5-11d19ada4f23",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:717c35b4-572d-e228-7f81-9b3bd3e3a9bb",
  "kind": "theorem",
  "lexical_name": "actual_correlation_upper_endpoint",
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
  "slug": "actual-correlation-upper-endpoint--eb7a3bd2a26c6c9f1ce89e4c",
  "source": {
    "blob": "0b63b073450ac178c908621f96330602de61d1bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 55,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant21cfe28fe2b7d9d0344152c39470256756e171bcbede9d68d61f2c42f3087f04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb7a3bd2a26c6c9f1ce89e4c35e3d1417a7501dc9d544518c951b77b975e2aa7",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant21cfe28fe2b7d9d0344152c39470256756e171bcbede9d68d61f2c42f3087f04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:717c35b4-572d-e228-7f81-9b3bd3e3a9bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_upper_endpoint (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, actualTest A x * actualTest A (x - 2 * A)) = 0 :=
  actual_correlation_zero_of_two_mul_le_abs A (2 * A) hA (le_abs_self _)

/-- Enlarging the ambient support radius retains the exact full arithmetic form.
Only additional strict-cutoff prime terms vanish; both pole moments are retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant21cfe28fe2b7d9d0344152c39470256756e171bcbede9d68d61f2c42f3087f04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant21cfe28fe2b7d9d0344152c39470256756e171bcbede9d68d61f2c42f3087f04.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b63b073450ac178c908621f96330602de61d1bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
