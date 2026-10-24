# mangoldtObservation_hasCompactSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d54c014f29fcedf31542ce5cbdbdd1f09550797d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/36acbff686bc12028ea76446734187eeea562d551b8ea33e28624ffe1d3f56d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e716f17-3ee1-75d7-264a-a386ee39a85b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ca962b5-f6d4-a168-bc26-d139a940faec",
  "kind": "theorem",
  "lexical_name": "mangoldtObservation_hasCompactSupport",
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
  "slug": "mangoldtobservation-hascompactsupport--a2e0fb15ac991e374f3cac13",
  "source": {
    "blob": "d54c014f29fcedf31542ce5cbdbdd1f09550797d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 28,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MangoldtReflectionStatements/Variant36acbff686bc12028ea76446734187eeea562d551b8ea33e28624ffe1d3f56d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2e0fb15ac991e374f3cac13a2e68323153ca98406fecc93eb30d245075c5582",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MangoldtReflectionStatements/Variant36acbff686bc12028ea76446734187eeea562d551b8ea33e28624ffe1d3f56d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ca962b5-f6d4-a168-bc26-d139a940faec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtObservation_hasCompactSupport (A : ℝ) (T : Finset ℕ) (hA : 1 ≤ A) :
    HasCompactSupport (mangoldtObservation A T) := by
  have hi (i : ℕ) : HasCompactSupport (fun x : ℝ ↦
      ArithmeticFunction.vonMangoldt i / Real.sqrt i *
        normalizedTest explicitSecondDerivative A (x + Real.log i)) :=
    ((normalizedTest_hasCompactSupport A (by linarith)).comp_homeomorph
      (Homeomorph.addRight (Real.log (i : ℝ)))).mul_left
  have he : mangoldtObservation A T = ∑ i ∈ T, (fun x : ℝ ↦
      ArithmeticFunction.vonMangoldt i / Real.sqrt i *
        normalizedTest explicitSecondDerivative A (x + Real.log i)) := by
    funext x
    simp [mangoldtObservation]
  rw [he]
  exact HasCompactSupport.finset_sum (fun i (_ : i ∈ T) ↦ hi i)

/-- The observation has a genuinely integrable squared norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MangoldtReflectionStatements/Variant36acbff686bc12028ea76446734187eeea562d551b8ea33e28624ffe1d3f56d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MangoldtReflectionStatements/Variant36acbff686bc12028ea76446734187eeea562d551b8ea33e28624ffe1d3f56d9.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d54c014f29fcedf31542ce5cbdbdd1f09550797d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
