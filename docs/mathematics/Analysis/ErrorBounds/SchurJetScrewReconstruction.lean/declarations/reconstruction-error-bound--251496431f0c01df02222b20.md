# reconstruction_error_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f29d9138-da3c-4f83-ef68-c8dcc1d5f515",
  "kind": "theorem",
  "lexical_name": "reconstruction_error_bound",
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
  "slug": "reconstruction-error-bound--251496431f0c01df02222b20",
  "source": {
    "blob": "a001a80bc07ecdb853b9210affcbc784ac154048",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 46,
    "path": "GRWTSK/Analysis/ErrorBounds/SchurJetScrewReconstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:251496431f0c01df02222b20cbaec33ae2a93f58c767236d94b8a2b6fb95c275",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/SchurJetScrewReconstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f29d9138-da3c-4f83-ef68-c8dcc1d5f515`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reconstruction_error_bound
    {X Y : Type*}
    [NormedAddCommGroup X] [NormedSpace ℝ X]
    [NormedAddCommGroup Y] [NormedSpace ℝ Y]
    (consumer : X →L[ℝ] Y) (actual reconstructed : X)
    (sourceError schurJetError transportError spectralError tailError : Y)
    (budget : Budget)
    (decomposition :
      consumer actual - consumer reconstructed =
        sourceError + schurJetError + transportError + spectralError + tailError)
    (sourceBound : ‖sourceError‖ ≤ budget.source)
    (schurJetBound : ‖schurJetError‖ ≤ budget.schurJet)
    (transportBound : ‖transportError‖ ≤ budget.transport)
    (spectralBound : ‖spectralError‖ ≤ budget.spectral)
    (tailBound : ‖tailError‖ ≤ budget.tail) :
    ‖consumer actual - consumer reconstructed‖ ≤ budget.total := by
  simpa [Budget.total, Budget.toScrewSpectral,
    GRWTSK.Analysis.ErrorBounds.ScrewSpectralReconstruction.Budget.total] using
    GRWTSK.Analysis.ErrorBounds.ScrewSpectralReconstruction.reconstruction_error_bound
      consumer actual reconstructed sourceError schurJetError transportError spectralError
      tailError budget.toScrewSpectral decomposition sourceBound schurJetBound
      transportBound spectralBound tailBound

end GRWTSK.Analysis.ErrorBounds.SchurJetScrewReconstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/SchurJetScrewReconstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/SchurJetScrewReconstruction.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a001a80bc07ecdb853b9210affcbc784ac154048` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
