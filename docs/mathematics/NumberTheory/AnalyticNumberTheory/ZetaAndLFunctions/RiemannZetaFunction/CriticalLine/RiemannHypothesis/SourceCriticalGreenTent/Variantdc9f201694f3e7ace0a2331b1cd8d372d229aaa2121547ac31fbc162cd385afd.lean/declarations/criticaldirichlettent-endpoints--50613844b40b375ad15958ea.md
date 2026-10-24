# criticalDirichletTent_endpoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5651396f-175a-c983-042c-17d9f169de2b",
  "kind": "theorem",
  "lexical_name": "criticalDirichletTent_endpoints",
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
  "slug": "criticaldirichlettent-endpoints--50613844b40b375ad15958ea",
  "source": {
    "blob": "7a83bcb838c9c28f928e80cc302d62aba2c9935d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variantdc9f201694f3e7ace0a2331b1cd8d372d229aaa2121547ac31fbc162cd385afd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50613844b40b375ad15958eacd816e484f3497860b8aa691da0f0f6566db301e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variantdc9f201694f3e7ace0a2331b1cd8d372d229aaa2121547ac31fbc162cd385afd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5651396f-175a-c983-042c-17d9f169de2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalDirichletTent_endpoints {L s : ℝ} (hL : 0 < L)
    (hs : s ∈ Icc 0 L) :
    criticalDirichletTent L 0 s = 0 ∧ criticalDirichletTent L L s = 0 ∧
      ∀ u ∈ Icc 0 L, criticalDirichletTent L u L = 0 := by
  unfold criticalDirichletTent
  constructor
  · rw [min_eq_left hs.1, zero_mul]
    field_simp [ne_of_gt hL]
    ring
  · constructor
    · rw [max_eq_left hs.2, sub_self, mul_zero]
      field_simp [ne_of_gt hL]
      ring
    · intro u hu
      rw [max_eq_right hu.2, sub_self, mul_zero]
      field_simp [ne_of_gt hL]
      ring

/-- Padding to one closed upper inventory keeps the exact zero hinge at a touching atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variantdc9f201694f3e7ace0a2331b1cd8d372d229aaa2121547ac31fbc162cd385afd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variantdc9f201694f3e7ace0a2331b1cd8d372d229aaa2121547ac31fbc162cd385afd.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a83bcb838c9c28f928e80cc302d62aba2c9935d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
