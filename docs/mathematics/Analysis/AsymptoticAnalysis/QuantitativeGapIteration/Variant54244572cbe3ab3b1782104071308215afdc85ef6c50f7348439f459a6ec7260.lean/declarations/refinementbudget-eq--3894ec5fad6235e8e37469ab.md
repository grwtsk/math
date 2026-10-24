# refinementBudget_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2015df3e-f68c-2c07-9eec-796f246bf8cd",
  "kind": "theorem",
  "lexical_name": "refinementBudget_eq",
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
  "slug": "refinementbudget-eq--3894ec5fad6235e8e37469ab",
  "source": {
    "blob": "b2332825e2f3383484b8bc83285e9ae96ebb614e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 44,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3894ec5fad6235e8e37469abdb0884157e39893379fe055dfe45bc0ed2647555",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2015df3e-f68c-2c07-9eec-796f246bf8cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem refinementBudget_eq (Δ₀ : ℝ) (c ε : ℕ → ℝ) (hc : ∀ j, 0 < c j) (n : ℕ) :
    refinementBudget Δ₀ c ε n = lossProduct c n *
      (Δ₀ - ∑ j ∈ Finset.range n, ε j / lossProduct c (j + 1)) := by
  induction n with
  | zero => simp [refinementBudget]
  | succ n ih =>
    rw [refinementBudget, ih, Finset.sum_range_succ, lossProduct_succ]
    have hp : lossProduct c n ≠ 0 := ne_of_gt (lossProduct_pos c hc n)
    have hc' : c n ≠ 0 := ne_of_gt (hc n)
    field_simp [hp, hc']
    ring

/-- Any family obeying the one-step inequality dominates the exact budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2332825e2f3383484b8bc83285e9ae96ebb614e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
