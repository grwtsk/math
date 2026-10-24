# mertensResidual_eq_dyadic_centered_blocks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c781b3d0-9c3f-cc26-57ca-576971ab05d1",
  "kind": "theorem",
  "lexical_name": "mertensResidual_eq_dyadic_centered_blocks",
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
  "slug": "mertensresidual-eq-dyadic-centered-blocks--8ecb140cbf6a4db8a0fb9780",
  "source": {
    "blob": "5782927caa8472d8d0699adff177913562b80ada",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 129,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantadc2b000ce54038c6048c72d8d751e5aa4208aa4b44a02c2bdca4c23fe10ef0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ecb140cbf6a4db8a0fb9780cf393d340b8686bba97c0a094747eb450dc3e397",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantadc2b000ce54038c6048c72d8d751e5aa4208aa4b44a02c2bdca4c23fe10ef0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c781b3d0-9c3f-cc26-57ca-576971ab05d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_eq_dyadic_centered_blocks (A : ℝ) (hA : 1 ≤ A) :
    EstimateMertensResidual.mertensResidual A =
      ∑ j ∈ Finset.range (dyadicBlockCount A),
        (-weightedMobiusPrimitive (dyadicBlockPoint A j) *
          (sourceLogKernel A (dyadicBlockPoint A (j + 1)) -
            sourceLogKernel A (dyadicBlockPoint A j)) -
          ∫ s in (dyadicBlockPoint A j)..(dyadicBlockPoint A (j + 1)),
            (weightedMobiusPrimitive s - weightedMobiusPrimitive (dyadicBlockPoint A j)) *
              deriv (sourceLogKernel A) s) := by
  rw [mertensResidual_eq_weighted_log_pairing A hA]
  exact signed_pairing_eq_dyadic_centered_blocks A hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantadc2b000ce54038c6048c72d8d751e5aa4208aa4b44a02c2bdca4c23fe10ef0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantadc2b000ce54038c6048c72d8d751e5aa4208aa4b44a02c2bdca4c23fe10ef0c.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5782927caa8472d8d0699adff177913562b80ada` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
