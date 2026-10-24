# coreNonboundarySignedLengthPacket_eq_mertensCellPacket

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46d7f101-f6c4-94c8-7942-386fb0715e91",
  "kind": "theorem",
  "lexical_name": "coreNonboundarySignedLengthPacket_eq_mertensCellPacket",
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
  "slug": "corenonboundarysignedlengthpacket-eq-mertenscellpacket--6c78381e45f9e08f1d94daed",
  "source": {
    "blob": "7f98a495095c2f601f2986fd610b45d3f024bcfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 90,
    "path": "GRWTSK/NumberTheory/Moebius/CoreNonboundarySignedMertensCells.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c78381e45f9e08f1d94daed3220ccc6b7d0b9ed5b676697451ce262859ca568",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreNonboundarySignedMertensCells.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46d7f101-f6c4-94c8-7942-386fb0715e91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreNonboundarySignedLengthPacket_eq_mertensCellPacket
    (j : ℕ) :
    coreNonboundarySignedLengthPacket j =
      coreNonboundarySignedMertensCellPacket j := by
  unfold coreNonboundarySignedLengthPacket
    coreNonboundarySignedMertensCellPacket
  calc
    (∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
      coreNonboundarySignedLengthSlice j n) =
      ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
        ∑ t ∈ coreLongDeepDepths j,
          ∑ a ∈ Finset.range (t + 1),
            coreNonboundarySignedMertensCell j n t a := by
      apply Finset.sum_congr rfl
      intro n _hn
      rw [coreNonboundarySignedLengthSlice_eq_mertensCells]
    _ = ∑ t ∈ coreLongDeepDepths j,
        ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
          ∑ a ∈ Finset.range (t + 1),
            coreNonboundarySignedMertensCell j n t a := by
      rw [Finset.sum_comm]
    _ = ∑ t ∈ coreLongDeepDepths j,
        ∑ a ∈ Finset.range (t + 1),
          ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
            coreNonboundarySignedMertensCell j n t a := by
      apply Finset.sum_congr rfl
      intro t _ht
      rw [Finset.sum_comm]

/-- Canonical source phrased directly on the explicit signed Mertens cells. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreNonboundarySignedMertensCells.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreNonboundarySignedMertensCells.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f98a495095c2f601f2986fd610b45d3f024bcfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
