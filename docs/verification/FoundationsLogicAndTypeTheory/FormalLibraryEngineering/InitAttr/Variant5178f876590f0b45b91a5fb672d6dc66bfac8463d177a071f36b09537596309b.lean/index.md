# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InitAttr.Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f0710a4cd7303b4e4711b63771e0b8752d98c91",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f0710a4cd7303b4e4711b63771e0b8752d98c91`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.Stream` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Compiler.NameMangling` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Compiler.ModPkgExt` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getIOTypeArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/getiotypearg--0a51f53ffd76a52396ebdca9.md) | 27 | `declaration-track:0a51f53ffd76a52396ebdca90d11c6f615dd85060baa1015537bb45ee4cb2b60` |
| 2 | `def` | [isUnitType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/isunittype--c2750d74da958c993dad2814.md) | 31 | `declaration-track:c2750d74da958c993dad28141de0b67abb3ec28867cea9609cd40e9db1dc0698` |
| 3 | `def` | [isIOUnit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/isiounit--494ca89975e8c3c42fe9644b.md) | 35 | `declaration-track:494ca89975e8c3c42fe9644bbc683c53d9ac3afb1a23c12aa0383ed7fdaa0e0d` |
| 4 | `opaque` | [runModInitCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/runmodinitcore--b920909e2c09282b95f0be5c.md) | 41 | `declaration-track:b920909e2c09282b95f0be5c33af235fb5289f2db04b69aafd9442698b5276f0` |
| 5 | `def` | [runModInit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/runmodinit--5fb72bf62abd297fbec5d873.md) | 48 | `declaration-track:5fb72bf62abd297fbec5d873d6306d0dda0a36135e6f1fe57a0b65c3f41a9b06` |
| 6 | `opaque` | [runInit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/runinit--6ebd16b238173cea24504bc4.md) | 53 | `declaration-track:6ebd16b238173cea24504bc4c28c5b7d5370bcc5f821f7f7fe7ce9c901090b95` |
| 7 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/builtin-initialize--f751e885002d4b7a13d7e86b.md) | 56 | `declaration-track:f751e885002d4b7a13d7e86b77cd047071c44bc7606ecbe905596c0c0a2efd17` |
| 8 | `def` | [registerInitAttrUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/registerinitattrunsafe--357031ec14e73acf79f35809.md) | 58 | `declaration-track:357031ec14e73acf79f35809b7494eea8483979c087a91297e37270f37a04c91` |
| 9 | `opaque` | [registerInitAttrInner](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/registerinitattrinner--0a7a5f454f2293ba50d7b244.md) | 90 | `declaration-track:0a7a5f454f2293ba50d7b244fcea03923e604714b3f860a93a63730ae7e4aaeb` |
| 10 | `def` | [registerInitAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/registerinitattr--283c061e19d80bb24db25cc3.md) | 93 | `declaration-track:283c061e19d80bb24db25cc37bcf53a6c73b3aa6a15a73ca28e4c3173dfa1d43` |
| 11 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/builtin-initialize--29f4f07917811277952da0b0.md) | 109 | `declaration-track:29f4f07917811277952da0b07fb6bab1c2a783882427316f4e3500d5933d0159` |
| 12 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/builtin-initialize--022c8c9899a112c755554745.md) | 118 | `declaration-track:022c8c9899a112c7555547452e7064d72c0384351a58e62f20144d859a7d99af` |
| 13 | `def` | [getInitFnNameForCore?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/getinitfnnameforcore--0fae28f0fa3cef506f1d86e1.md) | 120 | `declaration-track:0fae28f0fa3cef506f1d86e1131d189b639178d8c1da0829f114d9f7ca9b6a06` |
| 14 | `def` | [getBuiltinInitFnNameFor?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/getbuiltininitfnnamefor--cda2fb76f1fe6e7ddb6f865e.md) | 126 | `declaration-track:cda2fb76f1fe6e7ddb6f865e049d56c17080a99a70277d147e256df93cd0cbc2` |
| 15 | `def` | [getRegularInitFnNameFor?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/getregularinitfnnamefor--e4f797f6644b3b4a661781dc.md) | 130 | `declaration-track:e4f797f6644b3b4a661781dc4abc436d8339fdf58df8b8a78020241cc175b350` |
| 16 | `def` | [getInitFnNameFor?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/getinitfnnamefor--d50376f417ebd2fb46b00e17.md) | 134 | `declaration-track:d50376f417ebd2fb46b00e173d045e797d556ab0e520f3cbe404157390dd1163` |
| 17 | `def` | [isIOUnitInitFnCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/isiounitinitfncore--c42e58541140dc549fe3995c.md) | 137 | `declaration-track:c42e58541140dc549fe3995c60ce84307701aaacf27b6ccb0a6d58dfcec37961` |
| 18 | `def` | [isIOUnitRegularInitFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/isiounitregularinitfn--06a101f1b54bcd2c7c46b128.md) | 142 | `declaration-track:06a101f1b54bcd2c7c46b12819db5ac573249a6ad56acac6967664258c32d375` |
| 19 | `def` | [isIOUnitBuiltinInitFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/isiounitbuiltininitfn--cb506e726f1b833141df54ca.md) | 145 | `declaration-track:cb506e726f1b833141df54ca9815b1e66ba951ff0385f403607cf352454a2670` |
| 20 | `def` | [isIOUnitInitFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/isiounitinitfn--eed85a0bb20055d9ff4da2f0.md) | 148 | `declaration-track:eed85a0bb20055d9ff4da2f0d5fd565f10cdad887a2b5e04cf8c280301011b9b` |
| 21 | `def` | [hasInitAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/hasinitattr--914792c9857c1754c4883a99.md) | 151 | `declaration-track:914792c9857c1754c4883a9961e7a93d1dd8b328e90802ec1c2222d76e12273a` |
| 22 | `def` | [setBuiltinInitAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/setbuiltininitattr--85f9a9875fea43686f0b3fcf.md) | 154 | `declaration-track:85f9a9875fea43686f0b3fcff997dfea9846302c4d9532b2569d90793583afc3` |
| 23 | `def` | [declareBuiltin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/declarebuiltin--1163d60bff33c85e93b78e96.md) | 157 | `declaration-track:1163d60bff33c85e93b78e96cbf5d2c9b0a6f0507c94d414073ab3626e746b4f` |
| 24 | `def` | [runInitAttrForMod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/runinitattrformod--40a6c98ce4a8ed951e599c27.md) | 167 | `declaration-track:40a6c98ce4a8ed951e599c27722cd027ba491257d75b8f13094d69f836f9b4b7` |
| 25 | `def` | [runInitAttrs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/runinitattrs--643d858cc1baa34e40bb5d56.md) | 207 | `declaration-track:643d858cc1baa34e40bb5d56f2b6dc5150f63b350212accb5661b2f51761572f` |
| 26 | `def` | [runInitAttrsForModules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/runinitattrsformodules--066c3c07bbbbaedd5ae2e928.md) | 220 | `declaration-track:066c3c07bbbbaedd5ae2e928ff760c2fb99558c77f017300e75dc1107eec0c76` |
| 27 | `def` | [getRegularInitAttrModIdxs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/declarations/getregularinitattrmodidxs--54997e3eecf660e4ab3add90.md) | 233 | `declaration-track:54997e3eecf660e4ab3add906c02c0ae5e5f28743ec4d7eaf5a093ea6ad1383e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
