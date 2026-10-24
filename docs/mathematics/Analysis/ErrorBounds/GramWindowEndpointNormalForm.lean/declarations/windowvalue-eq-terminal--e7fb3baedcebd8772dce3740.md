# windowValue_eq_terminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86b1d95d-03a9-c449-3a41-46d403866f3a",
  "kind": "theorem",
  "lexical_name": "windowValue_eq_terminal",
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
  "slug": "windowvalue-eq-terminal--e7fb3baedcebd8772dce3740",
  "source": {
    "blob": "81a9cc507e91e2991d7b34477476fcbbd77ce263",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 81,
    "path": "GRWTSK/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7fb3baedcebd8772dce37408cbc680a5437aa64fdef53028116d165ef78455d",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86b1d95d-03a9-c449-3a41-46d403866f3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem windowValue_eq_terminal (gain : ∀ n, I (n + 1) → I n → ℂ)
    (residual : ∀ n, I n × I n → ℂ) (test : ∀ n, I n → ℂ) (tail : ℝ) (k : ℕ) :
    windowValue gain residual test tail k = complexReadout (test k) (residual k) + (tail : ℂ) := by
  have evolution (j : ℕ) (_hj : j < k) (p : I (j + 1) × I (j + 1)) :
      residual (j + 1) p = complexTransport (gain j) (residual j) p +
        netResidual (gain j) (residual j) (residual (j + 1)) p := by
    unfold netResidual
    ring
  have telescope := inexact_adjoint_window_identity gain residual
    (fun j => netResidual (gain j) (residual j) (residual (j + 1))) test k evolution
  simpa only [windowValue, windowCorrection] using
    congrArg (fun value : ℂ => value + (tail : ℂ)) telescope.symm

/-- Changing auxiliary gains cannot change the exact value while terminal data are retained.
Numerical enclosure widths and the difficulty of proving local estimates can still change. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81a9cc507e91e2991d7b34477476fcbbd77ce263` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
