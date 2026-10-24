# mangoldtFourierMultiplier_quadratic_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87b25ea5cad854eb498f9259ffa51acbfa9dce3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e33712af379c00fd05b1babdf00c31c40386f0b5a1d24c58ee8f7659d135076.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f5e9b2e-bad3-e35f-3071-c187ea740617",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cebb022c-3033-1e1a-e1d3-876465e24734",
  "kind": "theorem",
  "lexical_name": "mangoldtFourierMultiplier_quadratic_integral",
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
  "slug": "mangoldtfouriermultiplier-quadratic-integral--61a367e682ecd0fd490fb643",
  "source": {
    "blob": "87b25ea5cad854eb498f9259ffa51acbfa9dce3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 158,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Variant2e33712af379c00fd05b1babdf00c31c40386f0b5a1d24c58ee8f7659d135076.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61a367e682ecd0fd490fb64335587bf7949dc5d65007ba8db4fc2f27ae0668d9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Variant2e33712af379c00fd05b1babdf00c31c40386f0b5a1d24c58ee8f7659d135076.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cebb022c-3033-1e1a-e1d3-876465e24734`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtFourierMultiplier_quadratic_integral (A : ℝ) (f : ComplexL2) :
    (⟪f, mangoldtFourierMultiplier A f⟫_ℂ).re =
      ∫ ξ : ℝ, mangoldtFourierSymbol A ξ * Complex.normSq (f ξ) := by
  rw [L2.inner_def, ← integral_re (L2.integrable_inner f (mangoldtFourierMultiplier A f))]
  apply integral_congr_ae
  filter_upwards [mangoldtFourierMultiplier_coe_ae A f] with ξ hξ
  rw [hξ, inner_real_multiplier]

/-- Pointed Parseval for the actual arithmetic operator has no standard-frequency prefactor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Variant2e33712af379c00fd05b1babdf00c31c40386f0b5a1d24c58ee8f7659d135076.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Variant2e33712af379c00fd05b1babdf00c31c40386f0b5a1d24c58ee8f7659d135076.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87b25ea5cad854eb498f9259ffa51acbfa9dce3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
