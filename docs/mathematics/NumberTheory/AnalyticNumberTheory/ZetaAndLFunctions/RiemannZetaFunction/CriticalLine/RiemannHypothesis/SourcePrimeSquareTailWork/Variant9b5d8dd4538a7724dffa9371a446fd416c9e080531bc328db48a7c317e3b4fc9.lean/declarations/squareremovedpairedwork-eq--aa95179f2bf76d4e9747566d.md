# squareRemovedPairedWork_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7684c32691d1b9a13fa4de4e9d06f34edb90abb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b5d8dd4538a7724dffa9371a446fd416c9e080531bc328db48a7c317e3b4fc9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9e50e1e-959a-a67e-12b9-634825dba6fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:936fb2ec-d4b8-128c-f09d-eaa3fad59746",
  "kind": "theorem",
  "lexical_name": "squareRemovedPairedWork_eq",
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
  "slug": "squareremovedpairedwork-eq--aa95179f2bf76d4e9747566d",
  "source": {
    "blob": "f7684c32691d1b9a13fa4de4e9d06f34edb90abb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 224,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant9b5d8dd4538a7724dffa9371a446fd416c9e080531bc328db48a7c317e3b4fc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa95179f2bf76d4e9747566d50dcd7c3782be38a193793cc48d208752084789b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant9b5d8dd4538a7724dffa9371a446fd416c9e080531bc328db48a7c317e3b4fc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:936fb2ec-d4b8-128c-f09d-eaa3fad59746`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareRemovedPairedWork_eq {A : ℝ} (hA : 1 ≤ A) :
    squareRemovedPairedWork A = pairedErrorContrast A - squareTailPairedWork A := by
  have hp : 0 < A := by linarith
  have hi := squareTail_intervalIntegrable hp
  have hip := hi.mul_continuousOn (positiveSlope_continuous hp).continuousOn
  have hin := hi.mul_continuousOn (negativeSlope_continuous hp).continuousOn
  unfold squareRemovedPairedWork
  simp_rw [sub_mul]
  rw [intervalIntegral.integral_sub (positiveSlopeWork_intervalIntegrable hp) hip,
    intervalIntegral.integral_sub (negativeSlopeWork_intervalIntegrable hp) hin,
    pairedErrorContrast_eq hA]
  unfold squareTailPairedWork negativeErrorMean squareTailNegativeMean
    positiveSlopeWork negativeSlopeWork
  rw [sub_div]
  ring

/-- The square contribution cancels internally; no eventual lower witness is supplied. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant9b5d8dd4538a7724dffa9371a446fd416c9e080531bc328db48a7c317e3b4fc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant9b5d8dd4538a7724dffa9371a446fd416c9e080531bc328db48a7c317e3b4fc9.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7684c32691d1b9a13fa4de4e9d06f34edb90abb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
