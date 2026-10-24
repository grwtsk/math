# actualXiLogPrimitive_absolutelyContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:411e8619-afa9-7247-8915-9cca5989612e",
  "kind": "theorem",
  "lexical_name": "actualXiLogPrimitive_absolutelyContinuous",
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
  "slug": "actualxilogprimitive-absolutelycontinuous--6ff8b20e77c4816ebc1dfde6",
  "source": {
    "blob": "5af0e439c9c36f80eaf5e4f50b88ea03a0480d04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 54,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceActualXiPrimitiveTransportAttempt02/Variantffbfc2dfa00fdb74a73c7bff238e0a2b75bd4b7a0c3a38f4406f744256da9411.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ff8b20e77c4816ebc1dfde6dbd477649e1e330896cacc9b3ba855b87fba504e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceActualXiPrimitiveTransportAttempt02/Variantffbfc2dfa00fdb74a73c7bff238e0a2b75bd4b7a0c3a38f4406f744256da9411.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:411e8619-afa9-7247-8915-9cca5989612e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiLogPrimitive_absolutelyContinuous (b : ℝ) :
    AbsolutelyContinuousOnInterval actualXiLogPrimitive (Real.log 2) b := by
  have hi := actualXiLogDensity_intervalIntegrable (Real.log 2) b
  exact hi.absolutelyContinuousOnInterval_intervalIntegral (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceActualXiPrimitiveTransportAttempt02/Variantffbfc2dfa00fdb74a73c7bff238e0a2b75bd4b7a0c3a38f4406f744256da9411.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceActualXiPrimitiveTransportAttempt02/Variantffbfc2dfa00fdb74a73c7bff238e0a2b75bd4b7a0c3a38f4406f744256da9411.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5af0e439c9c36f80eaf5e4f50b88ea03a0480d04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
