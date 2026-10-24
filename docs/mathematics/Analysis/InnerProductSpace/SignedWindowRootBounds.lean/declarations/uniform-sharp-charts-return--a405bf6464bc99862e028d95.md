# uniform_sharp_charts_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc19dd7e-c6fe-bf3f-4348-8308ef3c9119",
  "kind": "theorem",
  "lexical_name": "uniform_sharp_charts_return",
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
  "slug": "uniform-sharp-charts-return--a405bf6464bc99862e028d95",
  "source": {
    "blob": "e9722238202ea6a32049e45d036a9d1e60cf9af9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 80,
    "path": "GRWTSK/Analysis/InnerProductSpace/SignedWindowRootBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a405bf6464bc99862e028d9584eb5d64c8989524d83952898bb4cfc03dbd6744",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/SignedWindowRootBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc19dd7e-c6fe-bf3f-4348-8308ef3c9119`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_sharp_charts_return {b C q : ℝ}
    (hb : PinnedShellWidth b) (hC : 0 ≤ C) (hq : 0 ≤ q)
    (producer : ∀ T : ℝ, b ≤ T → ∃ (s : Finset ℕ) (charts : ℕ → Chart b T)
      (budgets : ℕ → ℝ),
      (∀ u ∈ Icc (T-b) T, 1 ≤ ∑ i ∈ s, (charts i).cutoff u^2) ∧
      (∀ i ∈ s, Nonempty (SharpBudgetDerivation (charts i) (budgets i))) ∧
      (∑ i ∈ s, budgets i ≤ C*(1+T)^q)) : HSS b := by
  apply uniform_chart_budgets_imply_HSS hb hC hq
  intro T hT
  obtain ⟨s,charts,budgets,coverage,derivations,total⟩ := producer T hT
  refine ⟨s,charts,budgets,coverage,?_,total⟩
  intro i hi
  obtain ⟨d⟩ := derivations i hi
  exact d.sound

end GRWTSK.Analysis.SignedWindowRoot
#print axioms GRWTSK.Analysis.SignedWindowRoot.narrow_root_transport
#print axioms GRWTSK.Analysis.SignedWindowRoot.SharpBudgetDerivation.sound
#print axioms GRWTSK.Analysis.SignedWindowRoot.uniform_sharp_charts_return
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/SignedWindowRootBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/SignedWindowRootBounds.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9722238202ea6a32049e45d036a9d1e60cf9af9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
