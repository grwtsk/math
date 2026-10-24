# projectionRules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c2de3de30882dd7527f7568254e9ecbe6b13bda387f33b560e633593311de68",
  "kind": "def",
  "lexical_name": "projectionRules",
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
  "slug": "projectionrules--e3f027048dcb9b7295b08119",
  "source": {
    "blob": "881a1c5a7df0107d9058631ffbe9176216f825b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Projection/Variant29ef5d268e10b9b63ccef72decad85a9dae266e86769d7d466344e64a2557e23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3f027048dcb9b7295b08119cad81e4966e12293f06f5735e30e927b11de3aa0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Projection/Variant29ef5d268e10b9b63ccef72decad85a9dae266e86769d7d466344e64a2557e23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c2de3de30882dd7527f7568254e9ecbe6b13bda387f33b560e633593311de68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def projectionRules : List ProjectionRule :=
  [ { rawRegion := "Think/Pipeline/Center/*"
      canonicalFiber := .pipelineCenter
      canonicalNode := "Think/Pipeline/Center"
      action := "retain center-weighted control files" }
  , { rawRegion := "Think/Pipeline/Phases/PhaseNN_*.lean"
      canonicalFiber := .pipelinePhase
      canonicalNode := "Think/Pipeline/Phases/PhaseTable.lean"
      action := "fold into indexed phase records" }
  , { rawRegion := "Think/Poles/*Pole/*.lean"
      canonicalFiber := .poleFamily
      canonicalNode := "Think/Poles/<Family>.lean"
      action := "merge pole leaves into one family module" }
  , { rawRegion := "Think/Residues/*.lean"
      canonicalFiber := .residueAlgebra
      canonicalNode := "Think/Residues"
      action := "retain residue algebra modules" }
  , { rawRegion := "Think/SourceTree/*.lean"
      canonicalFiber := .sourceTreeGeometry
      canonicalNode := "Think/SourceTree"
      action := "retain source-tree geometry and Rado projection" }
  , { rawRegion := "Think/Targets/*.lean"
      canonicalFiber := .targetBoundary
      canonicalNode := "Think/Targets"
      action := "retain target boundary layer" }
  , { rawRegion := "Think/FiniteWitnessResidue/Targets/*.lean"
      canonicalFiber := .finiteWitness
      canonicalNode := "Think/FiniteWitnessResidue/Targets/WitnessBridge.lean"
      action := "record as witness-bridge target fiber" }
  , { rawRegion := "Think/ModularWave/*.lean"
      canonicalFiber := .modularCarrier
      canonicalNode := "Think/ModularWave"
      action := "retain arithmetic carrier shell" }
  , { rawRegion := "Think/ResearchSurvey/<topic>.lean"
      canonicalFiber := .researchCorpus
      canonicalNode := "Think/ResearchSurvey/Corpus.lean"
      action := "convert topic files into corpus entries" }
  , { rawRegion := "Think/Validation/*.lean"
      canonicalFiber := .validationShell
      canonicalNode := "Think/Validation"
      action := "retain validation shell" }
  , { rawRegion := "Think/Pipeline/Center/Braid*"
      canonicalFiber := .braidConformance
      canonicalNode := "Think/Pipeline/Center/Braid"
      action := "merge braid law and validation families" }
  , { rawRegion := ".lake"
      canonicalFiber := .buildShell
      canonicalNode := "excluded"
      action := "exclude build artifact shell" }
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Projection/Variant29ef5d268e10b9b63ccef72decad85a9dae266e86769d7d466344e64a2557e23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Projection/Variant29ef5d268e10b9b63ccef72decad85a9dae266e86769d7d466344e64a2557e23.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `881a1c5a7df0107d9058631ffbe9176216f825b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
