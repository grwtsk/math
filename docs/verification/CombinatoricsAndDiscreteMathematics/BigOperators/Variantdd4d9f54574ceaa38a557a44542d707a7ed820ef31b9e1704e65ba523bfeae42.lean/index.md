# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variantdd4d9f54574ceaa38a557a44542d707a7ed820ef31b9e1704e65ba523bfeae42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5378bb72b1bdbcfb5cdfa2d0b6b4f6cf6fd2820d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantdd4d9f54574ceaa38a557a44542d707a7ed820ef31b9e1704e65ba523bfeae42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantdd4d9f54574ceaa38a557a44542d707a7ed820ef31b9e1704e65ba523bfeae42.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantdd4d9f54574ceaa38a557a44542d707a7ed820ef31b9e1704e65ba523bfeae42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5378bb72b1bdbcfb5cdfa2d0b6b4f6cf6fd2820d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantdd4d9f54574ceaa38a557a44542d707a7ed820ef31b9e1704e65ba523bfeae42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variantdd4d9f54574ceaa38a557a44542d707a7ed820ef31b9e1704e65ba523bfeae42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.GroupWithZero.Action` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [List.sum_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantdd4d9f54574ceaa38a557a44542d707a7ed820ef31b9e1704e65ba523bfeae42.lean/declarations/list-sum-smul--0dba6d64532f2092b0216ea5.md) | 28 | `result-track:0dba6d64532f2092b0216ea53d848f015d1a8d20d9aefabc71aaeee0846e51d0` |
| 2 | `theorem` | [Multiset.sum_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantdd4d9f54574ceaa38a557a44542d707a7ed820ef31b9e1704e65ba523bfeae42.lean/declarations/multiset-sum-smul--7a77eeff572f2037c498f3ed.md) | 31 | `result-track:7a77eeff572f2037c498f3ed3ab24b5cb591ab6a07b42f4aa1a9b10a4776c2a8` |
| 3 | `theorem` | [Multiset.sum_smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantdd4d9f54574ceaa38a557a44542d707a7ed820ef31b9e1704e65ba523bfeae42.lean/declarations/multiset-sum-smul-sum--66b4d15481c336153de0bdae.md) | 34 | `result-track:66b4d15481c336153de0bdae1277acb31c1e0ad188b3c4e0b00953b2f41fb48c` |
| 4 | `theorem` | [Finset.sum_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantdd4d9f54574ceaa38a557a44542d707a7ed820ef31b9e1704e65ba523bfeae42.lean/declarations/finset-sum-smul--7becb0df876b9d2fb83fcd6f.md) | 40 | `result-track:7becb0df876b9d2fb83fcd6f9ab740eec2dd69d96355025ece5928a871b87551` |
| 5 | `lemma` | [Finset.sum_smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantdd4d9f54574ceaa38a557a44542d707a7ed820ef31b9e1704e65ba523bfeae42.lean/declarations/finset-sum-smul-sum--8d615cae9662c0dbb9200eca.md) | 43 | `result-track:8d615cae9662c0dbb9200ecadc0c7ffbd62631e34631d746f59d17f6eaa13b68` |
| 6 | `lemma` | [Fintype.sum_smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantdd4d9f54574ceaa38a557a44542d707a7ed820ef31b9e1704e65ba523bfeae42.lean/declarations/fintype-sum-smul-sum--e309fcedc57930fdc480d263.md) | 47 | `result-track:e309fcedc57930fdc480d263d636857c3adb0100be8dd86873c3b2590b1ad72a` |
| 7 | `theorem` | [Finset.cast_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantdd4d9f54574ceaa38a557a44542d707a7ed820ef31b9e1704e65ba523bfeae42.lean/declarations/finset-cast-card--b392e8e2f962f08643c135a4.md) | 54 | `result-track:b392e8e2f962f08643c135a46f71919008d9445b7216bba813a75e7609940ad8` |
| 8 | `lemma` | [sum_piFinset_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantdd4d9f54574ceaa38a557a44542d707a7ed820ef31b9e1704e65ba523bfeae42.lean/declarations/sum-pifinset-apply--067c6aafd3f403b4cd8b5586.md) | 60 | `result-track:067c6aafd3f403b4cd8b55867f122e3e48d1b7a13a3582adf50c541b940103a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
