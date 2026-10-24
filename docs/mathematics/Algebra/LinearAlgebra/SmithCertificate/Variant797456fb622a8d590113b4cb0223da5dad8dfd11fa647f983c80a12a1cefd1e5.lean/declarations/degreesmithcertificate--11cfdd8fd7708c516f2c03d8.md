# DegreeSmithCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee3b9ad06b07665e8a3012cd84833fbfaba0d6d4d6d388566415cfbcc9aa4404",
  "kind": "structure",
  "lexical_name": "DegreeSmithCertificate",
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
  "slug": "degreesmithcertificate--11cfdd8fd7708c516f2c03d8",
  "source": {
    "blob": "23ce3de2fb204e802692326e08de25e8b6d0afc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 33,
    "path": "GRWTSK/Algebra/LinearAlgebra/SmithCertificate/Variant797456fb622a8d590113b4cb0223da5dad8dfd11fa647f983c80a12a1cefd1e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11cfdd8fd7708c516f2c03d85e4a6a1585c9e0637de7f9f4b3ecfb329c8df20b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SmithCertificate/Variant797456fb622a8d590113b4cb0223da5dad8dfd11fa647f983c80a12a1cefd1e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee3b9ad06b07665e8a3012cd84833fbfaba0d6d4d6d388566415cfbcc9aa4404`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DegreeSmithCertificate
    (chain : FiniteIntegralChain) (degree : Nat) where
  cycleRank : Nat
  boundaryRank : Nat
  smith :
    Module.Basis.SmithNormalForm
      (chain.boundaries degree)
      (Fin cycleRank)
      boundaryRank
  torsionCount : Nat
  torsionOrders : Fin torsionCount → Nat
  orders_ge_two :
    ∀ index, 2 ≤ torsionOrders index
  orders_dvd_next :
    ∀ {left right},
      left.val + 1 = right.val →
        torsionOrders left ∣ torsionOrders right
  torsionIndex : Fin torsionCount ↪ Fin boundaryRank
  torsion_matches_smith :
    ∀ index,
      Int.natAbs (smith.a (torsionIndex index)) =
        torsionOrders index
  torsion_complete :
    ∀ smithIndex,
      1 < Int.natAbs (smith.a smithIndex) →
        ∃ torsionIndexValue,
          torsionIndex torsionIndexValue = smithIndex
  freeRank : Nat
  decomposition :
    chain.DegreeHomology degree ≃+
      (FiniteFree freeRank ×
        SmithTorsionCoordinates torsionOrders)
  sourceDigest : Digest
  smithReceipt : ObjectAddress
  kernelCertificate : ObjectAddress

namespace DegreeSmithCertificate

variable
    {chain : FiniteIntegralChain} {degree : Nat}
    (certificate : DegreeSmithCertificate chain degree)

/-- Every displayed torsion order is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SmithCertificate/Variant797456fb622a8d590113b4cb0223da5dad8dfd11fa647f983c80a12a1cefd1e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SmithCertificate/Variant797456fb622a8d590113b4cb0223da5dad8dfd11fa647f983c80a12a1cefd1e5.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23ce3de2fb204e802692326e08de25e8b6d0afc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
