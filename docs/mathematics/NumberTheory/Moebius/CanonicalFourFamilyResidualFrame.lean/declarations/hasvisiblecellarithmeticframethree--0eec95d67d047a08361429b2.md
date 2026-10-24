# hasVisibleCellArithmeticFrameThree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:276d2009-29ba-1a1b-3739-44ab7329564c",
  "kind": "theorem",
  "lexical_name": "hasVisibleCellArithmeticFrameThree",
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
  "slug": "hasvisiblecellarithmeticframethree--0eec95d67d047a08361429b2",
  "source": {
    "blob": "9c89a213d1950ab62392bb4a2d93bad40c8bcd1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 180,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyResidualFrame.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0eec95d67d047a08361429b25fdf011d8a3fad5b9661f9945003e80d36ad868e",
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

Occurrence: `result:276d2009-29ba-1a1b-3739-44ab7329564c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasVisibleCellArithmeticFrameThree :
    HasCanonicalFourFamilyRestrictedLowerFrame 3
      CanonicalVisibleCellArithmeticDifferenceThree ((Real.log 2) ^ 2) := by
  refine ⟨sq_pos_of_pos (Real.log_pos (by norm_num)), ?_⟩
  intro v hv
  obtain ⟨b, d, rfl⟩ := hv
  have hpacket (b : Bool) : canonicalFourFamilyRestrictionPacket 3
      (if b then canonicalVisibleCellRestrictionThree else canonicalFourFamilyEmptyRestriction 3) =
        canonicalVisibleCellPacketThree (if b then -1 else 0) := by
    cases b
    · change canonicalFourFamilyRestrictionPacket 3 (canonicalFourFamilyEmptyRestriction 3) =
        canonicalVisibleCellPacketThree 0
      rw [canonicalFourFamilyRestrictionPacket_empty]
      funext F c
      simp [canonicalVisibleCellPacketThree]
    · exact visibleCellThree_actual_packet
  rw [hpacket b, hpacket d]
  have hsub (a t : ℝ) : canonicalVisibleCellPacketThree a - canonicalVisibleCellPacketThree t =
      canonicalVisibleCellPacketThree (a - t) := by
    funext F c
    simp [canonicalVisibleCellPacketThree, Pi.sub_apply]
    split_ifs <;> ring
  rw [hsub]
  exact visibleCellThree_lower_frame _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyResidualFrame.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyResidualFrame.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c89a213d1950ab62392bb4a2d93bad40c8bcd1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
