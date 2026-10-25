# candidateSpectralTripleSurface

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8e0b276c22971c9dddb0d25a65bcaf61e765bce8c6bd56b93e64a2aaceb91cb",
  "kind": "def",
  "lexical_name": "candidateSpectralTripleSurface",
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
  "slug": "candidatespectraltriplesurface--17f2e036aebe8196721c84b6",
  "source": {
    "blob": "62d1c317c4d8e0b00569b5208e8c7d5c1781ff0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralTripleAdmissibility/Variant25f444265de1d8018528037c31c15fa23402092feac85ab77805a771322c3266.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17f2e036aebe8196721c84b6bb543a00dc928b50fdabc4863cfbc506657582df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralTripleAdmissibility/Variant25f444265de1d8018528037c31c15fa23402092feac85ab77805a771322c3266.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8e0b276c22971c9dddb0d25a65bcaf61e765bce8c6bd56b93e64a2aaceb91cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def candidateSpectralTripleSurface
    (compactResolventOrSemifiniteSubstituteDeclared
      boundedCommutatorsForGenerators : Bool) :
    CandidateSpectralTripleSurface :=
  let admitted :=
    compactResolventOrSemifiniteSubstituteDeclared &&
      boundedCommutatorsForGenerators
  { algebraId := "A_D"
    representation := "pi:A_D_to_B_H"
    hilbertSpace := "H_plus_direct_sum_H_minus"
    grading := "Z2_graded"
    diracOperator := "D_odd_self_adjoint_unbounded"
    faithfulRepresentation := true
    oddSelfAdjointDirac := true
    compactResolventOrSemifiniteSubstituteDeclared :=
      compactResolventOrSemifiniteSubstituteDeclared
    boundedCommutatorsForGenerators := boundedCommutatorsForGenerators
    admittedSpectralTriple := admitted
    theoremAuthority := false }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralTripleAdmissibility/Variant25f444265de1d8018528037c31c15fa23402092feac85ab77805a771322c3266.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralTripleAdmissibility/Variant25f444265de1d8018528037c31c15fa23402092feac85ab77805a771322c3266.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62d1c317c4d8e0b00569b5208e8c7d5c1781ff0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
