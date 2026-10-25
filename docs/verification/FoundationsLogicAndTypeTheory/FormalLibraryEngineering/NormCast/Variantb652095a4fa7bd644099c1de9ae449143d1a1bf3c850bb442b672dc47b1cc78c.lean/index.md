# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NormCast.Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "416577c0dcf728049c435f7c7bf691bea0283b53",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `416577c0dcf728049c435f7c7bf691bea0283b53`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Conv.Simp` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Lean.Meta.Simp` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Tactic.NormCast.Ext` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Tactic.CoeExt` — import line 14; external provider; requires a separately pinned dependency.
- `Std.Classes.Cast` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/initialize--4489e22201ce89bd209fa4eb.md) | 30 | `declaration-track:4489e22201ce89bd209fa4eb36ab07c3b54682736e72f4fc50d8c9371d07c082` |
| 2 | `def` | [proveEqUsing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/proveequsing--c18a829ec58eb6336b25381a.md) | 33 | `declaration-track:c18a829ec58eb6336b25381ae59b9ca059939b14a5b1dd9ea6caf40191854f3f` |
| 3 | `def` | [proveEqUsingDown](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/proveequsingdown--d2ae075a21ee27e261a49dae.md) | 44 | `declaration-track:d2ae075a21ee27e261a49daed36a71e825a9c28789371352c4dc2f111fa1c974` |
| 4 | `def` | [mkCoe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/mkcoe--02d907f35187a624feb9ea5b.md) | 49 | `declaration-track:02d907f35187a624feb9ea5b92593cea08ea35d651a7ad048a96f92c7ce3b813` |
| 5 | `def` | [isCoeOf?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/iscoeof--f62007e7678c900d09d87f6e.md) | 57 | `declaration-track:f62007e7678c900d09d87f6e13510fcea520c4439d1eee602d69865c7798fe49` |
| 6 | `def` | [isNumeral?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/isnumeral--58d1dc5f799f78192f483748.md) | 68 | `declaration-track:58d1dc5f799f78192f483748bc8c68e1bd02dec4e4aadf6a642bab8dec6f210e` |
| 7 | `def` | [splittingProcedure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/splittingprocedure--9bee26808a7dc20614aa7b05.md) | 84 | `declaration-track:9bee26808a7dc20614aa7b05fa820b909c4eedccb382a731476e3e4e7a01ca93` |
| 8 | `def` | [prove](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/prove--e21cdd7759a5e47b8e6dc2e2.md) | 135 | `declaration-track:e21cdd7759a5e47b8e6dc2e27239ff66340e5c594d01752789849e71cc3c7ab8` |
| 9 | `def` | [upwardAndElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/upwardandelim--b094960318ea319a1561ab19.md) | 146 | `declaration-track:b094960318ea319a1561ab19a1cc3c2365634e8c299c09ad7e045aba2f6d6ba2` |
| 10 | `def` | [numeralToCoe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/numeraltocoe--8ba3137ca3fa8a9ade8407ec.md) | 157 | `declaration-track:8ba3137ca3fa8a9ade8407ec806d230b5fb0097234943e1cd2416d6d33e25771` |
| 11 | `def` | [derive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/derive--4f7dfad27491cfe954873e2f.md) | 167 | `declaration-track:4f7dfad27491cfe954873e2ffb1b3863be1600197eaaded4a5293e2d66d40adf` |
| 12 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/elab--1ef95b1bd82504107fa502b6.md) | 205 | `declaration-track:1ef95b1bd82504107fa502b69ff61a2e0adfff7b20e580fec659ded286d7e75c` |
| 13 | `def` | [normCastTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/normcasttarget--591b2100dfcf29f67c34081c.md) | 221 | `declaration-track:591b2100dfcf29f67c34081c078c9e0d4cbb2a6709b5098790775069d4590ba5` |
| 14 | `def` | [normCastHyp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/normcasthyp--2d49a6824a0126ad7d9e0b63.md) | 228 | `declaration-track:2d49a6824a0126ad7d9e0b63f61de8f8e1d577333464087c2a733519f2b23ca6` |
| 15 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/elab--a0a430807ce378126ce970d4.md) | 235 | `declaration-track:a0a430807ce378126ce970d43314d2ed0edc16004670466aa5881bbee7d08991` |
| 16 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/macro--16fd3a82da2dac6d95ae0340.md) | 247 | `declaration-track:16fd3a82da2dac6d95ae0340fea38da2d77876c1c2b84b81154c42bf717156cd` |
| 17 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/macro--2588ee3f152dfbed9de525d9.md) | 281 | `declaration-track:2588ee3f152dfbed9de525d95472b5c211c7a711829c07d3846bd5f3fbbd357f` |
| 18 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/syntax--96b07f541bcb6d3c0c83f212.md) | 287 | `declaration-track:96b07f541bcb6d3c0c83f2129488f21dbd89582fcbf78a8c570cb741112556b6` |
| 19 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/macro-rules--f67a19c49333f94fded4a757.md) | 288 | `declaration-track:f67a19c49333f94fded4a757ef8691f3ff7cdb24480cf30d9298aceaf062961c` |
| 20 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/macro--7a66bd1c1b156e4178e61b5c.md) | 297 | `declaration-track:7a66bd1c1b156e4178e61b5c5c5b15466799c4f91800113720afa1bc8248062a` |
| 21 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/macro--a80737c6c20a0f596e38e911.md) | 302 | `declaration-track:a80737c6c20a0f596e38e911536aeab2b28764200c5efe2e003979d6deebe969` |
| 22 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/syntax--fc0932aa58edad244ccc98ec.md) | 305 | `declaration-track:fc0932aa58edad244ccc98ec29da76af283d8cc7a4d7d099a2bb937180e3a80a` |
| 23 | `def` | [evalConvNormCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/evalconvnormcast--eda2bf86a9e4e05f01638038.md) | 307 | `declaration-track:eda2bf86a9e4e05f016380389fb312a9aef69630f40064a63b7584c3a6fff1b9` |
| 24 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/syntax--eee5a07a4d9c31551114c4b8.md) | 332 | `declaration-track:eee5a07a4d9c31551114c4b8fd17fd7228a4b2598cfb6235b2fe4cdbafa084c0` |
| 25 | `def` | [evalPushCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantb652095a4fa7bd644099c1de9ae449143d1a1bf3c850bb442b672dc47b1cc78c.lean/declarations/evalpushcast--6548fe9508712bd1a9626141.md) | 335 | `declaration-track:6548fe9508712bd1a9626141e219e009e91d3239069b6b9557695d7b6b98e45f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
