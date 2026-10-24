# PreservesEllipticLatticeGroupLoci

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:078a97afa44eaf23bd1f22dc1267d1702575c6535f34255ecf992bda66bddbb1",
  "kind": "structure",
  "lexical_name": "PreservesEllipticLatticeGroupLoci",
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
  "slug": "preservesellipticlatticegrouploci--bd0e001b8388ca7faab768b4",
  "source": {
    "blob": "0b780e7f3c463794e3cf9eda11e95846bd062d95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 40,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant08124030c4231785b0711ecec0971f3fbec5d0c9d18779e0ba7802f80220f630.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd0e001b8388ca7faab768b4568bd19f934b6accab1c96431f53719367859c4d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant08124030c4231785b0711ecec0971f3fbec5d0c9d18779e0ba7802f80220f630.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:078a97afa44eaf23bd1f22dc1267d1702575c6535f34255ecf992bda66bddbb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PreservesEllipticLatticeGroupLoci {α : Type}
    {source target : Think.Compression.Syntax.CompressedString α}
    (sourceAssignment : EllipticLocusAssignment source)
    (targetAssignment : EllipticLocusAssignment target) : Prop where
  preservesCompression :
    Think.Compression.Syntax.PreservesSemanticsAndLookup source target
  sameCurve :
    sourceAssignment.groupLaw.curve = targetAssignment.groupLaw.curve
  sameDnaCurve :
    sourceAssignment.dna.curve = targetAssignment.dna.curve
  sameIdentityLabel :
    sourceAssignment.groupLaw.identityLabel =
      targetAssignment.groupLaw.identityLabel
  sameOperationLabel :
    sourceAssignment.groupLaw.operationLabel =
      targetAssignment.groupLaw.operationLabel
  sameInverseLabel :
    sourceAssignment.groupLaw.inverseLabel =
      targetAssignment.groupLaw.inverseLabel
  sameDnaGroupLawAtom :
    sourceAssignment.dna.groupLawAtom = targetAssignment.dna.groupLawAtom
  residuePreserved :
    sourceAssignment.residueAtoms = targetAssignment.residueAtoms

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant08124030c4231785b0711ecec0971f3fbec5d0c9d18779e0ba7802f80220f630.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EllipticLatticeGroupLoci/Variant08124030c4231785b0711ecec0971f3fbec5d0c9d18779e0ba7802f80220f630.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b780e7f3c463794e3cf9eda11e95846bd062d95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
