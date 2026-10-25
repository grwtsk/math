# QuantizationSelectionStatusSound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a11511e2a4ab699d86a347818f7a78b71992f5081ea262fdef7239f80f21d11",
  "kind": "def",
  "lexical_name": "QuantizationSelectionStatusSound",
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
  "slug": "quantizationselectionstatussound--3fa3312cc24250576682e83e",
  "source": {
    "blob": "8c4c8737fdd4f5df3d51190027743985658d226d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticTarget/Variant90febd61d5c929cd456d8eaade4431ac75df06a37b716683ffece7fd4c702966.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fa3312cc24250576682e83e8f9c02eeceb4fc658b0bb2e5f9734ce326e031f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticTarget/Variant90febd61d5c929cd456d8eaade4431ac75df06a37b716683ffece7fd4c702966.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a11511e2a4ab699d86a347818f7a78b71992f5081ea262fdef7239f80f21d11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def QuantizationSelectionStatusSound
    (profile : QuantizationProfile)
    (selectedBits : Nat)
    (analyticCertificate :
      Option (AnalyticResolutionCertificate profile.analyticTarget)) :
    QuantizationStatus → Prop
  | .exact =>
      profile.encoding = .bitPlanes ∧
        ∃ certificate,
          analyticCertificate = some certificate ∧
          selectedBits = certificate.required.value ∧
          profile.analyticTarget.ResolutionAdequate selectedBits
  | .sufficient =>
      profile.encoding = .bitPlanes ∧
        ∃ certificate,
          analyticCertificate = some certificate ∧
          certificate.required.value ≤ selectedBits ∧
          profile.analyticTarget.ResolutionAdequate selectedBits
  | .compilerSaturated =>
      profile.encoding = .bitPlanes ∧
        selectedBits = profile.compilerTarget.wordBits ∧
        profile.compilerTarget.wordBits < profile.request.resolution.value
  | .intentionallyCoarse =>
      profile.encoding = .bitPlanes ∧
        selectedBits < profile.request.resolution.value
  | .approximate => profile.encoding = .bitPlanes
  | .unsupported => True

/-- A selected resolution together with a proof that its status is honest. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticTarget/Variant90febd61d5c929cd456d8eaade4431ac75df06a37b716683ffece7fd4c702966.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticTarget/Variant90febd61d5c929cd456d8eaade4431ac75df06a37b716683ffece7fd4c702966.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c4c8737fdd4f5df3d51190027743985658d226d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
