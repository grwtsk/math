# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Guided.Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0df1a3d493829a3fc1536d5c24f80ca2183dc46",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0df1a3d493829a3fc1536d5c24f80ca2183dc46`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.Optimization.Global` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Search.Heuristic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GuidedOptConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/declarations/guidedoptconfig--9758d8936ae6c336784dd05f.md) | 55 | `declaration-track:9758d8936ae6c336784dd05fd2a9e90b648f42b64fd1b5143b4cdf821268b835` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/declarations/instance--9fd47d63bc361d920f3e163e.md) | 66 | `declaration-track:9fd47d63bc361d920f3e163e09f6b7768f73745675d73d9ea687c465a66983b1` |
| 3 | `def` | [intToFloat'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/declarations/inttofloat--888ab8ad51f7d4ce992b126a.md) | 71 | `declaration-track:888ab8ad51f7d4ce992b126ad311cbceb84c3f2358c7121489c62f3ab9ff52f5` |
| 4 | `def` | [floatToRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/declarations/floattorat--0bc61cfbd9befc442b2dde75.md) | 78 | `declaration-track:0bc61cfbd9befc442b2dde75dedcaa6e276d7d502cd8d10daca2bc9cf2dc1b28` |
| 5 | `def` | [smallWidth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/declarations/smallwidth--318185a57ca43e4ca7ba45f0.md) | 89 | `declaration-track:318185a57ca43e4ca7ba45f04c71eb45616271bf38ea7839623eb3d1ce81ad8d` |
| 6 | `theorem` | [smallWidth_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/declarations/smallwidth-pos--6311cee6ebc41c1ff9e61ed6.md) | 91 | `result-track:6311cee6ebc41c1ff9e61ed677e5947e9f42825365ab874bef2c317cc10cbe9c` |
| 7 | `def` | [floatEnvToRatEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/declarations/floatenvtoratenv--757e96d4cd0b8920f1d664ac.md) | 96 | `declaration-track:757e96d4cd0b8920f1d664ac362ee6d38439539faf0367ad4fe633f7cad16c29` |
| 8 | `def` | [floatEnvToRatEnvClamped](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/declarations/floatenvtoratenvclamped--4848f81b71a25f5a213bc472.md) | 108 | `declaration-track:4848f81b71a25f5a213bc472e8307856605a53a686aed2bcad822e8d4954f636` |
| 9 | `def` | [certifyCandidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/declarations/certifycandidate--dc94746c420203b7cd27e7b2.md) | 129 | `declaration-track:dc94746c420203b7cd27e7b27d0f6ee829d257dada46a382c515d963cb5d8616` |
| 10 | `def` | [certifyCandidateDiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/declarations/certifycandidatediv--97f43ee42fd6e97baeaeec38.md) | 134 | `declaration-track:97f43ee42fd6e97baeaeec38af8d6189384cb7a5a651b2f8e131efdfa7494021` |
| 11 | `def` | [globalMinimizeGuided](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/declarations/globalminimizeguided--3ecd7d1c11879d0d44ab8d4d.md) | 149 | `declaration-track:3ecd7d1c11879d0d44ab8d4ddfe03319b17277136232105c8b59c18795d2c80f` |
| 12 | `def` | [globalMinimizeGuidedDiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/declarations/globalminimizeguideddiv--78be3c376c1991b6c1b67d5f.md) | 182 | `declaration-track:78be3c376c1991b6c1b67d5fc953330f7fe66994fb32b4adb9a7ecb5fc5956ee` |
| 13 | `def` | [globalMaximizeGuided](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/declarations/globalmaximizeguided--725e2ae1acebef3d4bda775f.md) | 206 | `declaration-track:725e2ae1acebef3d4bda775f2d510e39b3e21179e6b3966a9cde974c7f084600` |
| 14 | `def` | [globalMaximizeGuidedDiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/declarations/globalmaximizeguideddiv--ce37d3ad35b9a22bb1891f13.md) | 217 | `declaration-track:ce37d3ad35b9a22bb1891f13192cdee00eb36d5c8c4f575c627fbe7006e712a8` |
| 15 | `def` | [minimize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/declarations/minimize--698a1cb95fda054401415fce.md) | 228 | `declaration-track:698a1cb95fda054401415fce312ab4f47448c1756b783c76a99c15270c2edd11` |
| 16 | `def` | [maximize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/declarations/maximize--1dd4b0d13dc4763d2c637ec5.md) | 232 | `declaration-track:1dd4b0d13dc4763d2c637ec5b24c4d8f9785b3b5ac8ba91e133a080a4ac981ef` |
| 17 | `def` | [GlobalResult.minInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/declarations/globalresult-mininterval--ed71bb51b6ff4da90edef928.md) | 239 | `declaration-track:ed71bb51b6ff4da90edef9289f9e3269fa5ba380f1280c5bcbe9947b8283875a` |
| 18 | `def` | [GlobalResult.hasConverged](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/declarations/globalresult-hasconverged--14658b737bfe4503c10c4c94.md) | 246 | `declaration-track:14658b737bfe4503c10c4c94cb2ea3c7f409afbd51b6a5d9722b6cd98e5009c5` |
| 19 | `def` | [GlobalResult.gap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/declarations/globalresult-gap--6c39bc5e09010fa4d5b47583.md) | 250 | `declaration-track:6c39bc5e09010fa4d5b475834d8ce69ea8a705d1f088673a96c364ad753c88b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
