# indicator_le_apprSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8fd74e4a52be4c97af7fce549eeda09cc9218529",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4943434-e638-da88-4b35-49c9c6c38ade",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70f78004-94f9-2988-c537-d6b0e907883d",
  "kind": "lemma",
  "lexical_name": "indicator_le_apprSeq",
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
  "slug": "indicator-le-apprseq--fd17c63d4d87aec8ddea0e87",
  "source": {
    "blob": "8fd74e4a52be4c97af7fce549eeda09cc9218529",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 153,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd17c63d4d87aec8ddea0e879bd0a96112eea9d971815b7f9fed60c8a274fee5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70f78004-94f9-2988-c537-d6b0e907883d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma indicator_le_apprSeq (n : ℕ) :
    indicator F (fun _ ↦ 1) ≤ hF.apprSeq n := by
  intro x
  by_cases hxF : x ∈ F
  · simp only [hxF, indicator_of_mem, apprSeq_apply_eq_one hF n, le_refl]
  · simp only [hxF, not_false_eq_true, indicator_of_notMem, zero_le]

/-- The measure of a closed set is at most the integral of any function in a decreasing
approximating sequence to the indicator of the set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fd74e4a52be4c97af7fce549eeda09cc9218529` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
