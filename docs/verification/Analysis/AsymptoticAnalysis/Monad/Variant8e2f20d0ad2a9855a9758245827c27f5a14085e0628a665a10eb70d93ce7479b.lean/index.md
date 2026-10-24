# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Monad.Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f712bc71420d6189a293035a43d07602009559dd",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f712bc71420d6189a293035a43d07602009559dd`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean.json)

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
| 1 | `def` | [pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/pure--5c80458fa9057fe4f71f1820.md) | 49 | `declaration-track:5c80458fa9057fe4f71f18205726810d260a025ef01a33e89d323b1421f75c1c` |
| 2 | `theorem` | [pure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/pure-apply--0d58fa46e08fd4ac7eab1322.md) | 56 | `result-track:0d58fa46e08fd4ac7eab1322f2335761f99be9ad0eae2ea70b87c9a252a4daaf` |
| 3 | `theorem` | [support_pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/support-pure--e8094d60d470dbb62ffc7592.md) | 59 | `result-track:e8094d60d470dbb62ffc759222b02c2a7e9b4de2a87309ae8c90fc0908ba0aba` |
| 4 | `theorem` | [mem_support_pure_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/mem-support-pure-iff--89a9ee3db0d1d8f4d4ca1326.md) | 62 | `result-track:89a9ee3db0d1d8f4d4ca1326142d438470de06fb9f15de98d1a0aeb24b348164` |
| 5 | `theorem` | [pure_apply_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/pure-apply-self--1cc9d7bac570d2c69bebb8eb.md) | 64 | `result-track:1cc9d7bac570d2c69bebb8eb910c75f0976bdc58440b218d9c5196d7e5415bfc` |
| 6 | `theorem` | [pure_apply_of_ne](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/pure-apply-of-ne--d805cc1055a1decaae4c60d1.md) | 67 | `result-track:d805cc1055a1decaae4c60d1ee25ee53ada71dc8d3eaf9b838adeaec06973853` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/instance--8337f9900521842c27bde122.md) | 70 | `declaration-track:8337f9900521842c27bde122111b6a73dcde19e2ccf7e4d5ea03cbcfb25fe86a` |
| 8 | `theorem` | [toOuterMeasure_pure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/tooutermeasure-pure-apply--d375dc4ae75ce5d2cd37b763.md) | 79 | `result-track:d375dc4ae75ce5d2cd37b7631fbea4e95053e062360175c9bff50417011cc5de` |
| 9 | `theorem` | [toMeasure_pure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/tomeasure-pure-apply--e628921facc145d03f153cb1.md) | 94 | `result-track:e628921facc145d03f153cb16ef92308df7cd7e77d4f55da6fa5c6a7a3f2a1ae` |
| 10 | `theorem` | [toMeasure_pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/tomeasure-pure--91f4ce17f90bd6705fd6c69c.md) | 98 | `result-track:91f4ce17f90bd6705fd6c69c960049f135a98bfc3324e46b7cc3542559370ff6` |
| 11 | `theorem` | [toPMF_dirac](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/topmf-dirac--cb0ccc4ad393a7b127d0ece3.md) | 102 | `result-track:cb0ccc4ad393a7b127d0ece3f172dbbb3c41a5793325c20b3101c2418b10a544` |
| 12 | `def` | [bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/bind--83801fb9286cdb92112b9df3.md) | 113 | `declaration-track:83801fb9286cdb92112b9df3736efd4930c3038fce24f75a4c69e7aa6e140739` |
| 13 | `theorem` | [bind_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/bind-apply--cc0f4f23cf005de968037484.md) | 121 | `result-track:cc0f4f23cf005de9680374846a31444e3f8a322534a2f5f7b7c2fc8b4c9581aa` |
| 14 | `theorem` | [support_bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/support-bind--9977c7ed654890c8fd2914ff.md) | 124 | `result-track:9977c7ed654890c8fd2914ff325148ffe9434257e470e74d3b7097e6b91fa948` |
| 15 | `theorem` | [mem_support_bind_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/mem-support-bind-iff--fa8da14d3a19d6bae350e59b.md) | 127 | `result-track:fa8da14d3a19d6bae350e59b77b6be77731198372aacaee938054baa8a9bb395` |
| 16 | `theorem` | [pure_bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/pure-bind--88bd4cb1954e912ea27446d6.md) | 132 | `result-track:88bd4cb1954e912ea27446d6fa1c2e84de26c500b44939aeddfc1f1ed7f00788` |
| 17 | `theorem` | [bind_pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/bind-pure--6e5eb43306e953dedb6bd0e4.md) | 137 | `result-track:6e5eb43306e953dedb6bd0e47069a8e8399cfe97689bf8cfe9cb16ad51a274b2` |
| 18 | `theorem` | [bind_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/bind-const--3c7593f8af7230e396c0b287.md) | 143 | `result-track:3c7593f8af7230e396c0b28740eba7fc068e5620edfc35969dfc800fb58ad604` |
| 19 | `theorem` | [bind_bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/bind-bind--419d0118059d87fd32ba3143.md) | 147 | `result-track:419d0118059d87fd32ba314320383b2fcf6d870b24627791d53a23d1ef03e543` |
| 20 | `theorem` | [bind_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/bind-comm--91dae80816e4db7c55ee17c7.md) | 152 | `result-track:91dae80816e4db7c55ee17c74cfb568104b272045afb0f4791fb91495bfe2536` |
| 21 | `theorem` | [toOuterMeasure_bind_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/tooutermeasure-bind-apply--12f2475cac7323145e54955a.md) | 163 | `result-track:12f2475cac7323145e54955a57584d3a641a9db7b742773bdfff4ee7ff45c557` |
| 22 | `theorem` | [toMeasure_bind_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/tomeasure-bind-apply--c103061b67007ca2be698698.md) | 180 | `result-track:c103061b67007ca2be698698ad2066cc15e99f50e52d65e97e5c82d18e0be982` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/instance--ae23c80f72e56cd0ffff605c.md) | 191 | `declaration-track:ae23c80f72e56cd0ffff605c905d9190b4b68f750a213c9f352f6215ceaee17d` |
| 24 | `def` | [bindOnSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/bindonsupport--961829b11222506a7801f328.md) | 199 | `declaration-track:961829b11222506a7801f328d78dce5dba4022cb671a2aff7f00cb2e22de17d8` |
| 25 | `theorem` | [bindOnSupport_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/bindonsupport-apply--fcfc3e7fefa003800c7138ac.md) | 210 | `result-track:fcfc3e7fefa003800c7138ac49467496677a3a91e49f340055013ad463dc0a9d` |
| 26 | `theorem` | [support_bindOnSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/support-bindonsupport--1a237563a286d8f10d314336.md) | 214 | `result-track:1a237563a286d8f10d3143368f661c1eaf4103cd4428b118ef7d20843e2d6592` |
| 27 | `theorem` | [mem_support_bindOnSupport_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/mem-support-bindonsupport-iff--fc090c52e67b9845792352b4.md) | 222 | `result-track:fc090c52e67b9845792352b4a0e475eefe710533130e2f7195da685d69214845` |
| 28 | `theorem` | [bindOnSupport_eq_bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/bindonsupport-eq-bind--6e641d4b85e45bb786bf495b.md) | 228 | `result-track:6e641d4b85e45bb786bf495b285fc4af03871f198384cd249bed34b0a484a879` |
| 29 | `theorem` | [bindOnSupport_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/bindonsupport-eq-zero-iff--0927df8997996a90349ab436.md) | 236 | `result-track:0927df8997996a90349ab436b4648d40d67a69bd621b826c4bf58912c179fca0` |
| 30 | `theorem` | [pure_bindOnSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/pure-bindonsupport--fa7179ff5c0ebdea7e2f6e4f.md) | 243 | `result-track:fa7179ff5c0ebdea7e2f6e4f6896dfbdf9391e7f9b2f83bf7db3008bfc2cf6af` |
| 31 | `theorem` | [bindOnSupport_pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/bindonsupport-pure--714c1317f7ea553acd2fba74.md) | 251 | `result-track:714c1317f7ea553acd2fba74a64a212bb1cd9210bfa2835ab9f38cdfa2e6a2cf` |
| 32 | `theorem` | [bindOnSupport_bindOnSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/bindonsupport-bindonsupport--69aadbdaffaaa719029ad880.md) | 256 | `result-track:69aadbdaffaaa719029ad880eaca71ac2315fcdb2f5397524241879888f9f3a4` |
| 33 | `theorem` | [bindOnSupport_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/bindonsupport-comm--b179d356e29dcd58cfdde52e.md) | 274 | `result-track:b179d356e29dcd58cfdde52e037c837f5792b315ecbad623b6b53987b8f29134` |
| 34 | `theorem` | [toOuterMeasure_bindOnSupport_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/tooutermeasure-bindonsupport-apply--2a804991832db40eb15a6b9f.md) | 288 | `result-track:2a804991832db40eb15a6b9f9a68eded506b49af5b51a85d449e5fcd0cdc2570` |
| 35 | `theorem` | [toMeasure_bindOnSupport_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean/declarations/tomeasure-bindonsupport-apply--f23cbf9336e663c0e4d05dfe.md) | 308 | `result-track:f23cbf9336e663c0e4d05dfe1c0e779ebe9d2f4fa8d0c7f6680f1b637ff8e4c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
