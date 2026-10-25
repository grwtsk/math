# elliptic_torsion_authority_order_eq_period

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e5a40f8-3bdd-31dd-63c4-698df78b1cc2",
  "kind": "theorem",
  "lexical_name": "elliptic_torsion_authority_order_eq_period",
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
  "slug": "elliptic-torsion-authority-order-eq-period--ded0236b3542ac7f450b16d2",
  "source": {
    "blob": "21abe7b7872c7838f15fc44d3c366531c9489fa1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 177,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticCurveTorsionAuthoritySpin/Variant5de50e79af59df3bc3bcd5f45e53132ebfd8b6314d35150a8b5050ec7298ab55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ded0236b3542ac7f450b16d27bac1524cc85ed0bade00312b4e9ac7708f6e132",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticCurveTorsionAuthoritySpin/Variant5de50e79af59df3bc3bcd5f45e53132ebfd8b6314d35150a8b5050ec7298ab55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e5a40f8-3bdd-31dd-63c4-698df78b1cc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem elliptic_torsion_authority_order_eq_period
    {Curve : Type u} {Point : Type v} {torsionN authorityN : Nat}
    (B : EllipticCurveTorsionAuthoritySpinBridge Curve Point torsionN authorityN) :
    B.torsionLoop.torsion.order = B.authorityOrbit.period :=
  B.order_eq_authority_period

/-- The authority return state in the bridge may forward through the ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticCurveTorsionAuthoritySpin/Variant5de50e79af59df3bc3bcd5f45e53132ebfd8b6314d35150a8b5050ec7298ab55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticCurveTorsionAuthoritySpin/Variant5de50e79af59df3bc3bcd5f45e53132ebfd8b6314d35150a8b5050ec7298ab55.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21abe7b7872c7838f15fc44d3c366531c9489fa1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
