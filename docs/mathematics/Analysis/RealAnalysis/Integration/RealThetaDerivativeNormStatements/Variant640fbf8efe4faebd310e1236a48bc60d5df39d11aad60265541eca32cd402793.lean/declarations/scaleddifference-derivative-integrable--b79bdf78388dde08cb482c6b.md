# scaledDifference_derivative_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "19791ffdde54aa78e16840a8b21160fce4b5cb73",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 613,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/640fbf8efe4faebd310e1236a48bc60d5df39d11aad60265541eca32cd402793.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afd8001a-ab7c-cbcb-3657-8cf4e07fcadd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d4f3498-b642-3e76-5cdf-07098ffa1c15",
  "kind": "theorem",
  "lexical_name": "scaledDifference_derivative_integrable",
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
  "slug": "scaleddifference-derivative-integrable--b79bdf78388dde08cb482c6b",
  "source": {
    "blob": "19791ffdde54aa78e16840a8b21160fce4b5cb73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 624,
    "line": 613,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormStatements/Variant640fbf8efe4faebd310e1236a48bc60d5df39d11aad60265541eca32cd402793.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b79bdf78388dde08cb482c6b4bf2470b65d66dab0579fc03eb8e36263978e1e1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormStatements/Variant640fbf8efe4faebd310e1236a48bc60d5df39d11aad60265541eca32cd402793.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d4f3498-b642-3e76-5cdf-07098ffa1c15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–624.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledDifference_derivative_integrable (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    IntegrableOn (deriv (fun t : ℝ ↦ differenceSamplingKernel A (q * t))) (Set.Ioi 1) := by
  let K := 2 + 9 * Real.sqrt (65 / 3) / A + 12 * (65 / (3 * A ^ 2)) +
    4 * Real.sqrt (325325 / 18) / A ^ 3
  apply (inverse_root_majorant_integrable q K hq).mono'
    (stronglyMeasurable_deriv (fun t : ℝ ↦ differenceSamplingKernel A (q * t))).aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  rw [Real.norm_eq_abs, (scaledDifference_hasDerivAt A q t hA hq (zero_lt_one.trans ht)).deriv,
    abs_mul, abs_of_pos hq]
  exact mul_le_mul_of_nonneg_left
    (differenceSamplingKernel_derivative_abs_le A (q * t) hA (mul_pos hq (zero_lt_one.trans ht))) hq.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormStatements/Variant640fbf8efe4faebd310e1236a48bc60d5df39d11aad60265541eca32cd402793.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormStatements/Variant640fbf8efe4faebd310e1236a48bc60d5df39d11aad60265541eca32cd402793.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19791ffdde54aa78e16840a8b21160fce4b5cb73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
