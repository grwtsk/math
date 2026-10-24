# concrete_signed_source_to_bertrand_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29d9ff0f-9f23-e8e1-8952-76e6a03bf498",
  "kind": "theorem",
  "lexical_name": "concrete_signed_source_to_bertrand_ratio",
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
  "slug": "concrete-signed-source-to-bertrand-ratio--b6a62cc8c8c3dbca327c2b69",
  "source": {
    "blob": "a43cf6a47d19f8f3b7be421e93e87a654f2630fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 16,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightSignedSourceCouplingControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6a62cc8c8c3dbca327c2b69746599856a370027115056ccb9a898086d9c122c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightSignedSourceCouplingControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29d9ff0f-9f23-e8e1-8952-76e6a03bf498`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem concrete_signed_source_to_bertrand_ratio
    (rule : PinnedPrimeWeightSignedSourceRule)
    {j : ℕ} {C v E : ℝ}
    (hC : 0 ≤ C)
    (hv : v ∈ pinnedPrimeWeightNextOctave j)
    (hresponse :
      |rule.response j v| ≤
        C * (pinnedPrimeWeightedAmplitude (dyadicScale j))^2)
    (hresidual :
      |rule.signedResidual j v| + 1 ≤ E) :
    pinnedPrimeWeightBertrandRatioRequirement
      (dyadicScale j) C v E :=
  rule.pointwise_to_bertrandRatioRequirement
    hC hv hresponse hresidual

/-- Hostile exact rule with zero response and the complete theta error retained
in the signed residual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightSignedSourceCouplingControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightSignedSourceCouplingControls.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a43cf6a47d19f8f3b7be421e93e87a654f2630fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
