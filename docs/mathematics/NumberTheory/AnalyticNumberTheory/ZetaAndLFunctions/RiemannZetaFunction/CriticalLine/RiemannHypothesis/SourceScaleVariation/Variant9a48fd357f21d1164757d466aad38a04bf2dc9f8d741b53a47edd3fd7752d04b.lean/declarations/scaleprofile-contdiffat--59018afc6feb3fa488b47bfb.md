# scaleProfile_contDiffAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3167bc74335cf06da319d06f5f4ef8a3f7d9a3f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a48fd357f21d1164757d466aad38a04bf2dc9f8d741b53a47edd3fd7752d04b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d39bfae8-682f-2552-8341-04a06fb2de09",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b12cbd90-a567-2ed8-cd29-d9f910117409",
  "kind": "theorem",
  "lexical_name": "scaleProfile_contDiffAt",
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
  "slug": "scaleprofile-contdiffat--59018afc6feb3fa488b47bfb",
  "source": {
    "blob": "f3167bc74335cf06da319d06f5f4ef8a3f7d9a3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaleVariation/Variant9a48fd357f21d1164757d466aad38a04bf2dc9f8d741b53a47edd3fd7752d04b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59018afc6feb3fa488b47bfbb9b7f66bb5bb9828cc91ba8b5546f99586556400",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaleVariation/Variant9a48fd357f21d1164757d466aad38a04bf2dc9f8d741b53a47edd3fd7752d04b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b12cbd90-a567-2ed8-cd29-d9f910117409`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaleProfile_contDiffAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    ContDiffAt ℝ 1 (fun B : ℝ => scaleProfile B x) A := by
  have h2 : ContDiff ℝ 1 (deriv (deriv sourceBump)) :=
    sourceBump_contDiff_three.deriv'.deriv'
  have h0 : ContDiff ℝ 1 sourceBump := sourceBump_contDiff_three.of_le (by norm_num)
  have hn := sourceNormalization_pos hA
  unfold scaleProfile sourceNormalization
  fun_prop (disch := first | positivity | exact hA.ne' | exact hn.ne')

/-- The actual source has the proved scale regularity throughout the positive-axis domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaleVariation/Variant9a48fd357f21d1164757d466aad38a04bf2dc9f8d741b53a47edd3fd7752d04b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaleVariation/Variant9a48fd357f21d1164757d466aad38a04bf2dc9f8d741b53a47edd3fd7752d04b.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3167bc74335cf06da319d06f5f4ef8a3f7d9a3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
