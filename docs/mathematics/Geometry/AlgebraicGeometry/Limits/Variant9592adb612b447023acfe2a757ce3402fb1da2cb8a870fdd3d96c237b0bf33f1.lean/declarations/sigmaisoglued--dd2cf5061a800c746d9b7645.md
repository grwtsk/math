# sigmaIsoGlued

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22ea0667b5b594b068f06af56072316d604d8141c95e53d542850fb5fa79e1b7",
  "kind": "def",
  "lexical_name": "sigmaIsoGlued",
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
  "slug": "sigmaisoglued--dd2cf5061a800c746d9b7645",
  "source": {
    "blob": "c05276fe9974a070067bc296c36fa734e54d6fc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 244,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant9592adb612b447023acfe2a757ce3402fb1da2cb8a870fdd3d96c237b0bf33f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd2cf5061a800c746d9b7645ce750ec9423ac7ba761d6437c21a73e875ceeee8",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Limits/Variant9592adb612b447023acfe2a757ce3402fb1da2cb8a870fdd3d96c237b0bf33f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22ea0667b5b594b068f06af56072316d604d8141c95e53d542850fb5fa79e1b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaIsoGlued : ∐ f ≅ (disjointGlueData f).glued :=
  Scheme.fullyFaithfulForgetToLocallyRingedSpace.preimageIso
    (PreservesCoproduct.iso _ _ ≪≫
      colimit.isoColimitCocone ⟨_, toLocallyRingedSpaceCoproductCofanIsColimit f⟩ ≪≫
        (disjointGlueData f).isoLocallyRingedSpace.symm)

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Limits/Variant9592adb612b447023acfe2a757ce3402fb1da2cb8a870fdd3d96c237b0bf33f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant9592adb612b447023acfe2a757ce3402fb1da2cb8a870fdd3d96c237b0bf33f1.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c05276fe9974a070067bc296c36fa734e54d6fc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
