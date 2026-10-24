# openAISevenEighthsMechanismSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d148b913734b02f67fce9de10a4b7b0783d03a1c18467e7d7dcc7600f8be60e0",
  "kind": "def",
  "lexical_name": "openAISevenEighthsMechanismSource",
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
  "slug": "openaiseveneighthsmechanismsource--b350c880ef00f9e6aaa11649",
  "source": {
    "blob": "dfba6ca8f82e1b12ab4248e8c6b4541e86955f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 127,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b350c880ef00f9e6aaa1164981dca370f9efac6efbfbc2da13e185d0c61c45fd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d148b913734b02f67fce9de10a4b7b0783d03a1c18467e7d7dcc7600f8be60e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def openAISevenEighthsMechanismSource : SevenEighthsMechanismSourceRecord where
  repository := "openai/math"
  revision := "1581d4cbdd69a0faf34b2089614fe2a814316a6a"
  certifiedBandsPath :=
    "lean/OAI/NumberTheory/DirichletL/Detector/FinalAssemblyCertifiedBands.lean"
  certifiedBandsBlob := "8c7337e8f0755ba24fddab46a6630d58a32a9c86"
  chosenDataPath :=
    "lean/OAI/NumberTheory/DirichletL/Detector/FinalAssemblyChosenData.lean"
  chosenDataBlob := "94b7543e8076fc514b61e89efa7141831e102c03"
  commonProbePath :=
    "lean/OAI/NumberTheory/DirichletL/Hecke/CommonProbe.lean"
  commonProbeBlob := "92ae82094f323d97b92ae54801e88f2c97f20187"
  unconditionalPath :=
    "lean/OAI/NumberTheory/DirichletL/Detector/FinalAssemblyUnconditional.lean"
  unconditionalBlob := "e7c20910424837fb954796e1216f5aa453bbd5da"
  terminalPath := "lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean"
  terminalBlob := "46c67f4000906b1391a471d6e6396ac0da3c16a5"
  detectorDeclaration :=
    "OAI.SevenEighths.ProbeFinalAssemblyCertifiedBands.DetectorCertifiedBands"
  fineMomentDeclaration :=
    "OAI.SevenEighths.ProbeFinalAssembly.FineMomentInput"
  chosenMomentDeclaration :=
    "OAI.SevenEighths.ProbeFinalAssembly.ChosenMomentInput"
  commonProbeDeclaration :=
    "OAI.SevenEighths.HeckeCommonProbe.UniformCommonProbe"
  betaBoundDeclaration :=
    "OAI.SevenEighths.HeckeCommonProbe.beta_le_seven_eighths"
  familyNonvanishingDeclaration :=
    "OAI.DirichletCharacter.LFunction_ne_zero_of_seven_eighths_lt_re"
  zetaSpecializationDeclaration :=
    "OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re"

/-- Independent gates for importing the proof-relevant mechanism, which is
strictly stronger than importing its terminal proposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfba6ca8f82e1b12ab4248e8c6b4541e86955f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
