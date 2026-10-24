# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Quotient.Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "130db06e86fd1e559242a0bff058d3af0fa189bb",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `130db06e86fd1e559242a0bff058d3af0fa189bb`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Quotient/Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Hilbert.Null` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PreKernelSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean/declarations/prekernelspace--4c86264264157e0ea01e40b2.md) | 24 | `declaration-track:4c86264264157e0ea01e40b223912aabf99d5b62cb341f4ef42c1ad0ccf1526a` |
| 2 | `def` | [preKernelMk](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean/declarations/prekernelmk--cfc5c36640fc1a7c0fb50acf.md) | 28 | `declaration-track:cfc5c36640fc1a7c0fb50acf0d6997b4b7795da685e312bfd5789427b05c8a8d` |
| 3 | `theorem` | [rawInner_respects_quotient](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean/declarations/rawinner-respects-quotient--8a7d5bc093ac86175b16c9b3.md) | 33 | `result-track:8a7d5bc093ac86175b16c9b327f06c0ca660cde6f0942e6c9a667941dc4ddbfa` |
| 4 | `def` | [preKernelInner](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean/declarations/prekernelinner--697e49df5b888ed9d00bb614.md) | 50 | `declaration-track:697e49df5b888ed9d00bb614bd00d500c1d880822279af517ff2237ed5987501` |
| 5 | `theorem` | [preKernelInner_wellDefined](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean/declarations/prekernelinner-welldefined--1522f38344a6e4b0ced8efa5.md) | 58 | `result-track:1522f38344a6e4b0ced8efa563cc4bc6aaac3bbce253f3493fbba7714cbedab9` |
| 6 | `def` | [preKernelPreCore](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean/declarations/prekernelprecore--a698f765086f164959e61a5a.md) | 66 | `declaration-track:a698f765086f164959e61a5a5b1722e23d84fdd3425f70da9e763f8618d1e0a4` |
| 7 | `def` | [preKernelCore](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean/declarations/prekernelcore--fd0235e5dcf1336ff756759b.md) | 114 | `declaration-track:fd0235e5dcf1336ff756759b2ef5542b7894a4654cf628631bf3cdbb86cd519b` |
| 8 | `instance` | [instPreKernelNormedAddCommGroup](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean/declarations/instprekernelnormedaddcommgroup--1184c83ff14f773c900d1673.md) | 126 | `declaration-track:1184c83ff14f773c900d16736511b4d59eb7864524f74a2f5eb739dc2d021bb6` |
| 9 | `instance` | [instPreKernelInnerProductSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean/declarations/instprekernelinnerproductspace--8643008902cbc77e608d065d.md) | 133 | `declaration-track:8643008902cbc77e608d065d9c40b7a47fc088d4b3e2bae2a393902dd73613db` |
| 10 | `theorem` | [preKernel_inner_self_eq_zero_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean/declarations/prekernel-inner-self-eq-zero-iff--f9cf4cc3b67fc8bc69524c8d.md) | 138 | `result-track:f9cf4cc3b67fc8bc69524c8daede8364ae9deaa762616b45da01b2514399044c` |
| 11 | `theorem` | [preKernelMk_eq_zero_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean/declarations/prekernelmk-eq-zero-iff--b2f1f01646a8445c45fa8c9d.md) | 146 | `result-track:b2f1f01646a8445c45fa8c9ddc6538a868c928c68f5543cfdee7e3cfbb837cc8` |
| 12 | `theorem` | [preKernelInner_basisVector](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean/declarations/prekernelinner-basisvector--4158d770fa6b578b63a61082.md) | 155 | `result-track:4158d770fa6b578b63a61082e28f7084dd32ddf32c1ca7b1ea291c58ce480578` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
