# Verification target: GRWTSK.Algebra.UniversalAlgebra.Semiconj.Variant8f31dbac584924ccf92589ea1e6494f0e857e344a4006fe9159069fe873ed0a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a62e10bd204f85efee6878b5e57b6fd288a01d0",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Semiconj/Variant8f31dbac584924ccf92589ea1e6494f0e857e344a4006fe9159069fe873ed0a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant8f31dbac584924ccf92589ea1e6494f0e857e344a4006fe9159069fe873ed0a6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant8f31dbac584924ccf92589ea1e6494f0e857e344a4006fe9159069fe873ed0a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a62e10bd204f85efee6878b5e57b6fd288a01d0`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Semiconj/Variant8f31dbac584924ccf92589ea1e6494f0e857e344a4006fe9159069fe873ed0a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Semiconj/Variant8f31dbac584924ccf92589ea1e6494f0e857e344a4006fe9159069fe873ed0a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Semiconj.Units` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_right](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant8f31dbac584924ccf92589ea1e6494f0e857e344a4006fe9159069fe873ed0a6.lean/declarations/zero-right--614f4ce87f3e965740ebd7c5.md) | 21 | `result-track:614f4ce87f3e965740ebd7c5a7d405cb69a2dda4b416ed9c7c70dcdc4515f3c4` |
| 2 | `theorem` | [zero_left](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant8f31dbac584924ccf92589ea1e6494f0e857e344a4006fe9159069fe873ed0a6.lean/declarations/zero-left--2b6a5d98578668d24f70e761.md) | 25 | `result-track:2b6a5d98578668d24f70e761183cf65ebb9d096fd9d9b561c4ec365404771173` |
| 3 | `theorem` | [inv_symm_left_iff₀](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant8f31dbac584924ccf92589ea1e6494f0e857e344a4006fe9159069fe873ed0a6.lean/declarations/inv-symm-left-iff--794be7ade73ea29e544e8003.md) | 31 | `result-track:794be7ade73ea29e544e8003afe16ab74aef46e02a109f683a0b2593cf242c2d` |
| 4 | `theorem` | [inv_symm_left₀](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant8f31dbac584924ccf92589ea1e6494f0e857e344a4006fe9159069fe873ed0a6.lean/declarations/inv-symm-left--aacb5836a72a3797e54b982d.md) | 35 | `result-track:aacb5836a72a3797e54b982d0542e6c1ea0360d5553a26d3c71bdfc39ba3381c` |
| 5 | `theorem` | [inv_right₀](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant8f31dbac584924ccf92589ea1e6494f0e857e344a4006fe9159069fe873ed0a6.lean/declarations/inv-right--2633b6c2d4fec99a6464815f.md) | 38 | `result-track:2633b6c2d4fec99a6464815fdcc149a1f11d1e2bae432c040d9782cf4ef74348` |
| 6 | `theorem` | [inv_right_iff₀](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant8f31dbac584924ccf92589ea1e6494f0e857e344a4006fe9159069fe873ed0a6.lean/declarations/inv-right-iff--dcab28315591bcd022b3e783.md) | 50 | `result-track:dcab28315591bcd022b3e783500caad2e7a73d9054f5b98965ba63d389db4e32` |
| 7 | `theorem` | [div_right](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant8f31dbac584924ccf92589ea1e6494f0e857e344a4006fe9159069fe873ed0a6.lean/declarations/div-right--8a7bc4734e11076547802bbb.md) | 53 | `result-track:8a7bc4734e11076547802bbb38140ecdf5625392d5b2a096d10bd42b8fa54b38` |
| 8 | `lemma` | [zpow_right₀](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant8f31dbac584924ccf92589ea1e6494f0e857e344a4006fe9159069fe873ed0a6.lean/declarations/zpow-right--ac7da05983c63ce4496c6737.md) | 58 | `result-track:ac7da05983c63ce4496c673709032934198da5c10d9534cacd589d790cce0305` |
| 9 | `lemma` | [zpow_right₀](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant8f31dbac584924ccf92589ea1e6494f0e857e344a4006fe9159069fe873ed0a6.lean/declarations/zpow-right--de1beec61840fed91aaa7cb6.md) | 67 | `result-track:de1beec61840fed91aaa7cb66726c37d85aadffecdb6e95a3f3ad1392d356fa6` |
| 10 | `lemma` | [zpow_left₀](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant8f31dbac584924ccf92589ea1e6494f0e857e344a4006fe9159069fe873ed0a6.lean/declarations/zpow-left--fde9b9fe2a0abff096babd61.md) | 69 | `result-track:fde9b9fe2a0abff096babd6159565f6e7c545b48e33659863c6afe21cb882284` |
| 11 | `lemma` | [zpow_zpow₀](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant8f31dbac584924ccf92589ea1e6494f0e857e344a4006fe9159069fe873ed0a6.lean/declarations/zpow-zpow--7461c12774ab0858f013327a.md) | 71 | `result-track:7461c12774ab0858f013327a99b02bd0d9a698b347f4f212b18227833e966182` |
| 12 | `lemma` | [zpow_self₀](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant8f31dbac584924ccf92589ea1e6494f0e857e344a4006fe9159069fe873ed0a6.lean/declarations/zpow-self--b926cbd4d9dad651f030777f.md) | 74 | `result-track:b926cbd4d9dad651f030777fadbbf7e6a60df555ae0d2361cacb09efccadac11` |
| 13 | `lemma` | [self_zpow₀](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant8f31dbac584924ccf92589ea1e6494f0e857e344a4006fe9159069fe873ed0a6.lean/declarations/self-zpow--c2eb8b1f388753880191d0b2.md) | 76 | `result-track:c2eb8b1f388753880191d0b2eb9a0506b2eb98b1b18a0d907e80017fe196f707` |
| 14 | `lemma` | [zpow_zpow_self₀](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant8f31dbac584924ccf92589ea1e6494f0e857e344a4006fe9159069fe873ed0a6.lean/declarations/zpow-zpow-self--d0c03efaecc8d3fd601ae95a.md) | 78 | `result-track:d0c03efaecc8d3fd601ae95a76cad76caf038c53d40ded0dc2c077c810e4324b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
