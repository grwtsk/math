# criticalDirichletTent_endpoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d44c2ddb-a493-5cea-9337-2eebccb6c53a",
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
  "slug": "criticaldirichlettent-endpoints--2cad04058a5dfb3081455fa7",
  "source": {
    "blob": "72125ea9298b77d4d62fc3486b73a96979f45f46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variant81dd39c4f259f0da7fcaa094497675b3caed60821101f43dfad8338dde33034c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cad04058a5dfb3081455fa771f42d9e5d17798c411b21a91e9617a4281b05b2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variant81dd39c4f259f0da7fcaa094497675b3caed60821101f43dfad8338dde33034c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d44c2ddb-a493-5cea-9337-2eebccb6c53a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–66.

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
  · constructor
    · rw [max_eq_left hs.2, sub_self, mul_zero]
      field_simp [ne_of_gt hL]
    · intro u hu
      rw [max_eq_right hu.2, sub_self, mul_zero]
      field_simp [ne_of_gt hL]

/-- Padding to one closed upper inventory keeps the exact zero hinge at a touching atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variant81dd39c4f259f0da7fcaa094497675b3caed60821101f43dfad8338dde33034c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variant81dd39c4f259f0da7fcaa094497675b3caed60821101f43dfad8338dde33034c.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72125ea9298b77d4d62fc3486b73a96979f45f46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
