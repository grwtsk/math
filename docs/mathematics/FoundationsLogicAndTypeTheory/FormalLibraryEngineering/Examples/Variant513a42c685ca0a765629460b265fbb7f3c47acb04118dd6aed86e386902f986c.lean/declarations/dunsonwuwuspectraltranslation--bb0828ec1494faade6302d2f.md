# dunsonWuWuSpectralTranslation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c39e7618482a817f4b9b87726b6b557ad77d26d961806f48a27914ca856ef437",
  "kind": "def",
  "lexical_name": "dunsonWuWuSpectralTranslation",
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
  "slug": "dunsonwuwuspectraltranslation--bb0828ec1494faade6302d2f",
  "source": {
    "blob": "6d02d92f407de48207713702ad3682194cadc2cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 632,
    "line": 619,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant513a42c685ca0a765629460b265fbb7f3c47acb04118dd6aed86e386902f986c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb0828ec1494faade6302d2f7fab9cd34bd5c7208a9729230874fe1bb4db858c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant513a42c685ca0a765629460b265fbb7f3c47acb04118dd6aed86e386902f986c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c39e7618482a817f4b9b87726b6b557ad77d26d961806f48a27914ca856ef437`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 619–632.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dunsonWuWuSpectralTranslation : LiteratureTranslationRecord :=
  capabilityLiteratureTranslation "SFS-LIT-SPECTRAL-DWW"
    (arxivLiteratureArtifact
      "David B. Dunson, Hau-Tieng Wu, and Nan Wu, Spectral Convergence of Graph Laplacian and Heat Kernel Reconstruction in L-infinity from Random Samples, arXiv:1912.05680v5"
      "dfb3debecd99eefebe6ee81e377b068413904f55c8cfd4a8d5ceacfe6d3c8756")
    "L-infinity spectral convergence and heat-kernel reconstruction"
    "finite-mode-spectral-convergence-capability"
    "Surface.SmoothFramedSurgery.FiniteModeSpectralComparisonCapability"
    ["random-sampling regime", "eigenvalue/eigenspace error accounting"]
    ["L-infinity eigenfunction control and heat-kernel reconstruction are excluded from the current finite-mode certificate"]
    ["formalize L-infinity function-space comparison",
      "add and prove a heat-kernel reconstruction capability"]

/-- Zhou--Belkin motivates making the continuum boundary convention explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant513a42c685ca0a765629460b265fbb7f3c47acb04118dd6aed86e386902f986c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant513a42c685ca0a765629460b265fbb7f3c47acb04118dd6aed86e386902f986c.lean#L619).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d02d92f407de48207713702ad3682194cadc2cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
