# sourceCorrelation_eq_plus_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42a97b555ddfdfd12aca1a11dc0a2f703ea8efb1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81badf31-c1d3-769d-a13f-b72e1c6dd96c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad9b6755-d76f-0e3e-4e69-7669af2f172b",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_eq_plus_shift",
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
  "slug": "sourcecorrelation-eq-plus-shift--d08651e3d3e647c104785da8",
  "source": {
    "blob": "42a97b555ddfdfd12aca1a11dc0a2f703ea8efb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompactKernelV1Source/Varianta29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d08651e3d3e647c104785da85313f50c1c56ec7df0df43a549a2526f022d9f34",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompactKernelV1Source/Varianta29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad9b6755-d76f-0e3e-4e69-7669af2f172b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_eq_plus_shift (A t : ℝ) :
    sourceCorrelation explicitSecondDerivative A t =
      ∫ x : ℝ, normalizedTest explicitSecondDerivative A x *
        normalizedTest explicitSecondDerivative A (x + t) := by
  simpa only [sourceCorrelation, sub_neg_eq_add] using
    (sourceCorrelation_even A t).symm

/-- The whole negative half interval is swapped without absolute arithmetic estimates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompactKernelV1Source/Varianta29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompactKernelV1Source/Varianta29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42a97b555ddfdfd12aca1a11dc0a2f703ea8efb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
