# iteratedDifference_sampling_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "058469b9cee2fd5b4666a680245a2f98368e398a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 510,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f123b3c6cecf4a46f5ced293a7bb85cb4f25800986e7d88245c1987beb8d616.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18e26c1d-d087-b436-d95a-52ede6ef025e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef506555-90c4-afb3-84e6-1d7c0885fb02",
  "kind": "theorem",
  "lexical_name": "iteratedDifference_sampling_zero",
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
  "slug": "iterateddifference-sampling-zero--b95019811e96beb488ff49c2",
  "source": {
    "blob": "058469b9cee2fd5b4666a680245a2f98368e398a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 510,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant7f123b3c6cecf4a46f5ced293a7bb85cb4f25800986e7d88245c1987beb8d616.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b95019811e96beb488ff49c2907332e962861a7aebeecce5c6e973b11eb0bc7a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant7f123b3c6cecf4a46f5ced293a7bb85cb4f25800986e7d88245c1987beb8d616.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef506555-90c4-afb3-84e6-1d7c0885fb02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedDifference_sampling_zero (A x u : ℝ) (hA : 1 ≤ A)
    (hx : 0 < x) (hu : 0 < u) (hcut : Real.exp (2 * A) ≤ x * u) :
    TwoMomentSampling.samplingIntegrand (iteratedDifference A) x u = 0 := by
  have hlog : 2 * A ≤ Real.log (x * u) := by
    simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos _) hcut
  rw [TwoMomentSampling.samplingIntegrand, ← Real.log_mul hx.ne' hu.ne',
    iteratedDifference_zero_right A _ hA hlog, mul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant7f123b3c6cecf4a46f5ced293a7bb85cb4f25800986e7d88245c1987beb8d616.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant7f123b3c6cecf4a46f5ced293a7bb85cb4f25800986e7d88245c1987beb8d616.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `058469b9cee2fd5b4666a680245a2f98368e398a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
