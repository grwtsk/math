# visibleCellThree_lower_frame

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5abe35d1-1c70-74f0-444a-ff192f6e9dab",
  "kind": "theorem",
  "lexical_name": "visibleCellThree_lower_frame",
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
  "slug": "visiblecellthree-lower-frame--51d7aae12577518f72f0ff82",
  "source": {
    "blob": "9c89a213d1950ab62392bb4a2d93bad40c8bcd1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 128,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyResidualFrame.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51d7aae12577518f72f0ff8252cbad41cd078fda935ef31df1023f7cee6de3db",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CanonicalFourFamilyResidualFrame.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5abe35d1-1c70-74f0-444a-ff192f6e9dab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem visibleCellThree_lower_frame (a : ℝ) :
    (Real.log 2) ^ 2 * canonicalFourFamilyAmbientSourceEnergy 3
      (canonicalVisibleCellPacketThree a) ≤
        canonicalFourFamilyWindowOutputEnergy 3 (canonicalVisibleCellPacketThree a) := by
  have h6 : 6 ∈ centeredGreenWindow 3 := by decide
  have h := Finset.single_le_sum
    (f := fun n => (canonicalFourFamilyGreenMatrixApply 3 n
      (canonicalVisibleCellPacketThree a)) ^ 2)
    (fun _ _ => sq_nonneg _) h6
  rw [visibleCellThree_row_six] at h
  rw [visibleCellThree_source_energy]
  change (Real.log 2) ^ 2 * a ^ 2 ≤ _
  simpa only [mul_pow, canonicalFourFamilyWindowOutputEnergy] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyResidualFrame.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyResidualFrame.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c89a213d1950ab62392bb4a2d93bad40c8bcd1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
