# paritySignedShiftResiduePairSlice_eq_correlation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4db9a5ca-14f7-c369-12dc-620676372409",
  "kind": "theorem",
  "lexical_name": "paritySignedShiftResiduePairSlice_eq_correlation",
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
  "slug": "paritysignedshiftresiduepairslice-eq-correlation--9060e8f5634e40cf69b907fe",
  "source": {
    "blob": "09313398bceac03b13fc67b9def98561da23ea41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 215,
    "path": "GRWTSK/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9060e8f5634e40cf69b907fe0dea8999c06a375eb20a67186605de8269a10dcb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4db9a5ca-14f7-c369-12dc-620676372409`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paritySignedShiftResiduePairSlice_eq_correlation
    (b d r h : ℕ) [NeZero d]
    (hr : r < 2) (hh : 0 < h)
    (s : ZMod (d * d)) :
    paritySignedShiftResiduePairSlice b d r h s =
      paritySignedShiftResidueCorrelation b d r h s := by
  classical
  unfold paritySignedShiftResiduePairSlice
    paritySignedShiftResidueCorrelation
  apply congrArg (fun z : ℂ => 2 * z)
  apply Finset.sum_bij'
    (fun uv _huv => uv.1)
    (fun u _hu => (u, u + 2 * h))
  · intro uv huv
    exact (mem_parityShiftPairSet_iff hr hh uv).mp huv |>.choose_spec.1
  · intro u hu
    exact (mem_parityShiftPairSet_iff hr hh (u, u + 2 * h)).mpr
      ⟨u, hu, rfl⟩
  · intro uv huv
    rcases (mem_parityShiftPairSet_iff hr hh uv).mp huv with
      ⟨u, hu, huvEq⟩
    subst huvEq
    rfl
  · intro u hu
    rfl
  · intro uv huv
    have huvBase := (Finset.mem_filter.mp huv).1
    have hcoord :=
      parityPairResidueCoordinate_eq_base_shift d hr huvBase
    have hshift := (Finset.mem_filter.mp huv).2
    rw [hshift] at hcoord
    rw [hcoord]
    congr 1
    have hpair := parityPair_second_eq_first_add_twiceShift hr huvBase
    rw [hshift] at hpair
    rw [hpair]

/-- The complete signed residue convolution is the outer signed sum of its
positive growing-shift slices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09313398bceac03b13fc67b9def98561da23ea41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
