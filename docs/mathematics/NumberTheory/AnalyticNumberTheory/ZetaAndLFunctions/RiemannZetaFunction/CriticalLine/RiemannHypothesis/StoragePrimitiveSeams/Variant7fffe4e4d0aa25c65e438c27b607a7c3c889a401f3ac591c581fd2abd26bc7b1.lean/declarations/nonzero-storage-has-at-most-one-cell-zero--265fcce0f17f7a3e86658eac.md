# nonzero_storage_has_at_most_one_cell_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b0f0c51-d166-d03b-259c-4334e3df3cc9",
  "kind": "theorem",
  "lexical_name": "nonzero_storage_has_at_most_one_cell_zero",
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
  "slug": "nonzero-storage-has-at-most-one-cell-zero--265fcce0f17f7a3e86658eac",
  "source": {
    "blob": "0f379f131ad7d861e4823b3dc6be831ec3951d72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StoragePrimitiveSeams/Variant7fffe4e4d0aa25c65e438c27b607a7c3c889a401f3ac591c581fd2abd26bc7b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:265fcce0f17f7a3e86658eac895e631b40cc0b6812ff04f178f540f438125217",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StoragePrimitiveSeams/Variant7fffe4e4d0aa25c65e438c27b607a7c3c889a401f3ac591c581fd2abd26bc7b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b0f0c51-d166-d03b-259c-4334e3df3cc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonzero_storage_has_at_most_one_cell_zero (b : ℕ → ℝ) {N : ℕ} {x y : ℝ}
    (hN : 1 ≤ N) (hB : cumulativeDiscrepancy b N ≠ 0)
    (hx : x ∈ Set.Ico (N : ℝ) (N + 1)) (hy : y ∈ Set.Ico (N : ℝ) (N + 1))
    (hfx : closedPrimitive b x = 0) (hfy : closedPrimitive b y = 0) : x = y := by
  rcases lt_trichotomy x y with hxy | heq | hyx
  · have hz := (storage_sign_is_cell_increment_sign b hN hx.1 hxy hy.2).2.2.mp
      (hfx.trans hfy.symm)
    exact (hB hz).elim
  · exact heq
  · have hz := (storage_sign_is_cell_increment_sign b hN hy.1 hyx hx.2).2.2.mp
      (hfy.trans hfx.symm)
    exact (hB hz).elim

/-- The actual first closed ordinary-prime hinge vanishes, despite negative storage. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StoragePrimitiveSeams/Variant7fffe4e4d0aa25c65e438c27b607a7c3c889a401f3ac591c581fd2abd26bc7b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StoragePrimitiveSeams/Variant7fffe4e4d0aa25c65e438c27b607a7c3c889a401f3ac591c581fd2abd26bc7b1.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f379f131ad7d861e4823b3dc6be831ec3951d72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
