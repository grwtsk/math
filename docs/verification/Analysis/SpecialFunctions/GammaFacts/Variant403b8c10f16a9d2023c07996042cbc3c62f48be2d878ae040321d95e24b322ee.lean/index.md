# Verification target: GRWTSK.Analysis.SpecialFunctions.GammaFacts.Variant403b8c10f16a9d2023c07996042cbc3c62f48be2d878ae040321d95e24b322ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7eafad7f822f17ab9afdb2f58c07e87435828d86",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/GammaFacts/Variant403b8c10f16a9d2023c07996042cbc3c62f48be2d878ae040321d95e24b322ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/GammaFacts/Variant403b8c10f16a9d2023c07996042cbc3c62f48be2d878ae040321d95e24b322ee.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/GammaFacts/Variant403b8c10f16a9d2023c07996042cbc3c62f48be2d878ae040321d95e24b322ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7eafad7f822f17ab9afdb2f58c07e87435828d86`.

Source path: `GRWTSK/Analysis/SpecialFunctions/GammaFacts/Variant403b8c10f16a9d2023c07996042cbc3c62f48be2d878ae040321d95e24b322ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/GammaFacts/Variant403b8c10f16a9d2023c07996042cbc3c62f48be2d878ae040321d95e24b322ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Defs` — import line 38; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 39; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 40; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 41; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [digamma_conj](../../../../../mathematics/Analysis/SpecialFunctions/GammaFacts/Variant403b8c10f16a9d2023c07996042cbc3c62f48be2d878ae040321d95e24b322ee.lean/declarations/digamma-conj--b250315431123669884cf07b.md) | 53 | `result-track:b250315431123669884cf07b712e55f1a0ea6589e665768b580f01f00d78da6f` |
| 2 | `theorem` | [mu_even](../../../../../mathematics/Analysis/SpecialFunctions/GammaFacts/Variant403b8c10f16a9d2023c07996042cbc3c62f48be2d878ae040321d95e24b322ee.lean/declarations/mu-even--4e8db17ce61f908d037dad5d.md) | 68 | `result-track:4e8db17ce61f908d037dad5d4816497b63a9308b29a01b6dcfef499e100802be` |
| 3 | `lemma` | [gamma_ne_neg_nat](../../../../../mathematics/Analysis/SpecialFunctions/GammaFacts/Variant403b8c10f16a9d2023c07996042cbc3c62f48be2d878ae040321d95e24b322ee.lean/declarations/gamma-ne-neg-nat--c722da58f5334feca4f2b8a2.md) | 78 | `result-track:c722da58f5334feca4f2b8a2af87c01dace4b4c229384ac622ede9163428d54f` |
| 4 | `lemma` | [analyticAt_digamma](../../../../../mathematics/Analysis/SpecialFunctions/GammaFacts/Variant403b8c10f16a9d2023c07996042cbc3c62f48be2d878ae040321d95e24b322ee.lean/declarations/analyticat-digamma--41cb64fc3d937f6df70ca7aa.md) | 84 | `result-track:41cb64fc3d937f6df70ca7aa283214c2f7084c099f91db8c2bfbcb6b75f2031c` |
| 5 | `theorem` | [mu_smooth](../../../../../mathematics/Analysis/SpecialFunctions/GammaFacts/Variant403b8c10f16a9d2023c07996042cbc3c62f48be2d878ae040321d95e24b322ee.lean/declarations/mu-smooth--3efd4feeddfb68fa9b545194.md) | 104 | `result-track:3efd4feeddfb68fa9b54519409631f5b828c085d0706cd4cb2560ec06c3b7253` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
