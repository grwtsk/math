# norm_toL1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d2cf988-e643-e933-150e-8090ebbb85c0",
  "kind": "theorem",
  "lexical_name": "norm_toL1",
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
  "slug": "norm-tol1--23d1969ce2fcef25d0a4d435",
  "source": {
    "blob": "1b34e6beadc792075e9c5be0f09ee8af3e66f0f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 208,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23d1969ce2fcef25d0a4d435abd556f40fe33fad4f660e509289256861c0fcf6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d2cf988-e643-e933-150e-8090ebbb85c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_toL1 (f : α → β) (hf : Integrable f μ) :
    ‖hf.toL1 f‖ = (∫⁻ a, edist (f a) 0 ∂μ).toReal := by
  simp [toL1, Lp.norm_toLp, eLpNorm, eLpNorm'_eq_lintegral_enorm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b34e6beadc792075e9c5be0f09ee8af3e66f0f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
