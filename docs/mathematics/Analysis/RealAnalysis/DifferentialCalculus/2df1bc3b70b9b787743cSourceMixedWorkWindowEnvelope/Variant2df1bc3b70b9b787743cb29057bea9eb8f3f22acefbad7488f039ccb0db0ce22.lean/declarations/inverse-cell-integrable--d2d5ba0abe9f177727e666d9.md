# inverse_cell_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2678fee565a59464a537ba4de43e8d79d197e383",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2df1bc3b70b9b787743cb29057bea9eb8f3f22acefbad7488f039ccb0db0ce22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9d9e6c4-f41c-a6f6-4689-16a353770a68",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46034295-7bea-675a-4d22-dc265dd2c881",
  "kind": "theorem",
  "lexical_name": "inverse_cell_integrable",
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
  "slug": "inverse-cell-integrable--d2d5ba0abe9f177727e666d9",
  "source": {
    "blob": "2678fee565a59464a537ba4de43e8d79d197e383",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/2df1bc3b70b9b787743cSourceMixedWorkWindowEnvelope/Variant2df1bc3b70b9b787743cb29057bea9eb8f3f22acefbad7488f039ccb0db0ce22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2d5ba0abe9f177727e666d9d57f0f3510debde012f628a7aa3b14753aa7d0c0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/2df1bc3b70b9b787743cSourceMixedWorkWindowEnvelope/Variant2df1bc3b70b9b787743cb29057bea9eb8f3f22acefbad7488f039ccb0db0ce22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46034295-7bea-675a-4d22-dc265dd2c881`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inverse_cell_integrable {k : ℝ} (hk : 0 < k) :
    IntervalIntegrable (fun u : ℝ => 1 / (u * Real.sqrt u)) volume k (k + 1) := by
  have hc : ContinuousOn (fun u : ℝ => 1 / (u * Real.sqrt u)) (Icc k (k + 1)) := by
    intro u hu
    have hu0 := hk.trans_le hu.1
    have hd : ContinuousAt (fun u : ℝ => u * Real.sqrt u) u :=
      continuousAt_id.mul continuousAt_id.sqrt
    exact (continuousAt_const.div hd
      (mul_ne_zero hu0.ne' (Real.sqrt_ne_zero'.mpr hu0))).continuousWithinAt
  exact hc.intervalIntegrable_of_Icc (by linarith)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/2df1bc3b70b9b787743cSourceMixedWorkWindowEnvelope/Variant2df1bc3b70b9b787743cb29057bea9eb8f3f22acefbad7488f039ccb0db0ce22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/2df1bc3b70b9b787743cSourceMixedWorkWindowEnvelope/Variant2df1bc3b70b9b787743cb29057bea9eb8f3f22acefbad7488f039ccb0db0ce22.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2678fee565a59464a537ba4de43e8d79d197e383` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
