# pole_spin_flip_involutive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d751e0ef-da6d-91a3-3c7a-316dc49de8da",
  "kind": "theorem",
  "lexical_name": "pole_spin_flip_involutive",
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
  "slug": "pole-spin-flip-involutive--b5682fca9934c3aba4ce4a2f",
  "source": {
    "blob": "caf5efa0ba97efce7f045fff9fb3d39ae96fd780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 68,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5682fca9934c3aba4ce4a2f700767d20076447357bba0c28759b1e02b513327",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d751e0ef-da6d-91a3-3c7a-316dc49de8da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pole_spin_flip_involutive
    (state : PoleSpinState) :
    (!state.flippedSpin) = state.spin :=
  state.flipInvolutive

/-- Zero-to-one flip witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caf5efa0ba97efce7f045fff9fb3d39ae96fd780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
