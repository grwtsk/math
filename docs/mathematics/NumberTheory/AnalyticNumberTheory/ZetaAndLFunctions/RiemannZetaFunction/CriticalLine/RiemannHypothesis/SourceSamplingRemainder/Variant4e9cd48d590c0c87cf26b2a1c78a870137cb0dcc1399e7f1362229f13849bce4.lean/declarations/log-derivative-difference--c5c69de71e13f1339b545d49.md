# log_derivative_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a60b79767177e2a916d820ba6b4d63163d91412e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e9cd48d590c0c87cf26b2a1c78a870137cb0dcc1399e7f1362229f13849bce4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d6cc8f5-dd2b-1290-eece-7cf2365ee1c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:591fc1a1-9962-a7cc-e1c9-e3e573e92610",
  "kind": "theorem",
  "lexical_name": "log_derivative_difference",
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
  "slug": "log-derivative-difference--c5c69de71e13f1339b545d49",
  "source": {
    "blob": "a60b79767177e2a916d820ba6b4d63163d91412e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant4e9cd48d590c0c87cf26b2a1c78a870137cb0dcc1399e7f1362229f13849bce4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5c69de71e13f1339b545d496dfe7eefc6c12456b84e3c3fb93b1b37f859df6b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant4e9cd48d590c0c87cf26b2a1c78a870137cb0dcc1399e7f1362229f13849bce4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:591fc1a1-9962-a7cc-e1c9-e3e573e92610`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_derivative_difference {A k u : ℝ} (hA : 1 ≤ A) (hk : 0 < k)
    (hu : 0 < u) :
    deriv (logProfile A k) u - logModelDerivative A k u =
      1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) *
        ((1 - Real.log u / 2) * correlationTaylorRemainder A (Real.log k) (Real.log u) +
          Real.log u *
            (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k + Real.log u) -
              deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k))) := by
  rw [(logProfile_hasDerivAt (by linarith) k hu).deriv, samplingDerivative_prefactor hk hu]
  unfold logModelDerivative correlationTaylorRemainder
  ring

/-- Curvature bounds the actual plain derivative error at every positive sampled variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant4e9cd48d590c0c87cf26b2a1c78a870137cb0dcc1399e7f1362229f13849bce4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant4e9cd48d590c0c87cf26b2a1c78a870137cb0dcc1399e7f1362229f13849bce4.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a60b79767177e2a916d820ba6b4d63163d91412e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
