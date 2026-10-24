# setIntegral_sq_shift_le_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:baae5cf2-1e43-1bfa-8b12-53f31ff76ef4",
  "kind": "lemma",
  "lexical_name": "setIntegral_sq_shift_le_left",
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
  "slug": "setintegral-sq-shift-le-left--00f871eee1be4ed94177becd",
  "source": {
    "blob": "88d97132e018384b8355161f5b3313f3f9efe4a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 43,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant6698c35bc91361b740fc0ed20e0f455966486a8d2cdb939cd5dc9b8cc0abe5b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00f871eee1be4ed94177becd2bce4fe5335b0588284d20a494d95473b11e28d2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant6698c35bc91361b740fc0ed20e0f455966486a8d2cdb939cd5dc9b8cc0abe5b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:baae5cf2-1e43-1bfa-8b12-53f31ff76ef4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setIntegral_sq_shift_le_left (hΦint : Integrable (fun x => Φ x ^ 2)) (S : Set ℝ) (x : ℝ) :
    ∫ y in S, Φ (x - y) ^ 2 ≤ ∫ y, Φ y ^ 2 := by
  calc ∫ y in S, Φ (x - y) ^ 2 ≤ ∫ y, Φ (x - y) ^ 2 :=
        setIntegral_le_integral (hΦint.comp_sub_left x)
          (Filter.Eventually.of_forall fun y => sq_nonneg _)
    _ = ∫ y, Φ y ^ 2 := integral_sub_left_eq_self (fun y => Φ y ^ 2) volume x

/-- Icc-set-integral = interval integral (`T ≤ 2T`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant6698c35bc91361b740fc0ed20e0f455966486a8d2cdb939cd5dc9b8cc0abe5b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant6698c35bc91361b740fc0ed20e0f455966486a8d2cdb939cd5dc9b8cc0abe5b9.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88d97132e018384b8355161f5b3313f3f9efe4a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
