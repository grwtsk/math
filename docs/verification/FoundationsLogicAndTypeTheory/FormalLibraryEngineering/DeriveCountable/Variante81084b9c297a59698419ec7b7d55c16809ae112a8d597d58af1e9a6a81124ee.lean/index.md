# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveCountable.Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b9e61bd1056e534bf5dfcbd97dd94b027ace064",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b9e61bd1056e534bf5dfcbd97dd94b027ace064`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [encode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean/declarations/encode--ffdfad6f9e63455092cdebbc.md) | 70 | `declaration-track:ffdfad6f9e63455092cdebbc20c4ea2870c47c96fba66584106a1f77e5da0abe` |
| 2 | `theorem` | [encode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean/declarations/encode-injective--c5f61b985516bd7e70754cb8.md) | 74 | `result-track:c5f61b985516bd7e70754cb8655d4e59646f2f535270aaa9b1ba65d70e96590a` |
| 3 | `theorem` | [cons_eq_imp_init](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean/declarations/cons-eq-imp-init--a77025a0910e29bb3c78588e.md) | 81 | `result-track:a77025a0910e29bb3c78588ecd8318b8071c432946937fd56c3f72a36bd113a6` |
| 4 | `theorem` | [cons_eq_imp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean/declarations/cons-eq-imp--9199a06ab08ad47d9fcb1661.md) | 89 | `result-track:9199a06ab08ad47d9fcb1661dd3e0cd5c389fb30c32a92a1abb9bdde054188e0` |
| 5 | `theorem` | [pair_encode_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean/declarations/pair-encode-step--90e06de923ce0b4fbb9a135c.md) | 96 | `result-track:90e06de923ce0b4fbb9a135c9662152b20f3d735916757113dbd57c3213de0a8` |
| 6 | `def` | [mkToNatMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean/declarations/mktonatmatch--58666f9c895ca84179d6f791.md) | 110 | `declaration-track:58666f9c895ca84179d6f7918be0463aa6ae2c3f62d7c7beebbd2a49adf17c39` |
| 7 | `def` | [mkToNatFuns](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean/declarations/mktonatfuns--5059a90f769828e4abf5daa9.md) | 146 | `declaration-track:5059a90f769828e4abf5daa96393951d7b1f612ade29c976e2f6bb5f44ad7e33` |
| 8 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean/declarations/anonymous--8ffe21ccd186859bce467db6.md) | 155 | `declaration-track:8ffe21ccd186859bce467db6863ec11e7754b404887f1a35b9fe1addc44f15e4` |
| 9 | `def` | [mkInjThmMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean/declarations/mkinjthmmatch--444483ffb251a4f9c4ff48ee.md) | 164 | `declaration-track:444483ffb251a4f9c4ff48ee0329f9d9fa45ecceb2937ee586537362624b5aea` |
| 10 | `def` | [mkInjThms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean/declarations/mkinjthms--86cffe0fc75daaf09fc7f44f.md) | 207 | `declaration-track:86cffe0fc75daaf09fc7f44f70ebb3d87ade533bd0bf9d3e54a6856d18db9d02` |
| 11 | `theorem` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean/declarations/anonymous--0d175edd943768659ebefc8e.md) | 220 | `result-track:0d175edd943768659ebefc8e35cc3547c19471402e0b866dedf3e19fef020834` |
| 12 | `def` | [mkCountableInstanceCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean/declarations/mkcountableinstancecmds--84c1357ee249f1f2cf1234d3.md) | 232 | `declaration-track:84c1357ee249f1f2cf1234d33770ec8e9576a5c5d12200c1a31feb091005d49f` |
| 13 | `def` | [mkCountableCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean/declarations/mkcountablecmds--75cb3f698ee376a48c381379.md) | 249 | `declaration-track:75cb3f698ee376a48c38137925ae82f1317da2807caa780c7e9194b78b3244af` |
| 14 | `def` | [mkCountableInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean/declarations/mkcountableinstance--cf8a8d44d473ee6b3ec5ebc9.md) | 268 | `declaration-track:cf8a8d44d473ee6b3ec5ebc9ed2784279d35aff2681e758256f72731487ec0d0` |
| 15 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean/declarations/initialize--16b0c657c8828f1ab9fe4ba8.md) | 284 | `declaration-track:16b0c657c8828f1ab9fe4ba831ea4b4dc3664feed878218035d516338fc6259e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
