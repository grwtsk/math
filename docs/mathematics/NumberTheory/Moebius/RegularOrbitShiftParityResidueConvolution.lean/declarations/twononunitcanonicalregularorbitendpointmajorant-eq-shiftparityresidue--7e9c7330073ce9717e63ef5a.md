# twoNonunitCanonicalRegularOrbitEndpointMajorant_eq_shiftParityResidue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c8394d0-b5f3-092e-a2ba-cbbfac26d682",
  "kind": "theorem",
  "lexical_name": "twoNonunitCanonicalRegularOrbitEndpointMajorant_eq_shiftParityResidue",
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
  "slug": "twononunitcanonicalregularorbitendpointmajorant-eq-shiftparityresidue--7e9c7330073ce9717e63ef5a",
  "source": {
    "blob": "a35181c8e0339923fdc9d1ea7f43f9bc663ba4d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 212,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e9c7330073ce9717e63ef5ad7535dca48da0e39debea08cd1a9173451d04a2d",
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

Occurrence: `result:5c8394d0-b5f3-092e-a2ba-cbbfac26d682`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoNonunitCanonicalRegularOrbitEndpointMajorant_eq_shiftParityResidue
    (b : ℕ) :
    twoNonunitCanonicalRegularOrbitEndpointMajorant b =
      twoNonunitRegularShiftParityResidueEndpointMajorant b := by
  classical
  unfold twoNonunitCanonicalRegularOrbitEndpointMajorant
    twoNonunitRegularShiftParityResidueEndpointMajorant
  apply Finset.sum_congr rfl
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  let : NeZero d := ⟨ne_of_gt hdpos⟩
  by_cases hNonunit : TwoNonunitSquareModulusParameter d
  · simp only [hNonunit, dif_pos]
    refine congrArg
      (fun x : ℝ => (((d * d : ℕ) : ℝ))⁻¹ * x) ?_
    apply Finset.sum_congr rfl
    intro k _hk
    exact
      twoNonunitCanonicalRegularOrbitMajorant_eq_shiftParityResidueFourier
        b d k
  · simp [hNonunit]

/-- Natural-scale supplier expressed directly on the refined signed-residue
Fourier surface. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a35181c8e0339923fdc9d1ea7f43f9bc663ba4d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
