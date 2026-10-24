# psiRelativeError_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89433778-6b8f-b742-4416-b45f03ab48b9",
  "kind": "theorem",
  "lexical_name": "psiRelativeError_eq",
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
  "slug": "psirelativeerror-eq--f7ecc02531667eeb780360e6",
  "source": {
    "blob": "a0dc5d86ecb04f4b1da97c53bd510ae6215dda30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 21,
    "path": "GRWTSK/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variantc858bbccf81d8cb4c095b0abc2bc0ab918276386822c8c8c33f4751998b1a231.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7ecc02531667eeb780360e655a115996736a5b8fbe7003eeb33d5f21a62f627",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variantc858bbccf81d8cb4c095b0abc2bc0ab918276386822c8c8c33f4751998b1a231.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89433778-6b8f-b742-4416-b45f03ab48b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psiRelativeError_eq (t : ℝ) :
    psiRelativeError t = Real.exp (-t) * (Chebyshev.psi (Real.exp t) - Real.exp t) := by
  unfold psiRelativeError
  rw [mul_sub, ← Real.exp_add]
  simp

/-- An actual unconditional source envelope, with unspecified PNT constants and real heights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variantc858bbccf81d8cb4c095b0abc2bc0ab918276386822c8c8c33f4751998b1a231.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variantc858bbccf81d8cb4c095b0abc2bc0ab918276386822c8c8c33f4751998b1a231.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0dc5d86ecb04f4b1da97c53bd510ae6215dda30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
