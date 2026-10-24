# coefficientOneForm_curveIntegral_segment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ef9ab7876c3302cc169510170dfb47cbfd25be7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f8fe41ae2720f6cfd0f4089d8232a82389ce5db08f8caf05c9f665c6cf5fe15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:63fb63e3-486b-325c-8562-10d89e7c250f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eecd510f-39be-e861-582e-0ab49d869a9c",
  "kind": "theorem",
  "lexical_name": "coefficientOneForm_curveIntegral_segment",
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
  "slug": "coefficientoneform-curveintegral-segment--03b1d61fa0d00fd88fc22e70",
  "source": {
    "blob": "8ef9ab7876c3302cc169510170dfb47cbfd25be7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 112,
    "path": "GRWTSK/Topology/AlgebraicTopology/BranchSeamCell/Variant7f8fe41ae2720f6cfd0f4089d8232a82389ce5db08f8caf05c9f665c6cf5fe15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03b1d61fa0d00fd88fc22e70f21906123fc6fdb9163fb33011e3f08b732fdc04",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/BranchSeamCell/Variant7f8fe41ae2720f6cfd0f4089d8232a82389ce5db08f8caf05c9f665c6cf5fe15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eecd510f-39be-e861-582e-0ab49d869a9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficientOneForm_curveIntegral_segment (f : ℂ → ℂ) (a b : ℂ) :
    curveIntegral (coefficientOneForm f) (.segment a b) =
      ∫ u : ℝ in 0..1, f (AffineMap.lineMap a b u) * (b - a) := by
  rw [curveIntegral_segment]
  apply intervalIntegral.integral_congr
  intro u _
  simp [coefficientOneForm, mul_comm]

/-!
## Exact remaining goal

`four_seam_cells_cancel` closes the Poincare stack and all radial-seam
obligations.  The circular CA-03 target is not closed in this branch because
the concrete geometry still needs three kernel proofs:

1. construct four `C²` radial homotopies from the oriented square segments to
   four standard quarter-circle paths, with the open homotopy image outside
   the deleted closed disk;
2. identify the four shared radial connectors by path extensionality; and
3. normalize the four segment integrals to `rectangleBoundaryIntegral` and
   the four standard arc integrals to `circleIntegral`.

The last normalization is not available as a named curve-integral
reparameterization theorem in the pinned library.  It must be proved from
`curveIntegral_eq_intervalIntegral_deriv` and interval-integral substitution.
Accordingly this scratch file does **not** inhabit
`SingleHoleExcisionStatement` and makes no homology or homeomorphism claim.
-/

#print axioms four_seam_cells_cancel
#print axioms coefficientOneForm_curveIntegral_segment

end

end Surface.Core.ComplexAnalysis.CA03Scratch.BranchSeamCell
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/BranchSeamCell/Variant7f8fe41ae2720f6cfd0f4089d8232a82389ce5db08f8caf05c9f665c6cf5fe15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/BranchSeamCell/Variant7f8fe41ae2720f6cfd0f4089d8232a82389ce5db08f8caf05c9f665c6cf5fe15.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ef9ab7876c3302cc169510170dfb47cbfd25be7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
