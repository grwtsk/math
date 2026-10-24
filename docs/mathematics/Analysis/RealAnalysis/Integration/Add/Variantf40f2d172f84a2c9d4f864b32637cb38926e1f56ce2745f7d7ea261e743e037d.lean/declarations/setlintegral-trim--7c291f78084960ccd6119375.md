# setLIntegral_trim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0330639-1e92-696e-b352-0b6e10a87de8",
  "kind": "theorem",
  "lexical_name": "setLIntegral_trim",
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
  "slug": "setlintegral-trim--7c291f78084960ccd6119375",
  "source": {
    "blob": "27cbbc11f6a2ea41bbb1db79ef0f4b1796f03a4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 505,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c291f78084960ccd6119375ba7b5dbf4e935882fd5492392b06280ff1124748",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0330639-1e92-696e-b352-0b6e10a87de8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setLIntegral_trim {μ : Measure α} (hm : m ≤ m0) {f : α → ℝ≥0∞}
    (hf : Measurable[m] f) {s : Set α} (hs : MeasurableSet[m] s) :
    ∫⁻ x in s, f x ∂μ.trim hm = ∫⁻ x in s, f x ∂μ :=
  setLIntegral_trim_ae _ hf.aemeasurable hs

end Trim

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27cbbc11f6a2ea41bbb1db79ef0f4b1796f03a4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
