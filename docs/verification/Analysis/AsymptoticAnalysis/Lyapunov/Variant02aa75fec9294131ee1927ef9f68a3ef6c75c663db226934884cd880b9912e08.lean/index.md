# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Lyapunov.Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b96d5e0842c0f6eb5cd5aadd9606dd00c96fa4f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b96d5e0842c0f6eb5cd5aadd9606dd00c96fa4f`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [vsq_bounds_positive](../../../../../mathematics/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean/declarations/vsq-bounds-positive--b314534da1f200c9f3283fa0.md) | 48 | `result-track:b314534da1f200c9f3283fa0076388f6387a550dfcec285024a9e27599a3094f` |
| 2 | `theorem` | [vsq_bounds_negative](../../../../../mathematics/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean/declarations/vsq-bounds-negative--872e64dc6aa2a43935dcfcf4.md) | 53 | `result-track:872e64dc6aa2a43935dcfcf4232f4d49015eb1ba850f682f1c58199565ce2901` |
| 3 | `theorem` | [energy_derivative_on_positive](../../../../../mathematics/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean/declarations/energy-derivative-on-positive--02f06fb5b33441f188f92236.md) | 62 | `result-track:02f06fb5b33441f188f9223623e609a206a3bbbb3c07f94804522f3bb5ae211e` |
| 4 | `theorem` | [energy_derivative_on_negative](../../../../../mathematics/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean/declarations/energy-derivative-on-negative--9144c11faea672475ee074e2.md) | 67 | `result-track:9144c11faea672475ee074e298df66b685ece5dd6e7570abb948cd72d9a431c0` |
| 5 | `theorem` | [energy_derivative_nonpositive](../../../../../mathematics/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean/declarations/energy-derivative-nonpositive--1f46631481aa3c78ca9e6725.md) | 72 | `result-track:1f46631481aa3c78ca9e67254361db3c6106cbbe97e00c58c077a1ef9908eeb4` |
| 6 | `def` | [v_positive](../../../../../mathematics/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean/declarations/v-positive--3827d7f3dbf1890c5c11e31d.md) | 84 | `declaration-track:3827d7f3dbf1890c5c11e31d374427b917f63ca7a1cd8642aa70afaee7facc79` |
| 7 | `theorem` | [energy_derivative_strictly_negative_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean/declarations/energy-derivative-strictly-negative-pos--1e957175d5ad2f4d69611a20.md) | 86 | `result-track:1e957175d5ad2f4d69611a20910cf22f17b26dcb200c975bbd2bc6d6e76d7cea` |
| 8 | `def` | [v_negative](../../../../../mathematics/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean/declarations/v-negative--907407d8e746fa0c1eff9deb.md) | 91 | `declaration-track:907407d8e746fa0c1eff9deb21091dba10ba20d6b97e8e8987297d010908dd3c` |
| 9 | `theorem` | [energy_derivative_strictly_negative_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean/declarations/energy-derivative-strictly-negative-neg--e9f711f9b58b4e42fb842782.md) | 93 | `result-track:e9f711f9b58b4e42fb842782ec854b0e4737dc34f6b6876cf93205a9aa9710cd` |
| 10 | `theorem` | [vsq_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean/declarations/vsq-bounded--e0a893f4cb3a6bd7c9c8fc19.md) | 103 | `result-track:e0a893f4cb3a6bd7c9c8fc1988435da39023bd67d76558d597d9d90da030058d` |
| 11 | `theorem` | [xsq_term_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean/declarations/xsq-term-bounded--9cb9931591d8f62cdeba6e50.md) | 108 | `result-track:9cb9931591d8f62cdeba6e50893028be4012b8ccf9efb6ad9cdce3c377a14a65` |
| 12 | `theorem` | [vsq_nonneg_positive](../../../../../mathematics/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean/declarations/vsq-nonneg-positive--4b882dc295a1ec63795f2ca1.md) | 116 | `result-track:4b882dc295a1ec63795f2ca168b116ae8c242cf0b6801699e680390fd1c68d64` |
| 13 | `theorem` | [vsq_nonneg_negative](../../../../../mathematics/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean/declarations/vsq-nonneg-negative--b00ab06db7f69483ec4abab7.md) | 120 | `result-track:b00ab06db7f69483ec4abab7e764fe531687400dfbf4e3567385e55b53d8d6dd` |
| 14 | `theorem` | [vsq_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean/declarations/vsq-nonneg--9ebb0ee52ef3820c11dc6a44.md) | 125 | `result-track:9ebb0ee52ef3820c11dc6a441047ba529c21f974c6488387001df7672e4584e9` |
| 15 | `theorem` | [xsq_term_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean/declarations/xsq-term-nonneg--6ccdba934665371cf41681d3.md) | 128 | `result-track:6ccdba934665371cf41681d3ffc44f269efb1a407be5b9c81114f7f7a49c4bd7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
