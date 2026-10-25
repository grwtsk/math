# saturation_does_not_establish_adequacy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:598f912e-3bf5-db79-ebaa-88cacdbcdd0c",
  "kind": "theorem",
  "lexical_name": "saturation_does_not_establish_adequacy",
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
  "slug": "saturation-does-not-establish-adequacy--dcfc9d621cd768f74dc113e3",
  "source": {
    "blob": "ce85a333535c43161e528367ff65bd5674a4d414",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticTarget/Variant2b969f74096c6e457c6e3a80a65d7e7d83465f39eb324d99c5d3ccb0311c3706.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcfc9d621cd768f74dc113e3bb65e462878b56d4bb68ae3042e67007bf832811",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticTarget/Variant2b969f74096c6e457c6e3a80a65d7e7d83465f39eb324d99c5d3ccb0311c3706.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:598f912e-3bf5-db79-ebaa-88cacdbcdd0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem saturation_does_not_establish_adequacy :
    ∃ (profile : QuantizationProfile)
      (certificate :
        Option (AnalyticResolutionCertificate profile.analyticTarget)),
      QuantizationSelectionStatusSound
        profile (selectedResolutionValue profile) certificate
        .compilerSaturated ∧
      ¬ profile.analyticTarget.ResolutionAdequate
        (selectedResolutionValue profile) := by
  let requestResolution : ResolutionBits := ⟨2, by decide⟩
  let compiler : CompilerTarget :=
    { compilerId := "countermodel"
      compilerVersion := "pinned"
      targetTriple := "abstract"
      wordBits := 1
      wordBitsPositive := by decide
      sourceEvidence := [] }
  let target : AnalyticTarget :=
    { identity := ⟨"artifact:countermodel-target"⟩
      subject := ⟨"artifact:countermodel-subject"⟩
      observable := "separation witness"
      distinctionPolicy := "none"
      errorTolerance := "not adequate"
      ResolutionAdequate := fun _ => False
      affectedClaims := []
      requiredEvidence := [] }
  let profile : QuantizationProfile :=
    { request :=
        { resolution := requestResolution
          rationale := "separate saturation from adequacy"
          sourceEvidence := [] }
      matrixRows := 0
      matrixColumns := 0
      compilerTarget := compiler
      analyticTarget := target
      encoding := .bitPlanes
      overflowPolicy := .compilerSaturate
      roundingPolicy := .floor
      rejectPolicyWithinBound := by simp }
  refine ⟨profile, none, ?_, ?_⟩
  · change QuantizationEncoding.bitPlanes = .bitPlanes ∧ min 2 1 = 1 ∧ 1 < 2
    decide
  · simp [profile, target]

/-- Every implemented status uses the formally supported bit-plane encoding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticTarget/Variant2b969f74096c6e457c6e3a80a65d7e7d83465f39eb324d99c5d3ccb0311c3706.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticTarget/Variant2b969f74096c6e457c6e3a80a65d7e7d83465f39eb324d99c5d3ccb0311c3706.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce85a333535c43161e528367ff65bd5674a4d414` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
