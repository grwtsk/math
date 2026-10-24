# parityOddHalfShiftSignedResidueFourier_eq_projector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ea53f38-ec21-5df1-4608-b9eca44a6675",
  "kind": "theorem",
  "lexical_name": "parityOddHalfShiftSignedResidueFourier_eq_projector",
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
  "slug": "parityoddhalfshiftsignedresiduefourier-eq-projector--903b37aed2ebb5bfea87be8d",
  "source": {
    "blob": "a35181c8e0339923fdc9d1ea7f43f9bc663ba4d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 160,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:903b37aed2ebb5bfea87be8d200613c77fa0cf5b9dabadd7ad34837ed9e54e8a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ea53f38-ec21-5df1-4608-b9eca44a6675`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityOddHalfShiftSignedResidueFourier_eq_projector
    (b d r : ℕ) [NeZero d]
    (hr : r < 2)
    (k : ZMod (d * d)) :
    parityOddHalfShiftSignedResidueFourier b d r k =
      twoKernelOddShiftProjectorAggregate b d r k := by
  rw [parityOddHalfShiftSignedResidueFourier_eq_sum_affineTwists]
  unfold twoKernelOddShiftProjectorAggregate
  apply Finset.sum_congr rfl
  intro h _hh
  exact
    parityGrowingShiftAffineChowlaTwist_eq_halfIndex
      b d r h hr k

/-- Canonical regular-orbit majorant rewritten directly in the two refined
signed-residue Fourier transforms for each endpoint parity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a35181c8e0339923fdc9d1ea7f43f9bc663ba4d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
