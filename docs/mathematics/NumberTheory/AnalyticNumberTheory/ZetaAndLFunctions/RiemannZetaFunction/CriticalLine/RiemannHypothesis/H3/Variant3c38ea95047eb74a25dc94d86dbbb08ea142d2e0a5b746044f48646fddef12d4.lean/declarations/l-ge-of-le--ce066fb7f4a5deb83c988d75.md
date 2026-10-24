# l_ge_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:936705ce-ca99-0a15-b871-e5e3b0451bc5",
  "kind": "lemma",
  "lexical_name": "l_ge_of_le",
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
  "slug": "l-ge-of-le--ce066fb7f4a5deb83c988d75",
  "source": {
    "blob": "ae8f8c70edfb946cac40a20f4d6ebffbfd9eaf13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/H3/Variant3c38ea95047eb74a25dc94d86dbbb08ea142d2e0a5b746044f48646fddef12d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce066fb7f4a5deb83c988d75ce7540f44ca65ec9095c6e324cd6cf94b5f52f28",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/H3/Variant3c38ea95047eb74a25dc94d86dbbb08ea142d2e0a5b746044f48646fddef12d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:936705ce-ca99-0a15-b871-e5e3b0451bc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma l_ge_of_le {l₀ T : ℝ} (hT : 2 * Real.pi * Real.exp l₀ ≤ T) : l₀ ≤ l T := by
  have h2pi : 0 < 2 * Real.pi := by positivity
  have hTpos : 0 < T := lt_of_lt_of_le (by positivity) hT
  unfold l
  rw [Real.le_log_iff_exp_le (div_pos hTpos h2pi), le_div_iff₀ h2pi]
  linarith

set_option maxHeartbeats 1600000 in
/-- **(H3) the diagonal law** [XF′ Lemma 7.1] for a parameter family with Re Λ⋆ = l/2, |Im Λ⋆| ≤ 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/H3/Variant3c38ea95047eb74a25dc94d86dbbb08ea142d2e0a5b746044f48646fddef12d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/H3/Variant3c38ea95047eb74a25dc94d86dbbb08ea142d2e0a5b746044f48646fddef12d4.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae8f8c70edfb946cac40a20f4d6ebffbfd9eaf13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
