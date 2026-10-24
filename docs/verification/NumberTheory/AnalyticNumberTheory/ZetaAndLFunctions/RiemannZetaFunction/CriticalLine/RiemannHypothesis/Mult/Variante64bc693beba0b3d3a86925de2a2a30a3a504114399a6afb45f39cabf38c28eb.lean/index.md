# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Mult.Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06be572db5b993591f746dac6e56ab695e53142a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06be572db5b993591f746dac6e56ab695e53142a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ZeroSide` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.ZeroSide.RankTraceMult` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [vhat](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean/declarations/vhat--b1fcbdbb9ddb40a65a8089b6.md) | 43 | `declaration-track:b1fcbdbb9ddb40a65a8089b6f015105a422480d0ebd2f315ba6086ced7c67add` |
| 2 | `def` | [mhat](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean/declarations/mhat--4243580c2828e3ca20e984f5.md) | 46 | `declaration-track:4243580c2828e3ca20e984f51ba137ed09b8b1375315d4893fb7e96c173b412e` |
| 3 | `lemma` | [mhat_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean/declarations/mhat-nonneg--1ebc3b7a452860d2f2484e7d.md) | 48 | `result-track:1ebc3b7a452860d2f2484e7d3eadd48370fc8c942d08f3bb681d8c5717cb04c2` |
| 4 | `theorem` | [blockP_eq_Pmat](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean/declarations/blockp-eq-pmat--d14354a1d7f20ff257d8e265.md) | 51 | `result-track:d14354a1d7f20ff257d8e26578e4d3488fafa751090238ffd886020841d32531` |
| 5 | `lemma` | [xsq_vhat_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean/declarations/xsq-vhat-le--fb885a55233867e073b29ed9.md) | 73 | `result-track:fb885a55233867e073b29ed99b42e0e87f5fbdf16528f53d05ac118e6f3ed91a` |
| 6 | `lemma` | [card_onLine_m_eq_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean/declarations/card-online-m-eq-one--9cb3dc73427d5e72f0f33a0b.md) | 85 | `result-track:9cb3dc73427d5e72f0f33a0b5fde6ef917690c82d5c7247176b074d6fcf4022e` |
| 7 | `lemma` | [card_sub_filter](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean/declarations/card-sub-filter--0b7f140efbd89ce3b3ef18a1.md) | 90 | `result-track:0b7f140efbd89ce3b3ef18a1ebf60d8e7887cca6dd0e27002296501a9687093c` |
| 8 | `lemma` | [card_two_add_card_ge_three](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean/declarations/card-two-add-card-ge-three--aa7b2ab0ae2e58c54f64978d.md) | 100 | `result-track:aa7b2ab0ae2e58c54f64978def8fb6a46348677254247702f0839268fc7cbf74` |
| 9 | `lemma` | [Non_ge_weighted](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean/declarations/non-ge-weighted--f8c080b0dc9d36fb67957e86.md) | 114 | `result-track:f8c080b0dc9d36fb67957e860dd8de6425e22efe126610f136a96fa038039922` |
| 10 | `theorem` | [mult_two](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean/declarations/mult-two--72be3233227cb1f8e61c23ff.md) | 136 | `result-track:72be3233227cb1f8e61c23ff303b36eac124d2f76bcaffc4f2c714134a009f33` |
| 11 | `theorem` | [mult_three](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean/declarations/mult-three--19f61470c11bbda9c725ab56.md) | 156 | `result-track:19f61470c11bbda9c725ab563d39bc8575e19417f3a3f4124815c2006bb68ddb` |
| 12 | `theorem` | [hatAz_mult2](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean/declarations/hataz-mult2--a3c0686963a5eca5e7393d6d.md) | 193 | `result-track:a3c0686963a5eca5e7393d6d5027aa89eea759be207492e799ee9ee0d417d47b` |
| 13 | `theorem` | [hatAz_mult3](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean/declarations/hataz-mult3--c982a380dbce59c5d694f2e5.md) | 201 | `result-track:c982a380dbce59c5d694f2e544e0ab350fbaf3162839e07beec4c87365e5e4b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
