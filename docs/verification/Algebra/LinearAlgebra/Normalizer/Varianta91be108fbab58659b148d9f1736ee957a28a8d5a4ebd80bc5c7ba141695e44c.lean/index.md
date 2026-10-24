# Verification target: GRWTSK.Algebra.LinearAlgebra.Normalizer.Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf2530b63ccb0337bd8a068d3b3d7ad7120896c9",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf2530b63ccb0337bd8a068d3b3d7ad7120896c9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Abelian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.IdealOperations` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Quotient` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizer](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/normalizer--474b3779cf492bd717dd6363.md) | 48 | `declaration-track:474b3779cf492bd717dd6363f0ed65a911041d24c1ac2789a734f3facfdb96a8` |
| 2 | `theorem` | [mem_normalizer](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/mem-normalizer--1f55c833a02847cda4df0f6a.md) | 56 | `result-track:1f55c833a02847cda4df0f6af6432cc4f4a27a41744be351f1210e46bfc89152` |
| 3 | `theorem` | [le_normalizer](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/le-normalizer--c18b518f63363cc96633905e.md) | 60 | `result-track:c18b518f63363cc96633905e6501910845f5e46aa1380dc735968bce451929c6` |
| 4 | `theorem` | [normalizer_inf](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/normalizer-inf--a9961dde18a2c89fb7a5787d.md) | 65 | `result-track:a9961dde18a2c89fb7a5787de238106a67975aede63114d72c22c0ca6f87bf2b` |
| 5 | `theorem` | [normalizer_mono](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/normalizer-mono--6de0a26fd053053a7c8a500b.md) | 69 | `result-track:6de0a26fd053053a7c8a500b0621285fdd811fd04d106655ecac37f3cd121a1e` |
| 6 | `theorem` | [monotone_normalizer](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/monotone-normalizer--4fed251a3da7ac018d36302d.md) | 74 | `result-track:4fed251a3da7ac018d36302d3b266e10447c3e1fa14f19e1e9ebc0a368023deb` |
| 7 | `theorem` | [comap_normalizer](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/comap-normalizer--1422526d0c5600ac68b0b185.md) | 78 | `result-track:1422526d0c5600ac68b0b185e6d766596e8fa474130cb0e3859e7af35e52021b` |
| 8 | `theorem` | [top_lie_le_iff_le_normalizer](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/top-lie-le-iff-le-normalizer--7f07e39c0647501b86ef0a5b.md) | 81 | `result-track:7f07e39c0647501b86ef0a5b79b50fe4e23c535ff86df4b4dfa5bc6fb1ba862f` |
| 9 | `theorem` | [gc_top_lie_normalizer](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/gc-top-lie-normalizer--dad18ff54aaf05750064a92f.md) | 84 | `result-track:dad18ff54aaf05750064a92fa6818d87732ca33bb90fe5a86b852618144415bc` |
| 10 | `theorem` | [normalizer_bot_eq_maxTrivSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/normalizer-bot-eq-maxtrivsubmodule--c7c070016052027795418ba6.md) | 89 | `result-track:c7c070016052027795418ba6733cd61ffefa58b2f78c5727a6d21f8fe7171cff` |
| 11 | `def` | [idealizer](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/idealizer--c1349d564130ec9f8725c451.md) | 96 | `declaration-track:c1349d564130ec9f8725c45155ecadb21afb292b35cabdab3bac6916e065cbb3` |
| 12 | `lemma` | [mem_idealizer](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/mem-idealizer--736c117aba92d4ca80720c9a.md) | 104 | `result-track:736c117aba92d4ca80720c9a96dc296f678524849cb16f1162c0decf5084a89b` |
| 13 | `lemma` | [_root_.LieIdeal.idealizer_eq_normalizer](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/root-lieideal-idealizer-eq-normalizer--c6102751eaa2a11b54f066a9.md) | 107 | `result-track:c6102751eaa2a11b54f066a92579a95c12707c1fa0194686ad786094a960498b` |
| 14 | `def` | [normalizer](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/normalizer--1f011b6886da1b2166793e3d.md) | 119 | `declaration-track:1f011b6886da1b2166793e3d8cfa2f7f125ba1dbed1cc9ee4130d52876b2dc26` |
| 15 | `theorem` | [mem_normalizer_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/mem-normalizer-iff--67e75605c8b1cdb48b7eba19.md) | 125 | `result-track:67e75605c8b1cdb48b7eba19b120fec749a2eb7fbf273d1ebf77ed914ca0143f` |
| 16 | `theorem` | [mem_normalizer_iff](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/mem-normalizer-iff--38d85972dd89ed3a864e1bff.md) | 128 | `result-track:38d85972dd89ed3a864e1bffe2be90ae279a1de3501e8b88c90634119ff726e0` |
| 17 | `theorem` | [le_normalizer](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/le-normalizer--cc0a16d5eb3134040d4eec6a.md) | 133 | `result-track:cc0a16d5eb3134040d4eec6ad0a821ade09b43c5749ecd58b8af950b5917a4cf` |
| 18 | `theorem` | [coe_normalizer_eq_normalizer](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/coe-normalizer-eq-normalizer--0087c0b6f8a80cc1ebd95d61.md) | 136 | `result-track:0087c0b6f8a80cc1ebd95d61e4834f002abccbc8029fb78f060680fa83c2a497` |
| 19 | `theorem` | [lie_mem_sup_of_mem_normalizer](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/lie-mem-sup-of-mem-normalizer--f8970b8b843432a23449ad5c.md) | 142 | `result-track:f8970b8b843432a23449ad5c8f4969dac65b38c4197b7c47ebdc0fe5eb7b572e` |
| 20 | `theorem` | [ideal_in_normalizer](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/ideal-in-normalizer--78c0d38650c2344abac7d658.md) | 156 | `result-track:78c0d38650c2344abac7d658c1f36e8535b955b5a2c722d5aa5cca26a932631a` |
| 21 | `theorem` | [exists_nested_lieIdeal_ofLe_normalizer](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/exists-nested-lieideal-ofle-normalizer--ef5e617a17a82d82019979eb.md) | 162 | `result-track:ef5e617a17a82d82019979eb5d1ccf67d527ee7b81c02a3c74f09a79915cb95b` |
| 22 | `theorem` | [normalizer_eq_self_iff](../../../../../mathematics/Algebra/LinearAlgebra/Normalizer/Varianta91be108fbab58659b148d9f1736ee957a28a8d5a4ebd80bc5c7ba141695e44c.lean/declarations/normalizer-eq-self-iff--8bfc59034d823b879a262302.md) | 169 | `result-track:8bfc59034d823b879a262302cef51316e3b56edc16650a820dda55a8201ff78b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
