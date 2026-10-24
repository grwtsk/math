# inexact_adjoint_window_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b715c648-282e-f227-cceb-fc04729efe6f",
  "kind": "theorem",
  "lexical_name": "inexact_adjoint_window_identity",
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
  "slug": "inexact-adjoint-window-identity--9f6d0cda73c7c964b5608d3f",
  "source": {
    "blob": "badf04b0b2e1f3649a636b5616a0ab5b0a802aee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 183,
    "path": "GRWTSK/Analysis/ErrorBounds/InexactAdjointGramWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f6d0cda73c7c964b5608d3f9e279a0f1ba918b30d41559fd378cb10964e8da9",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b715c648-282e-f227-cceb-fc04729efe6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inexact_adjoint_window_identity
    (gain : ∀ n, I (n + 1) → I n → ℂ) (residual : ∀ n, I n × I n → ℂ)
    (forcing : ∀ n, I (n + 1) × I (n + 1) → ℂ) (test : ∀ n, I n → ℂ) : ∀ k : ℕ,
    (∀ j, j < k → ∀ p, residual (j + 1) p =
      complexTransport (gain j) (residual j) p + forcing j p) →
    complexReadout (test k) (residual k) = complexReadout (test 0) (residual 0) +
      ∑ j ∈ Finset.range k,
        (complexReadout (test (j + 1)) (forcing j) + windowCorrection gain residual test j) := by
  intro k
  induction k with
  | zero => intro _; simp
  | succ k ih =>
      intro evolution
      have previous := ih (fun j hj => evolution j (Nat.lt_succ_of_lt hj))
      have terminal := inexact_readout_residual_step (gain k) (test (k + 1)) (test k)
        (residual k) (residual (k + 1)) (forcing k) (evolution k (Nat.lt_succ_self k))
      change complexReadout (test (k + 1)) (residual (k + 1)) =
        complexReadout (test k) (residual k) +
          (complexReadout (test (k + 1)) (forcing k) + windowCorrection gain residual test k) at terminal
      rw [terminal, previous, Finset.sum_range_succ]
      ring

/-- Exact source-minus-Gram identity with separately retained arithmetic mismatch and adjoint error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/InexactAdjointGramWindow.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `badf04b0b2e1f3649a636b5616a0ab5b0a802aee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
