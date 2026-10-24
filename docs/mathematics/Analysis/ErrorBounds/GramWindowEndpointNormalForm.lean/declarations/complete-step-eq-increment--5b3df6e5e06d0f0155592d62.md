# complete_step_eq_increment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b7299f9-341e-8c2c-5bb2-fb0b5871eb51",
  "kind": "theorem",
  "lexical_name": "complete_step_eq_increment",
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
  "slug": "complete-step-eq-increment--5b3df6e5e06d0f0155592d62",
  "source": {
    "blob": "81a9cc507e91e2991d7b34477476fcbbd77ce263",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 56,
    "path": "GRWTSK/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b3df6e5e06d0f0155592d6227fd1c8a60776cf14f0207c398ba6edc8b5ac9ad",
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

Occurrence: `result:3b7299f9-341e-8c2c-5bb2-fb0b5871eb51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_step_eq_increment (gain : τ → ι → ℂ)
    (residual : ι × ι → ℂ) (nextResidual : τ × τ → ℂ)
    (test : ι → ℂ) (nextTest : τ → ℂ) :
    complexReadout nextTest (netResidual gain residual nextResidual) +
        readoutCorrection test (pullbackDefect gain nextTest test) residual =
      complexReadout nextTest nextResidual - complexReadout test residual := by
  have evolution (p : τ × τ) : nextResidual p =
      complexTransport gain residual p + netResidual gain residual nextResidual p := by
    unfold netResidual
    ring
  have step := inexact_readout_residual_step gain nextTest test residual nextResidual
    (netResidual gain residual nextResidual) evolution
  calc
    _ = (complexReadout test residual +
        (complexReadout nextTest (netResidual gain residual nextResidual) +
          readoutCorrection test (pullbackDefect gain nextTest test) residual)) -
        complexReadout test residual := by ring
    _ = _ := by rw [← step]

section Window

variable {I : ℕ → Type*} [∀ n, Fintype (I n)]

/-- Full COMPLEX endpoint identity, not just equality of real parts.
The retained initial observation cancels exactly; it is not reset to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81a9cc507e91e2991d7b34477476fcbbd77ce263` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
