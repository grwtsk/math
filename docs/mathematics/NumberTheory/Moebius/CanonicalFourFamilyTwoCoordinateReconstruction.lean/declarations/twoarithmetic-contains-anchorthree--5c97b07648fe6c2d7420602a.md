# twoArithmetic_contains_anchorThree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2aaae24a-9b43-3e63-87cd-bb3748e00c89",
  "kind": "theorem",
  "lexical_name": "twoArithmetic_contains_anchorThree",
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
  "slug": "twoarithmetic-contains-anchorthree--5c97b07648fe6c2d7420602a",
  "source": {
    "blob": "4d4f31ef2dbaf5b29dadaedc7a3c26dbcf58ffb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 228,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c97b07648fe6c2d7420602a41d0cb066bfd75044a995696c6f030bfd73e51cc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2aaae24a-9b43-3e63-87cd-bb3748e00c89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoArithmetic_contains_anchorThree {X : ℕ} (hX : 10 ≤ X) :
    canonicalVisibleCellPacketThree (-1) ∈ CanonicalTwoCoordinateArithmeticDifferences X := by
  refine ⟨?_, (fun j => if j then 0 else -1), ?_⟩
  · refine ⟨canonicalVisibleRestriction X (by omega), canonicalFourFamilyEmptyRestriction X, ?_⟩
    rw [canonicalFourFamilyRestrictionPacket_empty, sub_zero, canonicalVisible_actual_packet]
  · funext F c
    simp [twoPacket, canonicalVisibleCellPacketThree, twoFamily, twoCenter]

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d4f31ef2dbaf5b29dadaedc7a3c26dbcf58ffb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
