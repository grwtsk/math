# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variant74029d21080b77fef704ba0b36a354c203a67f1bd1eef1d05af8799854701008

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9a9c4be749d6cad6208b91757a2bbf08f03f6bf",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant74029d21080b77fef704ba0b36a354c203a67f1bd1eef1d05af8799854701008.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant74029d21080b77fef704ba0b36a354c203a67f1bd1eef1d05af8799854701008.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant74029d21080b77fef704ba0b36a354c203a67f1bd1eef1d05af8799854701008.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9a9c4be749d6cad6208b91757a2bbf08f03f6bf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant74029d21080b77fef704ba0b36a354c203a67f1bd1eef1d05af8799854701008.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Variant74029d21080b77fef704ba0b36a354c203a67f1bd1eef1d05af8799854701008.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Bind` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant74029d21080b77fef704ba0b36a354c203a67f1bd1eef1d05af8799854701008.lean/declarations/empty--62cf57a76a5ab4465fe759d0.md) | 36 | `declaration-track:62cf57a76a5ab4465fe759d0ec8f486b0f6af5c38ff575ff5fd29884eb427ca3` |
| 2 | `def` | [cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant74029d21080b77fef704ba0b36a354c203a67f1bd1eef1d05af8799854701008.lean/declarations/cons--ddb455dfb3898f176d3e971d.md) | 44 | `declaration-track:ddb455dfb3898f176d3e971dfa8ff935424d740124d3d249cf999cfcc3da58b8` |
| 3 | `theorem` | [cons_same](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant74029d21080b77fef704ba0b36a354c203a67f1bd1eef1d05af8799854701008.lean/declarations/cons-same--a5b4b1dd3b413ce5ce66b404.md) | 49 | `result-track:a5b4b1dd3b413ce5ce66b4042d552be8354f9172d674f937f3a070361e3ebefd` |
| 4 | `theorem` | [cons_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant74029d21080b77fef704ba0b36a354c203a67f1bd1eef1d05af8799854701008.lean/declarations/cons-ne--d044c77ff0bf66a1ba48c631.md) | 53 | `result-track:d044c77ff0bf66a1ba48c6313e56197a64f331772249167e813de99fbfd0a473` |
| 5 | `theorem` | [cons_swap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant74029d21080b77fef704ba0b36a354c203a67f1bd1eef1d05af8799854701008.lean/declarations/cons-swap--89694aca2260695725759f01.md) | 57 | `result-track:89694aca2260695725759f01aa94219407f42e3496dac9930ff4c25e1fc10d19` |
| 6 | `theorem` | [cons_eta](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant74029d21080b77fef704ba0b36a354c203a67f1bd1eef1d05af8799854701008.lean/declarations/cons-eta--e001b8f30a41b8c95e78fac5.md) | 69 | `result-track:e001b8f30a41b8c95e78fac583b074f3f360c9ab7dd6c515cc6266b71d0a064a` |
| 7 | `theorem` | [cons_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant74029d21080b77fef704ba0b36a354c203a67f1bd1eef1d05af8799854701008.lean/declarations/cons-map--603b8c32aab8b78347b02735.md) | 77 | `result-track:603b8c32aab8b78347b0273524681a27a476fb6d518f77701e86a5a5deedd37a` |
| 8 | `theorem` | [forall_rel_cons_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant74029d21080b77fef704ba0b36a354c203a67f1bd1eef1d05af8799854701008.lean/declarations/forall-rel-cons-ext--c0414228b2861762862eb564.md) | 85 | `result-track:c0414228b2861762862eb5646bda37021b6a6fcf48ff8f33350171bf6670c098` |
| 9 | `theorem` | [cons_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant74029d21080b77fef704ba0b36a354c203a67f1bd1eef1d05af8799854701008.lean/declarations/cons-injective--f904266cba609cdae974ec12.md) | 95 | `result-track:f904266cba609cdae974ec126994b5ab9b6d343b0194abe65b3a54826c816fbf` |
| 10 | `def` | [pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant74029d21080b77fef704ba0b36a354c203a67f1bd1eef1d05af8799854701008.lean/declarations/pi--c8be5969183b94acd72a23f8.md) | 112 | `declaration-track:c8be5969183b94acd72a23f84e9ef25d77c6f7b557cc80fe27e002519c2cb730` |
| 11 | `theorem` | [pi_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant74029d21080b77fef704ba0b36a354c203a67f1bd1eef1d05af8799854701008.lean/declarations/pi-zero--d6a7c974340a3da8c5274e31.md) | 132 | `result-track:d6a7c974340a3da8c5274e3153296bf4f34338cd31ba382a24a9395ff2cc6c3c` |
| 12 | `theorem` | [pi_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant74029d21080b77fef704ba0b36a354c203a67f1bd1eef1d05af8799854701008.lean/declarations/pi-cons--1e6925f07fe86d785c67903a.md) | 136 | `result-track:1e6925f07fe86d785c67903a8de6b7d3cbfa885b443050380ece44acdaff050d` |
| 13 | `theorem` | [card_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant74029d21080b77fef704ba0b36a354c203a67f1bd1eef1d05af8799854701008.lean/declarations/card-pi--641f3d414b714f95c0b151b0.md) | 140 | `result-track:641f3d414b714f95c0b151b0e5518f253a418c0a9b17b7117a1362472ccf08d9` |
| 14 | `theorem` | [Nodup.pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant74029d21080b77fef704ba0b36a354c203a67f1bd1eef1d05af8799854701008.lean/declarations/nodup-pi--ffc5a77496225858d986cf09.md) | 144 | `result-track:ffc5a77496225858d986cf0902f060b3f9c9c6aaa591fa78e92a9134f05c7f5c` |
| 15 | `theorem` | [mem_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant74029d21080b77fef704ba0b36a354c203a67f1bd1eef1d05af8799854701008.lean/declarations/mem-pi--30b02ac4b61ced6e1b2ef7ef.md) | 162 | `result-track:30b02ac4b61ced6e1b2ef7ef77b7e0011b01a29aca4f96796df1504a04cd9d0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
