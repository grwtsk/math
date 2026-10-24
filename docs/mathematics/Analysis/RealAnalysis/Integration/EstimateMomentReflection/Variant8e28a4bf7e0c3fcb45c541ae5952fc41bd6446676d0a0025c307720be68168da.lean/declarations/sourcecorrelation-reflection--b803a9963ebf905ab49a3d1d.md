# sourceCorrelation_reflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98a3c805ff7511c7ec786de6a69bd4c610eb951a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e28a4bf7e0c3fcb45c541ae5952fc41bd6446676d0a0025c307720be68168da.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4cccf485-74a0-6911-e6bc-a174b3fa89c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c88aad8-cf29-e4c2-15b6-f3c6b91aaf61",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_reflection",
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
  "slug": "sourcecorrelation-reflection--b803a9963ebf905ab49a3d1d",
  "source": {
    "blob": "98a3c805ff7511c7ec786de6a69bd4c610eb951a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 248,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8e28a4bf7e0c3fcb45c541ae5952fc41bd6446676d0a0025c307720be68168da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b803a9963ebf905ab49a3d1de958b47e836c4a4a3828021f5ee17e403398dd99",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8e28a4bf7e0c3fcb45c541ae5952fc41bd6446676d0a0025c307720be68168da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c88aad8-cf29-e4c2-15b6-f3c6b91aaf61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_reflection
    (A : ℝ) (hA : 1 ≤ A) (s : ℝ) :
    (∫ r in Ioi (0 : ℝ),
      r * Real.exp (r / 2) *
        sourceCorrelation explicitSecondDerivative A (s + r)) =
    ∫ r in Ioi (0 : ℝ),
      r * Real.exp (-r / 2) *
        sourceCorrelation explicitSecondDerivative A (s - r) := by
  simpa [shiftedMomentIntegrand, reflectedMomentIntegrand] using
    two_moment_reflection
      (sourceCorrelation_twoMomentProfile A hA) s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8e28a4bf7e0c3fcb45c541ae5952fc41bd6446676d0a0025c307720be68168da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8e28a4bf7e0c3fcb45c541ae5952fc41bd6446676d0a0025c307720be68168da.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98a3c805ff7511c7ec786de6a69bd4c610eb951a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
