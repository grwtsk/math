# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DeterminantTests.Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "022d05a6e5c96305c9c3474858a2b221b1cecfd1",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `022d05a6e5c96305c9c3474858a2b221b1cecfd1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Determinant.ScalarExtension` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [intModel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean/declarations/intmodel--e0f036b170f280de7a214410.md) | 29 | `declaration-track:e0f036b170f280de7a2144105d5d2e7b1ab31b3ec948f1b429c22c2ffe0bfad1` |
| 2 | `abbrev` | [intDeterminantTheory](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean/declarations/intdeterminanttheory--e248a9ebb908e6c9634e2dcd.md) | 31 | `declaration-track:e248a9ebb908e6c9634e2dcdae8e439cdc9eace9be60c9c0ce2694b632951598` |
| 3 | `def` | [intObject](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean/declarations/intobject--b06198e5c0d1ac82df2f8c01.md) | 34 | `declaration-track:b06198e5c0d1ac82df2f8c01e7aab5ab9b6dd0e2a228ef368e3a11fded636aef` |
| 4 | `def` | [intNeg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean/declarations/intneg--7893977577d0900d855a6cac.md) | 37 | `declaration-track:7893977577d0900d855a6cac8408489eb366171cb85dec0f3bf200566cf44ab2` |
| 5 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean/declarations/example--e2bd0d55d805e0912be5ef73.md) | 40 | `declaration-track:e2bd0d55d805e0912be5ef737cefcaf6ca49174e047cba6fc35aa90219ca5210` |
| 6 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean/declarations/example--a922ffb10198baf29818e14f.md) | 48 | `declaration-track:a922ffb10198baf29818e14f7085734f80c362a8072ad8d90c4011d88d881a11` |
| 7 | `def` | [intNegChain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean/declarations/intnegchain--a41ae59ea392bd6c2a56d2b2.md) | 60 | `declaration-track:a41ae59ea392bd6c2a56d2b2fb10e99c977b10ba040411d3543b0499e4af003c` |
| 8 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean/declarations/example--c22d36f4af05a31c30f89f0d.md) | 65 | `declaration-track:c22d36f4af05a31c30f89f0df3c7a49cbc8ef78c8b402b7f8f423b0c89a604de` |
| 9 | `def` | [scalarToyModel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean/declarations/scalartoymodel--f949c24e767deb1db53a65c0.md) | 76 | `declaration-track:f949c24e767deb1db53a65c06d42ccf4bf9555581747d61e66c7521a57a557d3` |
| 10 | `def` | [scalarToyTheory](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean/declarations/scalartoytheory--f7c3472986f6b338d79e1694.md) | 115 | `declaration-track:f7c3472986f6b338d79e1694e10592ace5603b0b51ec4b36c8d915efaf644614` |
| 11 | `def` | [intToRat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean/declarations/inttorat--b4f1c01a0de790cd81a53d1a.md) | 134 | `declaration-track:b4f1c01a0de790cd81a53d1a9dd4f7ef8d73d24fd42e28a16df3546b16142d43` |
| 12 | `def` | [intToRatScalarExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean/declarations/inttoratscalarextension--aa81e981eeafe804d1b3324d.md) | 144 | `declaration-track:aa81e981eeafe804d1b3324dae345860db3b8644a721d109d2d8c2a9f9291b75` |
| 13 | `abbrev` | [rationalToyTheory](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean/declarations/rationaltoytheory--3130d7b0ccb137f94dfce3e5.md) | 159 | `declaration-track:3130d7b0ccb137f94dfce3e568f1bbcaf43d2d5c9baa9844eebeb4b62fdef1a7` |
| 14 | `def` | [toyObject](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean/declarations/toyobject--17df4162efefad78ae4a5229.md) | 162 | `declaration-track:17df4162efefad78ae4a5229dfb9949af952fb10d1556682f8d23a08f30aa8d8` |
| 15 | `def` | [toyIntegralIdentity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean/declarations/toyintegralidentity--c57d769dd4f9a097a58eefbc.md) | 165 | `declaration-track:c57d769dd4f9a097a58eefbcbd089de0f4fe19f8ddf0410695164cd4e9394668` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean/declarations/example--9a39eb2c041c4640b3d2e0c6.md) | 170 | `declaration-track:9a39eb2c041c4640b3d2e0c6b45c8cbfba481fab6c814a4e871ab3acf01edae8` |
| 17 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean/declarations/example--4838e1312681ca32f3206788.md) | 178 | `declaration-track:4838e1312681ca32f3206788caaba979d98014a889320652e7aacda40130d478` |
| 18 | `def` | [intToRatLineCompatibility](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean/declarations/inttoratlinecompatibility--e585a7a37df80c163d84fed5.md) | 185 | `declaration-track:e585a7a37df80c163d84fed56273c758b5b7378e05ad3b07153e15e8244e74f1` |
| 19 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DeterminantTests/Variant664017b207648036d4eda4433435dc374a8f47449886dc47b84ede7ee4236855.lean/declarations/example--2a14d055c2b07abbfeb3afd6.md) | 195 | `declaration-track:2a14d055c2b07abbfeb3afd6ebc0d298151ac4d1054e80f2729a6fd66a02f098` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
