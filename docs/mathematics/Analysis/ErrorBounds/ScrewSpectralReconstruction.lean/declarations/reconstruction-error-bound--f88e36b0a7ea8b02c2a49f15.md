# reconstruction_error_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b23df84-ddb8-db53-0f2d-734f96eac2b1",
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
  "slug": "reconstruction-error-bound--f88e36b0a7ea8b02c2a49f15",
  "source": {
    "blob": "cd22cac855e24a9d3c9f2d37831e6e55eb812e49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 36,
    "path": "GRWTSK/Analysis/ErrorBounds/ScrewSpectralReconstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f88e36b0a7ea8b02c2a49f152b86da661f94223011b2a9203ec1be5279a7b75c",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/ScrewSpectralReconstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b23df84-ddb8-db53-0f2d-734f96eac2b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reconstruction_error_bound
    {X Y : Type*}
    [NormedAddCommGroup X] [NormedSpace ℝ X]
    [NormedAddCommGroup Y] [NormedSpace ℝ Y]
    (consumer : X →L[ℝ] Y) (actual reconstructed : X)
    (sourceError hermiteError transportError spectralError tailError : Y)
    (budget : Budget)
    (decomposition :
      consumer actual - consumer reconstructed =
        sourceError + hermiteError + transportError + spectralError + tailError)
    (sourceBound : ‖sourceError‖ ≤ budget.source)
    (hermiteBound : ‖hermiteError‖ ≤ budget.hermite)
    (transportBound : ‖transportError‖ ≤ budget.transport)
    (spectralBound : ‖spectralError‖ ≤ budget.spectral)
    (tailBound : ‖tailError‖ ≤ budget.tail) :
    ‖consumer actual - consumer reconstructed‖ ≤ budget.total := by
  have triangle :
      ‖sourceError + hermiteError + transportError + spectralError + tailError‖ ≤
        ‖sourceError‖ + ‖hermiteError‖ + ‖transportError‖ +
          ‖spectralError‖ + ‖tailError‖ := by
    have h₁ := norm_add_le sourceError hermiteError
    have h₂ := norm_add_le (sourceError + hermiteError) transportError
    have h₃ := norm_add_le (sourceError + hermiteError + transportError) spectralError
    have h₄ := norm_add_le (sourceError + hermiteError + transportError + spectralError) tailError
    linarith
  rw [decomposition]
  apply triangle.trans
  unfold Budget.total
  linarith

end GRWTSK.Analysis.ErrorBounds.ScrewSpectralReconstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/ScrewSpectralReconstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/ScrewSpectralReconstruction.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd22cac855e24a9d3c9f2d37831e6e55eb812e49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
