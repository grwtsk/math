# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.TorusIntegral.Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d823ec94e4b6a0f6983644f93d0a19be72f090da",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d823ec94e4b6a0f6983644f93d0a19be72f090da`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.CircleIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.Tuple` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Superscript` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/macro-rules--8f7d9c6557bc5de201eef9cf.md) | 70 | `declaration-track:8f7d9c6557bc5de201eef9cfcbd302d42969dfe94bd47922992db41480ed8ed9` |
| 2 | `def` | [torusMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/torusmap--cd0aab0fdf79854bfd4fd6d6.md) | 79 | `declaration-track:cd0aab0fdf79854bfd4fd6d67aae5ee04531bf66e9f2ceb84229bf12b490f3cc` |
| 3 | `theorem` | [torusMap_sub_center](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/torusmap-sub-center--3ac95d9ac64c913119742e99.md) | 81 | `result-track:3ac95d9ac64c913119742e99eaf567146c1e74f329f4ee71997d3607f46e911d` |
| 4 | `theorem` | [torusMap_eq_center_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/torusmap-eq-center-iff--4b5a5456a8dd183eb1ff4e0e.md) | 84 | `result-track:4b5a5456a8dd183eb1ff4e0e271f188fb67c8da622aea0c0c2de29b255d13e3f` |
| 5 | `theorem` | [torusMap_zero_radius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/torusmap-zero-radius--e8d73e09f2754057feb4085a.md) | 88 | `result-track:e8d73e09f2754057feb4085a1cef8aa2b77c72cdd0656a2404b320675a0f01c8` |
| 6 | `def` | [TorusIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/torusintegrable--e731940efb3d85500cc447f7.md) | 97 | `declaration-track:e731940efb3d85500cc447f7cad82cf0411d7b95afb993c5cc67eedb4051608e` |
| 7 | `theorem` | [torusIntegrable_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/torusintegrable-const--1172e1693c9aa74ebe246f85.md) | 105 | `result-track:1172e1693c9aa74ebe246f85b6fb8627d4d2732957226a43a7d46dbdfb5ebf52` |
| 8 | `theorem` | [neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/neg--d77f71691643072eed47d5e3.md) | 109 | `result-track:d77f71691643072eed47d5e3818c90ea49c6a6c8f80bf788ba2e54782124b6b2` |
| 9 | `theorem` | [add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/add--28a210fb2e8af9f55be99fef.md) | 112 | `result-track:28a210fb2e8af9f55be99fef6e64ed0226556b821492f362ab10a88e92ba048b` |
| 10 | `theorem` | [sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/sub--86a399b57cc2dd7436791035.md) | 117 | `result-track:86a399b57cc2dd743679103544e1af4bb8fc60adfbf55ab9ade1cc563076450d` |
| 11 | `theorem` | [torusIntegrable_zero_radius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/torusintegrable-zero-radius--4bec148226b88f3505a1dfa2.md) | 121 | `result-track:4bec148226b88f3505a1dfa22f5fc19e54c786b5a9e6749732c4be6cb184bd85` |
| 12 | `theorem` | [function_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/function-integrable--dfed2f18bf88e855e64ca27c.md) | 126 | `result-track:dfed2f18bf88e855e64ca27c68d76b59a29ad7a5226bc3a6c78fe58260357f2c` |
| 13 | `def` | [torusIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/torusintegral--5a63fbfc02e0575d6911c09f.md) | 139 | `declaration-track:5a63fbfc02e0575d6911c09f8c606c085333ff72e1bd68846db0a07134833594` |
| 14 | `theorem` | [torusIntegral_radius_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/torusintegral-radius-zero--e37c86de88087e6284fdc65d.md) | 145 | `result-track:e37c86de88087e6284fdc65dec6924c8dee95fefbc42efb5aa029669648581fd` |
| 15 | `theorem` | [torusIntegral_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/torusintegral-neg--c8f567588b5923e8966510be.md) | 150 | `result-track:c8f567588b5923e8966510be36342ab861b6d077ae16cca937504f439a927f59` |
| 16 | `theorem` | [torusIntegral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/torusintegral-add--1fee23047e5e4b94f3764b3d.md) | 153 | `result-track:1fee23047e5e4b94f3764b3dee57ef81dd0949e061281c01e0b525e70f877ac7` |
| 17 | `theorem` | [torusIntegral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/torusintegral-sub--13cf4fccd58a04057bb7782f.md) | 158 | `result-track:13cf4fccd58a04057bb7782f213e28858168bdeb1f6d77a58b21666696038608` |
| 18 | `theorem` | [torusIntegral_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/torusintegral-smul--1991026f6c3190509306e664.md) | 162 | `result-track:1991026f6c3190509306e664884ea082a833ca1eb186a4957d922a6ce366d1f9` |
| 19 | `theorem` | [torusIntegral_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/torusintegral-const-mul--421ad19ea33f36476b99b019.md) | 166 | `result-track:421ad19ea33f36476b99b01909f67da78b910c1b87aa64b038cf938748db561d` |
| 20 | `theorem` | [norm_torusIntegral_le_of_norm_le_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/norm-torusintegral-le-of-norm-le-const--d40e315072ee45cf23c2e680.md) | 172 | `result-track:d40e315072ee45cf23c2e6800b227300e613c5416d4457fbd30be4c6fa3450bd` |
| 21 | `theorem` | [torusIntegral_dim0](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/torusintegral-dim0--fdcec090236038551cd16b4d.md) | 186 | `result-track:fdcec090236038551cd16b4d5d7f4f3a5aa4da2492d9b686debe41e108200b8e` |
| 22 | `theorem` | [torusIntegral_dim1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/torusintegral-dim1--c7652fb97ada93e1b479a75d.md) | 195 | `result-track:c7652fb97ada93e1b479a75dcdb3c5aecbce02bc8d388b944e3af25e9b672067` |
| 23 | `theorem` | [torusIntegral_succAbove](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/torusintegral-succabove--e104bfd97ccd4e473c0ee6eb.md) | 209 | `result-track:e104bfd97ccd4e473c0ee6eb0b7029578fd0ef1cb0342a6e3cdb708e81ab1506` |
| 24 | `theorem` | [torusIntegral_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant4fea5f547636acfc9d7dde65b9ae2649f2dc92831f48654b66ee9428e45fad73.lean/declarations/torusintegral-succ--c6423d88a9bafad677b5850a.md) | 234 | `result-track:c6423d88a9bafad677b5850ace500d991b6bc39e0688b53195bb3de43cbff621` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
