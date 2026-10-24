# weighted_translated_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33c4819098a09041062ef80ad7a9d717c31571bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/9861c8de2a4a62dc78c0b73b66c93e9ee8020c0f151e3042f0162853a1abb6fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2f1a876-45ac-aaf5-552e-13602a8ab722",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:247bf639-7184-72b3-4fce-d5ab3ddb4d71",
  "kind": "theorem",
  "lexical_name": "weighted_translated_integrable",
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
  "slug": "weighted-translated-integrable--80fa6486af34f6da18fbe65f",
  "source": {
    "blob": "33c4819098a09041062ef80ad7a9d717c31571bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 168,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelMomentStatements/Variant9861c8de2a4a62dc78c0b73b66c93e9ee8020c0f151e3042f0162853a1abb6fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80fa6486af34f6da18fbe65f6e9c5b56ddf3f859be874e5ed943941dc8728769",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelMomentStatements/Variant9861c8de2a4a62dc78c0b73b66c93e9ee8020c0f151e3042f0162853a1abb6fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:247bf639-7184-72b3-4fce-d5ab3ddb4d71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_translated_integrable (t : ℝ) :
    Integrable (fun r : ℝ => Real.exp (r / 2) * v (t - 1 - r)) := by
  have hi := ((weighted_normalizedTest_integrable 1 (-1 / 2) le_rfl).comp_sub_left
    (t - 1)).const_mul (Real.exp ((t - 1) / 2))
  simpa only [weighted_translate] using hi

/-- The original negative half-exponential source moment cancels after translation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelMomentStatements/Variant9861c8de2a4a62dc78c0b73b66c93e9ee8020c0f151e3042f0162853a1abb6fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelMomentStatements/Variant9861c8de2a4a62dc78c0b73b66c93e9ee8020c0f151e3042f0162853a1abb6fb.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33c4819098a09041062ef80ad7a9d717c31571bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
