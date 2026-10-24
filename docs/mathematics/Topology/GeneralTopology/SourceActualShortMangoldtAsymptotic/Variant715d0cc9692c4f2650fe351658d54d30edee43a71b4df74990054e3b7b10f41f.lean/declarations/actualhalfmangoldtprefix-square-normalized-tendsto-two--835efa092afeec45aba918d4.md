# actualHalfMangoldtPrefix_square_normalized_tendsto_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e818d373-b1f4-fcab-2283-2be00329831d",
  "kind": "theorem",
  "lexical_name": "actualHalfMangoldtPrefix_square_normalized_tendsto_two",
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
  "slug": "actualhalfmangoldtprefix-square-normalized-tendsto-two--835efa092afeec45aba918d4",
  "source": {
    "blob": "130a925fddc992054566722686c7320306c048ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 128,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualShortMangoldtAsymptotic/Variant715d0cc9692c4f2650fe351658d54d30edee43a71b4df74990054e3b7b10f41f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:835efa092afeec45aba918d42d11cf814b38f687eccaded7289b246a5c987293",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualShortMangoldtAsymptotic/Variant715d0cc9692c4f2650fe351658d54d30edee43a71b4df74990054e3b7b10f41f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e818d373-b1f4-fcab-2283-2be00329831d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualHalfMangoldtPrefix_square_normalized_tendsto_two :
    Tendsto (fun A : ℝ => actualMangoldtHalfClosedPrefix (2 * Real.log A) / A)
      atTop (𝓝 2) := by
  have ht : Tendsto (fun A : ℝ => 2 * Real.log A) atTop atTop :=
    Real.tendsto_log_atTop.const_mul_atTop (by norm_num)
  have hh := (actualNormalizedMangoldtExpReadout_tendsto_inv
    (by norm_num : (0 : ℝ) < 1 / 2)).comp ht
  norm_num at hh
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  have hp : 0 < A := by linarith
  have hT : 0 ≤ 2 * Real.log A := mul_nonneg (by norm_num) (Real.log_nonneg hA)
  change actualNormalizedMangoldtExpReadout (1 / 2) (2 * Real.log A) = _
  rw [actualNormalizedMangoldtExpReadout_half hT]
  rw [show -(2 * Real.log A) / 2 = -Real.log A by ring,
    Real.exp_neg, Real.exp_log hp]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualShortMangoldtAsymptotic/Variant715d0cc9692c4f2650fe351658d54d30edee43a71b4df74990054e3b7b10f41f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualShortMangoldtAsymptotic/Variant715d0cc9692c4f2650fe351658d54d30edee43a71b4df74990054e3b7b10f41f.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `130a925fddc992054566722686c7320306c048ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
