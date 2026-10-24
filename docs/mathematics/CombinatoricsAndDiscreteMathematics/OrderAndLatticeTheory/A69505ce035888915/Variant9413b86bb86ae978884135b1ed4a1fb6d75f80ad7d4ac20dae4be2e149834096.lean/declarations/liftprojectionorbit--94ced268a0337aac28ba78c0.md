# liftProjectionOrbit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b5b68ed5748fa5dadad529fb019bd7f5aa07c258b95afcab5d9b5c737b3b2a1",
  "kind": "def",
  "lexical_name": "liftProjectionOrbit",
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
  "slug": "liftprojectionorbit--94ced268a0337aac28ba78c0",
  "source": {
    "blob": "318542f5ffaa93fdeede986fb17471ba3e566084",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 17,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/A69505ce035888915/Variant9413b86bb86ae978884135b1ed4a1fb6d75f80ad7d4ac20dae4be2e149834096.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94ced268a0337aac28ba78c09e0aa8a260538383c5200370942358c69f4a4ffc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/A69505ce035888915/Variant9413b86bb86ae978884135b1ed4a1fb6d75f80ad7d4ac20dae4be2e149834096.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b5b68ed5748fa5dadad529fb019bd7f5aa07c258b95afcab5d9b5c737b3b2a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def liftProjectionOrbit
    (certificate : ExternalRigidifierCert hierarchy)
    (encoding : LabelNormalizedProjectionCode certificate)
    (orbit : Finset (MonoHierarchy hierarchy.Element))
    (nonempty : orbit.Nonempty) :
    MonoHierarchy hierarchy.Element :=
  letI : LinearOrder (MonoHierarchy hierarchy.Element) :=
    LinearOrder.lift'
      (labeledProjectionCode certificate encoding)
      (labeledProjectionCode_injective certificate encoding)
  orbit.min' nonempty

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/A69505ce035888915/Variant9413b86bb86ae978884135b1ed4a1fb6d75f80ad7d4ac20dae4be2e149834096.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/A69505ce035888915/Variant9413b86bb86ae978884135b1ed4a1fb6d75f80ad7d4ac20dae4be2e149834096.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `318542f5ffaa93fdeede986fb17471ba3e566084` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
