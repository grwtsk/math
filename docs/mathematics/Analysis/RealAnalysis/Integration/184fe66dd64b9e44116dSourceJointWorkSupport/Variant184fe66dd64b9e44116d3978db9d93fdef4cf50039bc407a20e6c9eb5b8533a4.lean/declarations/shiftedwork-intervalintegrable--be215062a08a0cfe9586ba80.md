# shiftedWork_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3a0a743b747979bd4e383c63eee999fb1886256",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/184fe66dd64b9e44116d3978db9d93fdef4cf50039bc407a20e6c9eb5b8533a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:650a6bae-29ca-cc35-3758-4de818fe55ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f91bbef7-930c-69b7-0f2e-cf4d6e9eceee",
  "kind": "theorem",
  "lexical_name": "shiftedWork_intervalIntegrable",
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
  "slug": "shiftedwork-intervalintegrable--be215062a08a0cfe9586ba80",
  "source": {
    "blob": "d3a0a743b747979bd4e383c63eee999fb1886256",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 82,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/184fe66dd64b9e44116dSourceJointWorkSupport/Variant184fe66dd64b9e44116d3978db9d93fdef4cf50039bc407a20e6c9eb5b8533a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be215062a08a0cfe9586ba80c983a58c29d962d4cb2a95c083deceb439598ee0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/184fe66dd64b9e44116dSourceJointWorkSupport/Variant184fe66dd64b9e44116d3978db9d93fdef4cf50039bc407a20e6c9eb5b8533a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f91bbef7-930c-69b7-0f2e-cf4d6e9eceee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem shiftedWork_intervalIntegrable (A offset p q : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t => (mangoldtLogError t - offset) *
      deriv (jointMangoldtTestProfile A) t) volume p q := by
  have hc := actual_jointTest_contDiff A (by linarith : 0 < A)
  have hd : IntervalIntegrable (deriv (jointMangoldtTestProfile A)) volume p q :=
    hc.continuous_deriv_one.intervalIntegrable p q
  have he : IntervalIntegrable (fun t => mangoldtLogError t *
      deriv (jointMangoldtTestProfile A) t) volume p q := by
    by_cases hpq : p ≤ q
    · exact mangoldtLogError_mul_deriv_intervalIntegrable p q hpq _ hc
    · exact (mangoldtLogError_mul_deriv_intervalIntegrable q p (le_of_not_ge hpq) _ hc).symm
  simpa only [sub_mul] using he.sub (hd.const_mul offset)

/-- The original shifted work equals its shorter support integral, with either orientation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/184fe66dd64b9e44116dSourceJointWorkSupport/Variant184fe66dd64b9e44116d3978db9d93fdef4cf50039bc407a20e6c9eb5b8533a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/184fe66dd64b9e44116dSourceJointWorkSupport/Variant184fe66dd64b9e44116d3978db9d93fdef4cf50039bc407a20e6c9eb5b8533a4.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3a0a743b747979bd4e383c63eee999fb1886256` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
