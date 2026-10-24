# abs_nonAliasingFejer_positiveShift_sqrt_le_of_centeredMass_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2d21bdd-c7bd-fe89-b6f9-69756f84ae59",
  "kind": "theorem",
  "lexical_name": "abs_nonAliasingFejer_positiveShift_sqrt_le_of_centeredMass_sq",
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
  "slug": "abs-nonaliasingfejer-positiveshift-sqrt-le-of-centeredmass-sq--564d10ab6af46aff39a0d1c3",
  "source": {
    "blob": "6717c5764e123cdafe752a1d7e9567069d635976",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 176,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:564d10ab6af46aff39a0d1c39470cd4559afec15d1437ac93c215bfc6b46c37f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2d21bdd-c7bd-fe89-b6f9-69756f84ae59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_nonAliasingFejer_positiveShift_sqrt_le_of_centeredMass_sq
    {X N m : ℕ}
    (hX : 4 ≤ X)
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    (hsharp : NonAliasingFejerSharpDivisibilityTail X N m)
    {C : ℝ}
    (hC : 0 ≤ C)
    (hmass :
      (nonAliasingFejerCenteredVonMangoldtMass X N m)^2 ≤
        C * centeredLowGCDTargetScale X) :
    |positiveShiftCenteredLowGCDCorrelation X X.sqrt
        (nonAliasingFejerPrefixWeight X N m)| ≤
      ((C + 1708) / 2) * centeredLowGCDTargetScale X := by
  have hres :=
    abs_residual_le_of_centeredMass_sq_and_sharpTail
      hX hsharp hC hmass
  have hC' : 0 ≤ C + 256 := by linarith
  simpa [add_assoc, add_left_comm, add_comm] using
    abs_nonAliasingFejer_positiveShift_sqrt_le_of_residual
      hX hreg hm0 hm1 hC' hres

end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6717c5764e123cdafe752a1d7e9567069d635976` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
