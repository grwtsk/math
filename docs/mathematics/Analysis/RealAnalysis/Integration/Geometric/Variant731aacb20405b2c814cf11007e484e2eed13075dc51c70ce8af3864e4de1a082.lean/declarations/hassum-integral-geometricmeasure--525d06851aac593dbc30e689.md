# hasSum_integral_geometricMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad1cf17ae08402eeadfe2d99563aab439da39a3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/731aacb20405b2c814cf11007e484e2eed13075dc51c70ce8af3864e4de1a082.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ace6894c-e897-a205-4e41-e253c0f5255d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91fa6640-e5ea-eff4-99b4-b6dff22d51b3",
  "kind": "lemma",
  "lexical_name": "hasSum_integral_geometricMeasure",
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
  "slug": "hassum-integral-geometricmeasure--525d06851aac593dbc30e689",
  "source": {
    "blob": "ad1cf17ae08402eeadfe2d99563aab439da39a3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 110,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Geometric/Variant731aacb20405b2c814cf11007e484e2eed13075dc51c70ce8af3864e4de1a082.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:525d06851aac593dbc30e689aab3bc324764151710470490d850565a32e3c960",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Geometric/Variant731aacb20405b2c814cf11007e484e2eed13075dc51c70ce8af3864e4de1a082.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91fa6640-e5ea-eff4-99b4-b6dff22d51b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_integral_geometricMeasure [CompleteSpace E]
    (hp : p ≠ 0) (hf : Integrable f (geometricMeasure p)) :
    HasSum (fun n ↦ ((1 - p : ℝ) ^ n * p) • f n) (∫ n, f n ∂geometricMeasure p) := by
  have : (fun n ↦ ((1 - p : ℝ) ^ n * p) • f n) =
      fun n ↦ (ENNReal.ofReal ((1 - p) ^ n * p)).toReal • f n := by
    ext n; rw [ENNReal.toReal_ofReal (geometricMeasure_nonneg p n)]
  rw [this, geometricMeasure_eq hp]
  apply hasSum_integral_sum_dirac (by simp)
  convert! (integrable_geometricMeasure_iff hp).1 hf with n
  rw [ENNReal.toReal_ofReal (geometricMeasure_nonneg p n)]

/-- If a function is integrable with respect to `geometricMeasure p`, then its integral
against this measure is given by its sum weighted by `(1 - p) ^ n * p`.

See `integral_geometricMeasure` for a version where the codomain is finite-dimensional
and does not require the integrability hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Geometric/Variant731aacb20405b2c814cf11007e484e2eed13075dc51c70ce8af3864e4de1a082.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Geometric/Variant731aacb20405b2c814cf11007e484e2eed13075dc51c70ce8af3864e4de1a082.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad1cf17ae08402eeadfe2d99563aab439da39a3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
