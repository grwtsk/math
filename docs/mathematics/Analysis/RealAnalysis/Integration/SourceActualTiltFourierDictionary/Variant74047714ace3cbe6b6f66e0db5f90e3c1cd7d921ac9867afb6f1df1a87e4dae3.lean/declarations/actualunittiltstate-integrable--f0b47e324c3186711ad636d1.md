# actualUnitTiltState_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bc8bfc0-103e-c3e8-8a20-30a9000c32c2",
  "kind": "theorem",
  "lexical_name": "actualUnitTiltState_integrable",
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
  "slug": "actualunittiltstate-integrable--f0b47e324c3186711ad636d1",
  "source": {
    "blob": "5d4de385b19a04f03a0ac66f92506ace0a654f6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltFourierDictionary/Variant74047714ace3cbe6b6f66e0db5f90e3c1cd7d921ac9867afb6f1df1a87e4dae3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0b47e324c3186711ad636d1411b61e1b8325a7431a4d8ebc61d1f92f9e427b1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualTiltFourierDictionary/Variant74047714ace3cbe6b6f66e0db5f90e3c1cd7d921ac9867afb6f1df1a87e4dae3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bc8bfc0-103e-c3e8-8a20-30a9000c32c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUnitTiltState_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (actualUnitTiltState A : ℝ → ℂ) volume :=
  (actualUnitTilt_complex_integrable hA).congr (actualUnitTiltState_coe_ae hA).symm

/-- Standard Bochner Fourier orientation agrees with the literal tilted Mellin argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualTiltFourierDictionary/Variant74047714ace3cbe6b6f66e0db5f90e3c1cd7d921ac9867afb6f1df1a87e4dae3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltFourierDictionary/Variant74047714ace3cbe6b6f66e0db5f90e3c1cd7d921ac9867afb6f1df1a87e4dae3.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d4de385b19a04f03a0ac66f92506ace0a654f6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
