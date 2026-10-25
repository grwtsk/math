# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Random.Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f41d852169e093c0ea69c638dd5735fd6c19aa9f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f41d852169e093c0ea69c638dd5735fd6c19aa9f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.ByteArray.Extra` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RandomGen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26.lean/declarations/randomgen--1f00283b33e87abde7b2b884.md) | 29 | `declaration-track:1f00283b33e87abde7b2b8840c9fda4d29d0f0f3b8820b1422eb8ec931892ea8` |
| 2 | `structure` | [StdGen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26.lean/declarations/stdgen--90ec08db325be53ffe82e47d.md) | 44 | `declaration-track:90ec08db325be53ffe82e47da93a627358bd1874666c725ef8d4aa207f31ec8d` |
| 3 | `def` | [mkStdGen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26.lean/declarations/mkstdgen--15fbdc341f60d7502f691e5f.md) | 49 | `declaration-track:15fbdc341f60d7502f691e5f146f3f8c83ec40e36801823d67b0ba2944ac3548` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26.lean/declarations/instance--9d2b6d6b3d932cd7d52d4a33.md) | 55 | `declaration-track:9d2b6d6b3d932cd7d52d4a33cc6eeee1a61d14f313a1d7e74faa5adddc848440` |
| 5 | `def` | [stdRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26.lean/declarations/stdrange--c42411dc54a44023c1dc1954.md) | 58 | `declaration-track:c42411dc54a44023c1dc1954124171b3dda5797b0881c78e315526fe0d96bf31` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26.lean/declarations/instance--c00991fe3076cb37447e7dcc.md) | 60 | `declaration-track:c00991fe3076cb37447e7dcc7848ec46f746b232d5b50ef8609f00c5690ed575` |
| 7 | `def` | [stdNext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26.lean/declarations/stdnext--3a99f58d6a71cedb5b0e3b1d.md) | 66 | `declaration-track:3a99f58d6a71cedb5b0e3b1db0c01a944e8bbaaf2bff4ffad260c37135640bf2` |
| 8 | `def` | [stdSplit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26.lean/declarations/stdsplit--555416d4fe3b5848fd415153.md) | 81 | `declaration-track:555416d4fe3b5848fd4151531b7419a345928eb7327bd52951b87a1630af483c` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26.lean/declarations/instance--6b6d15661f72a67582191e79.md) | 90 | `declaration-track:6b6d15661f72a67582191e792fec0eaf782e97794e41c74f02836f5b9d21e685` |
| 10 | `def` | [randNatAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26.lean/declarations/randnataux--809d88fec16242d277a8924a.md) | 102 | `declaration-track:809d88fec16242d277a8924ab1e8413eee2d38a8b0f3cea2ecb1da26a7d76076` |
| 11 | `def` | [randNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26.lean/declarations/randnat--86a7251608809f2e11be4a1f.md) | 110 | `declaration-track:86a7251608809f2e11be4a1fe5e09cf46abeb2bc92a2dc4ca080636898d9cb66` |
| 12 | `def` | [randBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26.lean/declarations/randbool--a5d268f4ce286a4f69744c7a.md) | 128 | `declaration-track:a5d268f4ce286a4f69744c7a09ac09b1baeb4ee15b00a8e1b5b1111073e6edf6` |
| 13 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26.lean/declarations/initialize--16214ec182ae2bc19f34967d.md) | 132 | `declaration-track:16214ec182ae2bc19f34967d0e58dc79763a914eb5ca224227edbced789fa533` |
| 14 | `def` | [IO.setRandSeed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26.lean/declarations/io-setrandseed--2cc7489ef0bbedc07a9a3f3c.md) | 139 | `declaration-track:2cc7489ef0bbedc07a9a3f3ca6e7d3e6244fceecd3fb0bf6a5f80e90f4c67739` |
| 15 | `def` | [IO.rand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26.lean/declarations/io-rand--5f79c6029b328d7b245ab5fb.md) | 148 | `declaration-track:5f79c6029b328d7b245ab5fbe739635b922ce61232f12d7a18f315a548d950fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
