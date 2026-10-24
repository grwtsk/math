# inertiaSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22ec5f780ddf4c68d68c113b7c7abc5e33a278f8775572b01d7375a8e81c5d77",
  "kind": "def",
  "lexical_name": "inertiaSubgroup",
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
  "slug": "inertiasubgroup--c934783bfbf2822ff966d462",
  "source": {
    "blob": "5139de92c86eccbda64222b0dbcca9705c633601",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 54,
    "path": "GRWTSK/Algebra/RamificationGroup/Variant1d898b185a499673e8b5a7ba1ebea6368bd44c7537078e680af4adb2ab0420be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c934783bfbf2822ff966d46255f2994dcacf2ed24c495c77dfe4862e09c86526",
  "verification": {
    "reference": "docs/verification/Algebra/RamificationGroup/Variant1d898b185a499673e8b5a7ba1ebea6368bd44c7537078e680af4adb2ab0420be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22ec5f780ddf4c68d68c113b7c7abc5e33a278f8775572b01d7375a8e81c5d77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def inertiaSubgroup (A : ValuationSubring L) : Subgroup (A.decompositionSubgroup K) :=
  MonoidHom.ker <|
    MulSemiringAction.toRingAut (A.decompositionSubgroup K) (IsLocalRing.ResidueField A)

end ValuationSubring
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RamificationGroup/Variant1d898b185a499673e8b5a7ba1ebea6368bd44c7537078e680af4adb2ab0420be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RamificationGroup/Variant1d898b185a499673e8b5a7ba1ebea6368bd44c7537078e680af4adb2ab0420be.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5139de92c86eccbda64222b0dbcca9705c633601` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
