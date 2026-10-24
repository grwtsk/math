# uniform_of_summable_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bf06c3a-9472-c9d1-5154-541156272074",
  "kind": "theorem",
  "lexical_name": "uniform_of_summable_budget",
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
  "slug": "uniform-of-summable-budget--3483daf88cb1bdb4dc58727d",
  "source": {
    "blob": "b2332825e2f3383484b8bc83285e9ae96ebb614e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 88,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3483daf88cb1bdb4dc58727db96e879fb7199ab7a3b71315306e7e7a958e0d0a",
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

Occurrence: `result:2bf06c3a-9472-c9d1-5154-541156272074`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_of_summable_budget (Δ : ℕ → ℝ) (c ε : ℕ → ℝ)
    (hc : ∀ j, 0 < c j) (hε : ∀ j, 0 ≤ ε j) (pstar δ : ℝ) (hδ : 0 ≤ δ)
    (hproduct : ∀ n, pstar ≤ lossProduct c n)
    (hsummable : Summable (fun j => ε j / lossProduct c (j + 1)))
    (hbudget : (∑' j, ε j / lossProduct c (j + 1)) ≤ Δ 0 - δ)
    (hstep : ∀ j, c j ^ 2 * Δ j - ε j ≤ Δ (j + 1)) (n : ℕ) :
    pstar * δ ≤ Δ n := by
  apply uniform_of_prefix_budget Δ c ε hc pstar δ hδ hproduct _ hstep n
  intro k
  exact (hsummable.sum_le_tsum (Finset.range k) (fun j _ =>
    div_nonneg (hε j) (le_of_lt (lossProduct_pos c hc (j + 1))))).trans hbudget

/-- A positive product floor and positive remaining budget construct one
strictly positive constant for the entire refinement family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2332825e2f3383484b8bc83285e9ae96ebb614e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
