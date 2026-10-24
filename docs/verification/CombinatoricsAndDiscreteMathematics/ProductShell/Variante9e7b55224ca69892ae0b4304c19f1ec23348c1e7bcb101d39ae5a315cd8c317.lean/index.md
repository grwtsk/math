# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ProductShell.Variante9e7b55224ca69892ae0b4304c19f1ec23348c1e7bcb101d39ae5a315cd8c317

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ecd8b78950b41b0f027abb857904d407b108044",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProductShell/Variante9e7b55224ca69892ae0b4304c19f1ec23348c1e7bcb101d39ae5a315cd8c317.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variante9e7b55224ca69892ae0b4304c19f1ec23348c1e7bcb101d39ae5a315cd8c317.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variante9e7b55224ca69892ae0b4304c19f1ec23348c1e7bcb101d39ae5a315cd8c317.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ecd8b78950b41b0f027abb857904d407b108044`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ProductShell/Variante9e7b55224ca69892ae0b4304c19f1ec23348c1e7bcb101d39ae5a315cd8c317.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ProductShell/Variante9e7b55224ca69892ae0b4304c19f1ec23348c1e7bcb101d39ae5a315cd8c317.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [typeIIProductShellUpper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variante9e7b55224ca69892ae0b4304c19f1ec23348c1e7bcb101d39ae5a315cd8c317.lean/declarations/typeiiproductshellupper--7dff38d0f2aeaff811ad4879.md) | 40 | `declaration-track:7dff38d0f2aeaff811ad4879bb38e3fa510b1ea43184df6465e2eb9ddfb6e25d` |
| 2 | `def` | [typeIIProductShell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variante9e7b55224ca69892ae0b4304c19f1ec23348c1e7bcb101d39ae5a315cd8c317.lean/declarations/typeiiproductshell--166145d706930da6aa003375.md) | 45 | `declaration-track:166145d706930da6aa00337560a36c3b52d6b888810704b003d9a05bc1dc553e` |
| 3 | `theorem` | [mem_typeIIProductShell_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variante9e7b55224ca69892ae0b4304c19f1ec23348c1e7bcb101d39ae5a315cd8c317.lean/declarations/mem-typeiiproductshell-iff--5cd96b89873809da31c713f5.md) | 49 | `result-track:5cd96b89873809da31c713f51331e05e7d99a52c841cb33ce54361974d22edc0` |
| 4 | `theorem` | [productShell_mem_implies_scale](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variante9e7b55224ca69892ae0b4304c19f1ec23348c1e7bcb101d39ae5a315cd8c317.lean/declarations/productshell-mem-implies-scale--65ebded58cf6b69bb12e72d5.md) | 55 | `result-track:65ebded58cf6b69bb12e72d5f328d8e118cde114764c6f43c27d48ef99bbc481` |
| 5 | `def` | [typeIIProductShellPrefixCarrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variante9e7b55224ca69892ae0b4304c19f1ec23348c1e7bcb101d39ae5a315cd8c317.lean/declarations/typeiiproductshellprefixcarrier--4e8bb3ccddbec14b9dbf0b69.md) | 62 | `declaration-track:4e8bb3ccddbec14b9dbf0b698c3176119dafb276a5127c67be002331839634e8` |
| 6 | `theorem` | [mem_typeIIProductShellPrefixCarrier_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variante9e7b55224ca69892ae0b4304c19f1ec23348c1e7bcb101d39ae5a315cd8c317.lean/declarations/mem-typeiiproductshellprefixcarrier-iff--974b1698ba05665249dd6b4d.md) | 66 | `result-track:974b1698ba05665249dd6b4d2193bd4853837c01a714354950ee7aed15deec7b` |
| 7 | `theorem` | [productShellPrefixCarrier_subset_shell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variante9e7b55224ca69892ae0b4304c19f1ec23348c1e7bcb101d39ae5a315cd8c317.lean/declarations/productshellprefixcarrier-subset-shell--06c7e092caf418d72373a9a0.md) | 72 | `result-track:06c7e092caf418d72373a9a098f6da9697dd60b770825904655d636ce4b71b7c` |
| 8 | `def` | [typeIIProductShellPrefixMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variante9e7b55224ca69892ae0b4304c19f1ec23348c1e7bcb101d39ae5a315cd8c317.lean/declarations/typeiiproductshellprefixmatrix--08f97938b0ea31a64c587ec9.md) | 84 | `declaration-track:08f97938b0ea31a64c587ec9b1fb16f354496c22bfaf5ced5547b8f0fcf76ff0` |
| 9 | `theorem` | [typeIIProductShellPrefixMatrix_eq_sum_fibers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variante9e7b55224ca69892ae0b4304c19f1ec23348c1e7bcb101d39ae5a315cd8c317.lean/declarations/typeiiproductshellprefixmatrix-eq-sum-fibers--92e60bc631a1f4fa87aa81f4.md) | 92 | `result-track:92e60bc631a1f4fa87aa81f4e86fb64492ebee4d42333b7309e078bc3c853da4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
