# DiscreteTorsionSurgeryRequest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98280c22fa59188efcda0c671e67982976f6ba81d01aee3d064a03e746fe87fb",
  "kind": "structure",
  "lexical_name": "DiscreteTorsionSurgeryRequest",
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
  "slug": "discretetorsionsurgeryrequest--8ca12fce117aecf8041ea2f0",
  "source": {
    "blob": "1b7114d2f543481e25ddbfc13a99e1dac419a9cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 90,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/TorsionRoundedShell/Variant70cada0b8d77761aea4d524f50f8a7c61526acb1f8a8fb6afa6bfba77343c11f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ca12fce117aecf8041ea2f07dbb6f5bb4b061c515d6ecc89aa36d5aec172fcf",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/TorsionRoundedShell/Variant70cada0b8d77761aea4d524f50f8a7c61526acb1f8a8fb6afa6bfba77343c11f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98280c22fa59188efcda0c671e67982976f6ba81d01aee3d064a03e746fe87fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DiscreteTorsionSurgeryRequest
    (PhaseTorsion : Type y) [AddCommGroup PhaseTorsion] where
  source : PhaseTorsion
  target : PhaseTorsion
  gluingClassBefore : Digest
  gluingClassAfter : Digest
  obstructionGroup : String
  zeroObstructionCertificate : ObjectAddress
  proposedGluingCertificate : ObjectAddress
  requestObject : ObjectAddress

end

end Mathematics.NeuralDiffusion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/TorsionRoundedShell/Variant70cada0b8d77761aea4d524f50f8a7c61526acb1f8a8fb6afa6bfba77343c11f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/TorsionRoundedShell/Variant70cada0b8d77761aea4d524f50f8a7c61526acb1f8a8fb6afa6bfba77343c11f.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b7114d2f543481e25ddbfc13a99e1dac419a9cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
