# supported_quantization_status_uses_bitPlanes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb2deff5e94afd1910dd62d6f54541591fdb96d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/020df5799b06e8f73208145ffc1b6286effacf298b78be52b5cf0c7f48f4daa5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f68738b0-6ed4-cec0-1cb2-ac12a59260b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dcde9c45-55ba-3c30-758f-614c21463897",
  "kind": "theorem",
  "lexical_name": "supported_quantization_status_uses_bitPlanes",
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
  "slug": "supported-quantization-status-uses-bitplanes--28e22162e6f9b741d50c2bb8",
  "source": {
    "blob": "fb2deff5e94afd1910dd62d6f54541591fdb96d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 208,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticTarget/Variant020df5799b06e8f73208145ffc1b6286effacf298b78be52b5cf0c7f48f4daa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28e22162e6f9b741d50c2bb8dd3b7c12fced361d8f5dc3131fd77834cb505dbc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticTarget/Variant020df5799b06e8f73208145ffc1b6286effacf298b78be52b5cf0c7f48f4daa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcde9c45-55ba-3c30-758f-614c21463897`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem supported_quantization_status_uses_bitPlanes
    (profile : QuantizationProfile)
    (selectedBits : Nat)
    (certificate : Option (AnalyticResolutionCertificate profile.analyticTarget))
    (status : QuantizationStatus)
    (supported : status ≠ .unsupported)
    (sound : QuantizationSelectionStatusSound
      profile selectedBits certificate status) :
    profile.encoding = .bitPlanes := by
  cases status <;>
    simp_all [QuantizationSelectionStatusSound]

/-- Bounded-word registration alone can only receive the unsupported status. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticTarget/Variant020df5799b06e8f73208145ffc1b6286effacf298b78be52b5cf0c7f48f4daa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticTarget/Variant020df5799b06e8f73208145ffc1b6286effacf298b78be52b5cf0c7f48f4daa5.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb2deff5e94afd1910dd62d6f54541591fdb96d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
