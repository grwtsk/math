# rescaled_second_moment_le_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88e593f9f044955b8330864805b5c1380ff2face",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/3639b577d96e235b13255273b27c235dc06e6434601ab80f51793e5b98e4d475.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9184d58c-1309-38ea-99a1-6a48c11a1904",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d1e23ab-09fc-1813-547a-d52b3125887b",
  "kind": "theorem",
  "lexical_name": "rescaled_second_moment_le_decay",
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
  "slug": "rescaled-second-moment-le-decay--04730abaf558e809bac3974d",
  "source": {
    "blob": "88e593f9f044955b8330864805b5c1380ff2face",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 122,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramAudit/Variant3639b577d96e235b13255273b27c235dc06e6434601ab80f51793e5b98e4d475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04730abaf558e809bac3974d0b06da852320c1c69c5a04e578174cc3edb9e629",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramAudit/Variant3639b577d96e235b13255273b27c235dc06e6434601ab80f51793e5b98e4d475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d1e23ab-09fc-1813-547a-d52b3125887b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rescaled_second_moment_le_decay (A u : ℝ) (hA : 1 ≤ A) :
    (u / A) ^ 2 * rescaledDensity A u ≤ secondMomentMajorant u / A ^ 2 := by
  have h2 : 1 ≤ A ^ 2 := one_le_pow₀ hA
  have h4 : A ^ 2 ≤ A ^ 4 := by nlinarith [sq_nonneg (A ^ 2 - 1)]
  have h6 : A ^ 2 ≤ A ^ 6 := by
    nlinarith [mul_le_mul_of_nonneg_left (one_le_pow₀ hA : 1 ≤ A ^ 4) (sq_nonneg A)]
  have hb1 := bump_moment_density_nonneg 1 u
  have hb2 := bump_moment_density_nonneg 2 u
  have hb3 := bump_moment_density_nonneg 3 u
  rw [rescaled_second_moment_eq A u hA]
  calc
    _ ≤ (bumpMomentDensity 1 u / (16 * A ^ 2) +
        bumpMomentDensity 2 u / (2 * A ^ 4) + bumpMomentDensity 3 u / A ^ 6) /
          normalizationFloor := by
      apply div_le_div_of_nonneg_left (by positivity)
        normalization_floor_pos (normalization_floor_le A)
    _ ≤ (bumpMomentDensity 1 u / (16 * A ^ 2) +
        bumpMomentDensity 2 u / (2 * A ^ 2) + bumpMomentDensity 3 u / A ^ 2) /
          normalizationFloor := by
      gcongr
      exact normalization_floor_pos.le
    _ = secondMomentMajorant u / A ^ 2 := by
      unfold secondMomentMajorant
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramAudit/Variant3639b577d96e235b13255273b27c235dc06e6434601ab80f51793e5b98e4d475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramAudit/Variant3639b577d96e235b13255273b27c235dc06e6434601ab80f51793e5b98e4d475.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88e593f9f044955b8330864805b5c1380ff2face` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
