# gram_inexact_window_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:514912cd-7807-0c12-781e-69243727f59d",
  "kind": "theorem",
  "lexical_name": "gram_inexact_window_identity",
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
  "slug": "gram-inexact-window-identity--97db8edeb9a27dc9cd5ae381",
  "source": {
    "blob": "badf04b0b2e1f3649a636b5616a0ab5b0a802aee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 206,
    "path": "GRWTSK/Analysis/ErrorBounds/InexactAdjointGramWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97db8edeb9a27dc9cd5ae3811a4158a572205ed5235b836501cd9cc8e3961d57",
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

Occurrence: `result:514912cd-7807-0c12-781e-69243727f59d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gram_inexact_window_identity
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ)
    (test : ∀ n, I n → ℂ) (k : ℕ) (actual tail : ℝ)
    (modelUpdate : ∀ j, j < k → ∀ p, complexGram (feature (j + 1)) p =
      complexTransport (gain j) (complexGram (feature j)) p + injection j p)
    (sourceReadout : actual = (complexReadout (test k) (source k)).re + tail) :
    actual - (complexReadout (test k) (complexGram (feature k))).re =
      (complexReadout (test 0) (fun p => source 0 p - complexGram (feature 0) p)).re +
        (∑ j ∈ Finset.range k,
          ((complexReadout (test (j + 1)) (complexMismatch gain source injection j)).re +
            (windowCorrection gain (fun n p => source n p - complexGram (feature n) p) test j).re)) +
        tail := by
  have evolution (j : ℕ) (hj : j < k) :
      ∀ p, source (j + 1) p - complexGram (feature (j + 1)) p =
        complexTransport (gain j) (fun q => source j q - complexGram (feature j) q) p +
          complexMismatch gain source injection j p :=
    complex_residual_evolution (gain j) (source j) (complexGram (feature j))
      (source (j + 1)) (complexGram (feature (j + 1))) (injection j) (modelUpdate j hj)
  have identity := inexact_adjoint_window_identity gain
    (fun n p => source n p - complexGram (feature n) p)
    (complexMismatch gain source injection) test k evolution
  have realIdentity := congrArg Complex.re identity
  simp only [readout_sub, Complex.sub_re, Complex.add_re, Complex.re_sum] at realIdentity
  rw [sourceReadout, readout_sub, Complex.sub_re]
  linarith

/-- Source-bound terminal consumer. The correction cost is independent of the arithmetic mismatch
lower bound and cannot be discarded merely because the chosen pullbacks look close. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/InexactAdjointGramWindow.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `badf04b0b2e1f3649a636b5616a0ab5b0a802aee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
