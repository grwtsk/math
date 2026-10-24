# constant_step_gap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09aa0b82-8678-ae58-d07b-b37ea14aaa2c",
  "kind": "theorem",
  "lexical_name": "constant_step_gap",
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
  "slug": "constant-step-gap--e4dd28d6e9a0c228aea5d4f3",
  "source": {
    "blob": "cb910954e6be9e2972e1182bfbbe6d6668a1e743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 74,
    "path": "GRWTSK/Analysis/ErrorBounds/FiniteLogEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4dd28d6e9a0c228aea5d4f3a41988b7b417e78c2c94ef767936e279e17e3bb4",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/FiniteLogEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09aa0b82-8678-ae58-d07b-b37ea14aaa2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem constant_step_gap (x : ℕ → ℝ) (N : ℕ) (d : ℝ)
    (hstep : ∀ i < N, x (i + 1) - x i = d) :
    upperSum x N - lowerSum x N = d * (1 / x 0 - 1 / x N) := by
  induction N with
  | zero => simp [lowerSum, upperSum]
  | succ N ih =>
    have hp := ih (fun i hi => hstep i (Nat.lt_succ_of_lt hi))
    have hs := hstep N (Nat.lt_succ_self N)
    simp only [lowerSum, upperSum, Finset.sum_range_succ] at hp ⊢
    simp only [hs, div_eq_mul_inv, one_mul] at hp ⊢
    nlinarith [hp]

/-- An empty chain is not a logarithm enclosure for a distinct named endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/FiniteLogEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/FiniteLogEnclosure.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb910954e6be9e2972e1182bfbbe6d6668a1e743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
