# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d592413bf746b49655e80c8f4ffaf8197b28cc00",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d592413bf746b49655e80c8f4ffaf8197b28cc00`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.RCases` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ErasesTo.map_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80.lean/declarations/erasesto-map-eq--c621feff1241b470bb767632.md) | 18 | `result-track:c621feff1241b470bb767632903ac13e8a86ce20f353f6dfdfa0f0d458fe34ef` |
| 2 | `theorem` | [ErasesTo.of_attach](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80.lean/declarations/erasesto-of-attach--e2e84a083f7afaa39deefd99.md) | 24 | `result-track:e2e84a083f7afaa39deefd99ac533cdd8e101418682e1643e607a66874a2b059` |
| 3 | `theorem` | [Ensures.pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80.lean/declarations/ensures-pure--6b2819dbb1afeb336730b8cb.md) | 31 | `result-track:6b2819dbb1afeb336730b8cb41334179eec479dad069a7e8ae2f869d04bbc47b` |
| 4 | `theorem` | [Ensures.weaken](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80.lean/declarations/ensures-weaken--a67541ce058fa96de50b5d60.md) | 36 | `result-track:a67541ce058fa96de50b5d6048062c4b3904943241566f37a20d7b005fc320ab` |
| 5 | `theorem` | [Ensures.bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80.lean/declarations/ensures-bind--5d37cd95e7c05d31e3dd750a.md) | 45 | `result-track:5d37cd95e7c05d31e3dd750a87b9811b71c2d59be7db53cb3ebf5b375fb39f1a` |
| 6 | `theorem` | [Ensures.canReturn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80.lean/declarations/ensures-canreturn--850f7fa6f643fa97b89b06fb.md) | 58 | `result-track:850f7fa6f643fa97b89b06fbe65174bb6b94676a70803b15f6995a62fda329c8` |
| 7 | `theorem` | [MayReturn.of_canReturn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80.lean/declarations/mayreturn-of-canreturn--50229707fa1aa79d34540cff.md) | 64 | `result-track:50229707fa1aa79d34540cff5e5745ba019e1d76b10c14c7302b84e32154c7a3` |
| 8 | `theorem` | [MayReturn.canReturn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80.lean/declarations/mayreturn-canreturn--a30269c49f46ba13ff0d94e3.md) | 73 | `result-track:a30269c49f46ba13ff0d94e33cc76b5756fec28b23593c8833a74523e709e0c3` |
| 9 | `theorem` | [MayReturn.canReturn_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80.lean/declarations/mayreturn-canreturn-iff--ad52e1b41f85514997d3ebcc.md) | 79 | `result-track:ad52e1b41f85514997d3ebccb1ba949960313eb3e049e1597b152302f610a514` |
| 10 | `theorem` | [MayReturn.canReturn_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80.lean/declarations/mayreturn-canreturn-eq--33733da8bc6b6e9d427975ef.md) | 84 | `result-track:33733da8bc6b6e9d427975ef11fd8ae90d5990513a49d3e6c80ddf28ce80520d` |
| 11 | `theorem` | [IsAttach.of_attach](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80.lean/declarations/isattach-of-attach--e4013736e8d5969af9dcc5eb.md) | 90 | `result-track:e4013736e8d5969af9dcc5ebe7c691f4e87b2e5ef74fd77cc925d39147b5599c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
