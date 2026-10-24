# primeGapImportCandidates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fbb4123761d7bf1982f638106521398aca5470a8836c3c66147562d9b2fe30a1",
  "kind": "def",
  "lexical_name": "primeGapImportCandidates",
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
  "slug": "primegapimportcandidates--eac7e3ffeebf8da5009b9d29",
  "source": {
    "blob": "b4363f049fe9ab47f5467f1d333f536437456af7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 68,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f496d706f7274506c616e2e6c65616e/Variant84d2ac831632bdfdf0b8c270ea1f4b731621b95e0e10cc2735dcd0307463bac5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eac7e3ffeebf8da5009b9d29070f50b71130622b49fe39dbf51b01f16ded50f4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f496d706f7274506c616e2e6c65616e/Variant84d2ac831632bdfdf0b8c270ea1f4b731621b95e0e10cc2735dcd0307463bac5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fbb4123761d7bf1982f638106521398aca5470a8836c3c66147562d9b2fe30a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def primeGapImportCandidates : List TargetImportCandidate := [
  { target := FWR.Target.PrimeGapBounds
    atomId := "finitePrimeWindow"
    residueKind := FWR.ResidueKind.missingFiniteWitness
    plannedAuthority := Think.Imports.AuthorityLevel.internalProof
    status := ImportCandidateStatus.definitionSurface
    finalTargetRetained := true
    note := "formalize elementary prime windows first" },
  { target := FWR.Target.PrimeGapBounds
    atomId := "admissibleTuple"
    residueKind := FWR.ResidueKind.missingFiniteWitness
    plannedAuthority := Think.Imports.AuthorityLevel.internalProof
    status := ImportCandidateStatus.definitionSurface
    finalTargetRetained := true
    note := "finite tuple certificates can be checked locally" },
  { target := FWR.Target.PrimeGapBounds
    atomId := "distributionCertificate"
    residueKind := FWR.ResidueKind.missingDistributionEstimate
    plannedAuthority := Think.Imports.AuthorityLevel.importedTheorem
    status := ImportCandidateStatus.retainedUntilCertified
    finalTargetRetained := true
    note := "distribution estimates require exact constants and hypotheses" },
  { target := FWR.Target.PrimeGapBounds
    atomId := "maynardWeightCertificate"
    residueKind := FWR.ResidueKind.missingSieveEstimate
    plannedAuthority := Think.Imports.AuthorityLevel.importedTheorem
    status := ImportCandidateStatus.retainedUntilCertified
    finalTargetRetained := true
    note := "sieve machinery is retained until certified" },
  { target := FWR.Target.PrimeGapBounds
    atomId := "finalImprovedGapBound"
    residueKind := FWR.ResidueKind.conjecturalAtom
    plannedAuthority := Think.Imports.AuthorityLevel.metadata
    status := ImportCandidateStatus.openConjectureRetained
    finalTargetRetained := true
    note := "exact gap claims remain residue" }
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f496d706f7274506c616e2e6c65616e/Variant84d2ac831632bdfdf0b8c270ea1f4b731621b95e0e10cc2735dcd0307463bac5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f496d706f7274506c616e2e6c65616e/Variant84d2ac831632bdfdf0b8c270ea1f4b731621b95e0e10cc2735dcd0307463bac5.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4363f049fe9ab47f5467f1d333f536437456af7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
