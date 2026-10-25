# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Guided.Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "203cdf1b8c18728a1d337c316427e3559d4b2bcb",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `203cdf1b8c18728a1d337c316427e3559d4b2bcb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.Optimization.Global` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Search.Heuristic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GuidedOptConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/declarations/guidedoptconfig--daf2e086ab31a0f106773a15.md) | 63 | `declaration-track:daf2e086ab31a0f106773a15e93f6b86680ac0e18efdc4a7edd2be5d94944682` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/declarations/instance--b1616ace1ed5c597f5af9cea.md) | 74 | `declaration-track:b1616ace1ed5c597f5af9cea6b7146896b6c9bd7b040d2403672d37db09628fb` |
| 3 | `def` | [intToFloat'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/declarations/inttofloat--451fe4008c7d04d5f5bdd196.md) | 79 | `declaration-track:451fe4008c7d04d5f5bdd1961031d88f325fbd4924485e0c0aea9c9150954378` |
| 4 | `def` | [floatToRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/declarations/floattorat--b67b61a95e4eb178e7c36ce4.md) | 86 | `declaration-track:b67b61a95e4eb178e7c36ce47e74ce9aebc74c66957868e5dcab44b0c3e1d13c` |
| 5 | `def` | [smallWidth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/declarations/smallwidth--d8f164507f8ab93f1b733168.md) | 97 | `declaration-track:d8f164507f8ab93f1b733168e1a6fb67bec09e2c04616388bbef57fd0eba8cc9` |
| 6 | `theorem` | [smallWidth_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/declarations/smallwidth-pos--d5079b934ad65d5077fdd000.md) | 99 | `result-track:d5079b934ad65d5077fdd000dc88494029b14c706d71372dc6e027725c0c0a5d` |
| 7 | `def` | [floatEnvToRatEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/declarations/floatenvtoratenv--3fa520ebf4932c0737100de4.md) | 104 | `declaration-track:3fa520ebf4932c0737100de4b76db168e6dbd7ec72d552d29ba14e6be4b34e9d` |
| 8 | `def` | [floatEnvToRatEnvClamped](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/declarations/floatenvtoratenvclamped--eb7a4950653b31af246b8d44.md) | 116 | `declaration-track:eb7a4950653b31af246b8d449a076b4a525c0a4fdd4057cabc279016a03fa031` |
| 9 | `def` | [certifyCandidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/declarations/certifycandidate--bead9a1d7c116fd8086f1cae.md) | 137 | `declaration-track:bead9a1d7c116fd8086f1cae84869ca35ad8fe517d6863982f6efbff7c92aa49` |
| 10 | `def` | [certifyCandidateDiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/declarations/certifycandidatediv--0d75f23e47d8da6fd655c287.md) | 142 | `declaration-track:0d75f23e47d8da6fd655c287dce3b4b8dcf6610a8b2d50749f11333d1ba0c4d2` |
| 11 | `def` | [globalMinimizeGuided](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/declarations/globalminimizeguided--9007f93e410916e2c4e6dd3a.md) | 157 | `declaration-track:9007f93e410916e2c4e6dd3ab3e48cc900ecc5d8f305ae36458f68c4a90622a5` |
| 12 | `def` | [globalMinimizeGuidedDiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/declarations/globalminimizeguideddiv--61be824138cd00903d8406b9.md) | 190 | `declaration-track:61be824138cd00903d8406b9e6a19b2c80f0a2715d84090d529b1a2f2700a763` |
| 13 | `def` | [globalMaximizeGuided](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/declarations/globalmaximizeguided--d007bc5c28d628f2fbd587dd.md) | 214 | `declaration-track:d007bc5c28d628f2fbd587ddfa3af5606dbf434764b5e4c9c8eda6ed9241863e` |
| 14 | `def` | [globalMaximizeGuidedDiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/declarations/globalmaximizeguideddiv--58d2a8ad17ed8cc28444434f.md) | 225 | `declaration-track:58d2a8ad17ed8cc28444434f0a771ee2b7a4c386e351fe16b1ca3f63443d96b1` |
| 15 | `def` | [minimize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/declarations/minimize--43cf688bff716ad0871a571c.md) | 236 | `declaration-track:43cf688bff716ad0871a571c88cb9f35bcb089af82260b80f72f2447bee44216` |
| 16 | `def` | [maximize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/declarations/maximize--26d78778e64efd737b1ab802.md) | 240 | `declaration-track:26d78778e64efd737b1ab8025858ffa856880c2edbc63a6676784c2c8bd755e1` |
| 17 | `def` | [GlobalResult.minInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/declarations/globalresult-mininterval--e662f02092bed0a343b85f1d.md) | 247 | `declaration-track:e662f02092bed0a343b85f1d303e272d886d451a4f26728116442bb7c228ca0d` |
| 18 | `def` | [GlobalResult.hasConverged](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/declarations/globalresult-hasconverged--a659274d76bf572da1f1fe5c.md) | 254 | `declaration-track:a659274d76bf572da1f1fe5c962b9b6347d743229badb605a4f1831450dd6546` |
| 19 | `def` | [GlobalResult.gap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/declarations/globalresult-gap--0b92c48f425feaed888dafcc.md) | 258 | `declaration-track:0b92c48f425feaed888dafcc2d2a23c0da61e3571f28dc5226cf95d5181b97fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
