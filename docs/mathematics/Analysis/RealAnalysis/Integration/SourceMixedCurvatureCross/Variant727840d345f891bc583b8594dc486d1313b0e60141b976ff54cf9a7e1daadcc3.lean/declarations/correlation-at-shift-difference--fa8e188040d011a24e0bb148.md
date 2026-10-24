# correlation_at_shift_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ccdc73507aad6b7b8963a46d050cb547c00e380",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/727840d345f891bc583b8594dc486d1313b0e60141b976ff54cf9a7e1daadcc3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03eb631b-a57c-0ff0-fbc0-706c3be3486b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e80ef274-5d11-c680-eaf4-4beac1250f17",
  "kind": "theorem",
  "lexical_name": "correlation_at_shift_difference",
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
  "slug": "correlation-at-shift-difference--fa8e188040d011a24e0bb148",
  "source": {
    "blob": "4ccdc73507aad6b7b8963a46d050cb547c00e380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceMixedCurvatureCross/Variant727840d345f891bc583b8594dc486d1313b0e60141b976ff54cf9a7e1daadcc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa8e188040d011a24e0bb148b58bd70d29ee3e72102831391aa04e4a0cdc4816",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceMixedCurvatureCross/Variant727840d345f891bc583b8594dc486d1313b0e60141b976ff54cf9a7e1daadcc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e80ef274-5d11-c680-eaf4-4beac1250f17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem correlation_at_shift_difference (A u w : ℝ) :
    sourceCorrelation explicitSecondDerivative A (u - w) =
      ∫ v : ℝ, normalizedTest explicitSecondDerivative A (v + u) *
        normalizedTest explicitSecondDerivative A (v + w) := by
  unfold sourceCorrelation
  symm
  calc
    _ = ∫ v : ℝ, normalizedTest explicitSecondDerivative A (v + u) *
        normalizedTest explicitSecondDerivative A (v + u - (u - w)) := by
      apply integral_congr_ae
      filter_upwards [] with v
      rw [show v + u - (u - w) = v + w by ring]
    _ = _ := integral_add_right_eq_self
      (fun v : ℝ => normalizedTest explicitSecondDerivative A v *
        normalizedTest explicitSecondDerivative A (v - (u - w))) u

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceMixedCurvatureCross/Variant727840d345f891bc583b8594dc486d1313b0e60141b976ff54cf9a7e1daadcc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceMixedCurvatureCross/Variant727840d345f891bc583b8594dc486d1313b0e60141b976ff54cf9a7e1daadcc3.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ccdc73507aad6b7b8963a46d050cb547c00e380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
