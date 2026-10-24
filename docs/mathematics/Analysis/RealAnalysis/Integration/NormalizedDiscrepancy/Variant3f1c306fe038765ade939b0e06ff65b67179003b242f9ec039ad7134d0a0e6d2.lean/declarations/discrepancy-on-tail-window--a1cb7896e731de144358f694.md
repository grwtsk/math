# discrepancy_on_tail_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7187eeb8-88a1-43eb-cc16-fd14324d464c",
  "kind": "theorem",
  "lexical_name": "discrepancy_on_tail_window",
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
  "slug": "discrepancy-on-tail-window--a1cb7896e731de144358f694",
  "source": {
    "blob": "ceeaab0f42e24f9ff6acd368020b6a45a00eb4ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 26,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NormalizedDiscrepancy/Variant3f1c306fe038765ade939b0e06ff65b67179003b242f9ec039ad7134d0a0e6d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1cb7896e731de144358f6945b3206029630fb673fa209cab2cbd5a2527fdbc9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/NormalizedDiscrepancy/Variant3f1c306fe038765ade939b0e06ff65b67179003b242f9ec039ad7134d0a0e6d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7187eeb8-88a1-43eb-cc16-fd14324d464c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discrepancy_on_tail_window {A B γ : ℝ} {E : ℝ → ℝ}
    (hA : 1 ≤ A)
    (hE : ∀ t : ℝ, |E t + γ| ≤ B + max 0 (-t))
    {y : ℝ} (hy : y ∈ Icc A (4 * A)) :
    |E (2 * A - y) + γ| ≤ B + y := by
  apply (hE _).trans
  gcongr
  exact max_le (by linarith [hy.1]) (by linarith)

/-- A single finite-A estimate; no asymptotic exchange and no arithmetic axiom is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NormalizedDiscrepancy/Variant3f1c306fe038765ade939b0e06ff65b67179003b242f9ec039ad7134d0a0e6d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NormalizedDiscrepancy/Variant3f1c306fe038765ade939b0e06ff65b67179003b242f9ec039ad7134d0a0e6d2.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceeaab0f42e24f9ff6acd368020b6a45a00eb4ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
