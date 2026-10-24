# dcoef_eq_D1coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc4906f1-56d6-8cb8-508e-2bbc2b48c12c",
  "kind": "lemma",
  "lexical_name": "dcoef_eq_D1coeff",
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
  "slug": "dcoef-eq-d1coeff--fa37f217bde9c8dda8da84cf",
  "source": {
    "blob": "ae8f8c70edfb946cac40a20f4d6ebffbfd9eaf13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/H3/Variant3c38ea95047eb74a25dc94d86dbbb08ea142d2e0a5b746044f48646fddef12d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa37f217bde9c8dda8da84cf0c641c7e856ebaef6ab186f505ec2dd8370188f5",
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

Occurrence: `result:dc4906f1-56d6-8cb8-508e-2bbc2b48c12c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dcoef_eq_D1coeff (j : ℕ) : dcoef (j + 2) = D1coeff (j + 1) / (2 * ((j + 1 : ℕ) : ℝ) + 4) := by
  simp only [dcoef, D1coeff]
  rw [show j + 2 - 1 = j + 1 by omega, show 2 * (j + 1) + 2 = 2 * (j + 2) by ring]
  have h1 : ((j + 1).factorial : ℝ) ≠ 0 := by positivity
  have h2 : ((2 * (j + 2)).factorial : ℝ) ≠ 0 := by positivity
  push_cast
  field_simp
  ring

/-- l(T) ≥ l₀ once T ≥ 2π·e^{l₀}. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/H3/Variant3c38ea95047eb74a25dc94d86dbbb08ea142d2e0a5b746044f48646fddef12d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/H3/Variant3c38ea95047eb74a25dc94d86dbbb08ea142d2e0a5b746044f48646fddef12d4.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae8f8c70edfb946cac40a20f4d6ebffbfd9eaf13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
