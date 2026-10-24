# mangoldtFourierMultiplier_quadratic_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61b9b7ee81ad0410bfd779416c22ba72f826cac7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64b6857a68f78857c1f67f3615141e0d4f89af86234a908df48c2d793385f116.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c65068a-2f7e-3e0a-e9c6-72b98d3a1339",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d94607c-c96d-4dbe-cd26-88250544b7f0",
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
  "slug": "mangoldtfouriermultiplier-quadratic-integral--ef684c4fb1dc10484da09b69",
  "source": {
    "blob": "61b9b7ee81ad0410bfd779416c22ba72f826cac7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 163,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceV2Prebytes/Variant64b6857a68f78857c1f67f3615141e0d4f89af86234a908df48c2d793385f116.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef684c4fb1dc10484da09b69d8192bdf7612499478ef09d1b162008b6b357f4f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceV2Prebytes/Variant64b6857a68f78857c1f67f3615141e0d4f89af86234a908df48c2d793385f116.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d94607c-c96d-4dbe-cd26-88250544b7f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtFourierMultiplier_quadratic_integral (A : ℝ) (f : ComplexL2) :
    (⟪f, mangoldtFourierMultiplier A f⟫_ℂ).re =
      ∫ ξ : ℝ, mangoldtFourierSymbol A ξ * Complex.normSq (f ξ) := by
  rw [L2.inner_def]
  change RCLike.re (∫ ξ : ℝ, ⟪f ξ, (mangoldtFourierMultiplier A f) ξ⟫_ℂ) = _
  rw [← integral_re (L2.integrable_inner (𝕜 := ℂ) f (mangoldtFourierMultiplier A f))]
  apply integral_congr_ae
  filter_upwards [mangoldtFourierMultiplier_coe_ae A f] with ξ hξ
  rw [hξ]
  exact inner_real_multiplier _ _

/-- Pointed Parseval for the actual arithmetic operator has no standard-frequency prefactor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceV2Prebytes/Variant64b6857a68f78857c1f67f3615141e0d4f89af86234a908df48c2d793385f116.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceV2Prebytes/Variant64b6857a68f78857c1f67f3615141e0d4f89af86234a908df48c2d793385f116.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61b9b7ee81ad0410bfd779416c22ba72f826cac7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
