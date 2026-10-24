# continuous_integral_comp_L1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c080852-e914-f817-d5ed-eacab4a4c487",
  "kind": "theorem",
  "lexical_name": "continuous_integral_comp_L1",
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
  "slug": "continuous-integral-comp-l1--dbeda317ab1dc2b8ad433dbd",
  "source": {
    "blob": "9bc7c385db5891e663e4cac9a7af68fbfa474d41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbeda317ab1dc2b8ad433dbd0e2ac847e82b5bdc92d9dcbcff8a3e826263f505",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c080852-e914-f817-d5ed-eacab4a4c487`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_integral_comp_L1 (L : E →L[𝕜] F) :
    Continuous fun φ : X →₁[μ] E => ∫ x : X, L (φ x) ∂μ := by
  rw [← funext L.integral_compLp]; exact continuous_integral.comp (L.compLpL 1 μ).continuous

variable [CompleteSpace F] [NormedSpace ℝ E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant877dfe0b3015a9dbfedba8af21e19512149498ced860feb2b7f3caf0e0ca1ef7.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bc7c385db5891e663e4cac9a7af68fbfa474d41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
