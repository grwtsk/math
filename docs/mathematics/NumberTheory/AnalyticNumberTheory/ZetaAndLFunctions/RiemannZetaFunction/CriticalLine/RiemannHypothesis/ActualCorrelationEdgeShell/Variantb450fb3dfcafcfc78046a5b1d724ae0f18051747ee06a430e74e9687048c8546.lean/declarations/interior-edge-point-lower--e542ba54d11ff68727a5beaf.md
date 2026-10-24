# interior_edge_point_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94dc8c54-0185-80ea-7501-7b948d1aba6c",
  "kind": "theorem",
  "lexical_name": "interior_edge_point_lower",
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
  "slug": "interior-edge-point-lower--e542ba54d11ff68727a5beaf",
  "source": {
    "blob": "60e9fb419b1af20120c0d0b6a20723cd202fdb27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeShell/Variantb450fb3dfcafcfc78046a5b1d724ae0f18051747ee06a430e74e9687048c8546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e542ba54d11ff68727a5beaf49f9bab691aef46c2d7b5b155d4545cbc2a70da6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeShell/Variantb450fb3dfcafcfc78046a5b1d724ae0f18051747ee06a430e74e9687048c8546.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94dc8c54-0185-80ea-7501-7b948d1aba6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interior_edge_point_lower {A s : ℝ} (hA : 8 ≤ A)
    (hs : 1 / 4 ≤ s) (hs2 : s ≤ 2) :
    1 / (16 * (A ^ 4 * Real.sqrt A)) ≤ v A (A - s) := by
  have hpos : 0 < A := by linarith
  have hsq : (1 / 16 : ℝ) ≤ s ^ 2 := by nlinarith
  have hd : 0 ≤ A ^ 4 * Real.sqrt A := by positivity
  have h := div_le_div_of_nonneg_right hsq hd
  have heq : 1 / (16 * (A ^ 4 * Real.sqrt A)) =
      (1 / 16 : ℝ) / (A ^ 4 * Real.sqrt A) := by ring
  rw [heq]
  exact h.trans (actual_normalized_edge_lower hA (by linarith) hs2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeShell/Variantb450fb3dfcafcfc78046a5b1d724ae0f18051747ee06a430e74e9687048c8546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeShell/Variantb450fb3dfcafcfc78046a5b1d724ae0f18051747ee06a430e74e9687048c8546.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60e9fb419b1af20120c0d0b6a20723cd202fdb27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
