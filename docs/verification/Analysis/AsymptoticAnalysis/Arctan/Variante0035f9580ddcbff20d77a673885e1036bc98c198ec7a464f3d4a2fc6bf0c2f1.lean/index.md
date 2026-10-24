# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Arctan.Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af4b37d5d6087edd5796971c96aa60c6f74dbae7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af4b37d5d6087edd5796971c96aa60c6f74dbae7`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.LogBounds` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [arctan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean/declarations/arctan--32c9c7c4337f2c60bca016e2.md) | 32 | `declaration-track:32c9c7c4337f2c60bca016e20913d52ec7d9cb0534039393f13f4657bb26c13e` |
| 2 | `theorem` | [tan_arctan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean/declarations/tan-arctan--aab9857009a6feae9c8a9be0.md) | 34 | `result-track:aab9857009a6feae9c8a9be0fac91cd0de31260ffba328fdcab95c0ed87ac0f2` |
| 3 | `lemma` | [cos_ne_zero_of_arctan_bounds](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean/declarations/cos-ne-zero-of-arctan-bounds--50509c7174980325d8ed2131.md) | 58 | `result-track:50509c7174980325d8ed2131ab02452332a6a7528214a7d72d32f99ab575633f` |
| 4 | `theorem` | [arctan_tan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean/declarations/arctan-tan--504081cb2dc63e2a215bf32f.md) | 72 | `result-track:504081cb2dc63e2a215bf32fa91d766010573a536c8ded205b3396ec8a6464ae` |
| 5 | `theorem` | [ofReal_arctan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean/declarations/ofreal-arctan--016cf39b1b5f66e1a58a83c6.md) | 88 | `result-track:016cf39b1b5f66e1a58a83c61803ba22b1d5d1a5dc3029c6320fffea9a2c0e42` |
| 6 | `lemma` | [arg_one_add_mem_Ioo](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean/declarations/arg-one-add-mem-ioo--c3d92f81e1a842d5babdbfb4.md) | 97 | `result-track:c3d92f81e1a842d5babdbfb4b19b3da7127f93c400263742d1e3d59364bee2e3` |
| 7 | `lemma` | [hasSum_arctan_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean/declarations/hassum-arctan-aux--ba46d33e93c56b29f2889d16.md) | 103 | `result-track:ba46d33e93c56b29f2889d16d4e3f4a64b49aa7cbd9e8dc1fa246d1a29b9049b` |
| 8 | `theorem` | [hasSum_arctan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean/declarations/hassum-arctan--b8c76c1fba464af7bef1eda3.md) | 123 | `result-track:b8c76c1fba464af7bef1eda3bfe46f9202834ec57da49369de8c4a3030d62f43` |
| 9 | `theorem` | [Real.hasSum_arctan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean/declarations/real-hassum-arctan--73722238ed5333b8676e6271.md) | 145 | `result-track:73722238ed5333b8676e6271595166b1b779956fa6b779d6226be5a4e9438f8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
