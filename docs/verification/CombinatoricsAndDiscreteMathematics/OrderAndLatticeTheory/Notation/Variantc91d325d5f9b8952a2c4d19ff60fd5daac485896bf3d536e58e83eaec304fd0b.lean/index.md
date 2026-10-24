# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Notation.Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "583c8d8de1a4bc954d7d848a2101396ce45fe5ad",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `583c8d8de1a4bc954d7d848a2101396ce45fe5ad`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Qq` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.PrettyPrinter.Delaborator` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Simps.NotationClass` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasCompl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean/declarations/hascompl--37db85a50975516413529b47.md) | 39 | `declaration-track:37db85a50975516413529b4764ef91487abdfd97cb1e2d4ffcef035ea9f6c229` |
| 2 | `class` | [Sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean/declarations/sup--5cff9e3813f8ca257dd1ba71.md) | 52 | `declaration-track:5cff9e3813f8ca257dd1ba71c4e75f1104d8ab67809e1b9ee752820ff9b0da46` |
| 3 | `class` | [Inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean/declarations/inf--61ec64308dae9db98239e4b2.md) | 58 | `declaration-track:61ec64308dae9db98239e4b2db30bb7309f004a5f3ec317647a65d9a43a019c1` |
| 4 | `macro_rules` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean/declarations/macro-rules--7b8f2eaa75444fb699841203.md) | 76 | `declaration-track:7b8f2eaa75444fb6998412033625b9f9fedfb45339dd9a6472f35cc617c9cf0b` |
| 5 | `def` | [linearOrderExpr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean/declarations/linearorderexpr--c7bac2640771b998a2830d73.md) | 85 | `declaration-track:c7bac2640771b998a2830d73258b631744a5fb55ab566d63d0aabba262cf5ef9` |
| 6 | `def` | [linearOrderToMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean/declarations/linearordertomax--4380898ab424209e3bcf2536.md) | 87 | `declaration-track:4380898ab424209e3bcf25362c05dd3af50e3e34f8c98e221a7b6ebaae08357a` |
| 7 | `def` | [linearOrderToMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean/declarations/linearordertomin--779ef2540b9746a50d8b71bb.md) | 89 | `declaration-track:779ef2540b9746a50d8b71bbbc1615a95d16c4a14048de2616b2aa07423fc6d3` |
| 8 | `def` | [hasLinearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean/declarations/haslinearorder--85cd82d74977430419de1cd7.md) | 97 | `declaration-track:85cd82d74977430419de1cd7132a8b6033ba9bc449dac34df43f74e3be0be7d7` |
| 9 | `def` | [delabSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean/declarations/delabsup--a05ed7ff9b1f80c1fbb6a944.md) | 115 | `declaration-track:a05ed7ff9b1f80c1fbb6a9447cd536292913e119ccff30b9e850e83fda89a372` |
| 10 | `def` | [delabInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean/declarations/delabinf--bffa90ca4d788410679401bb.md) | 127 | `declaration-track:bffa90ca4d788410679401bbc334c0519bddd359f12fd8663f1d74c656471636` |
| 11 | `class` | [HImp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean/declarations/himp--aaa8d2868f1be1a0b034a62d.md) | 141 | `declaration-track:aaa8d2868f1be1a0b034a62d92a2c7d11348cdef5668f147bd3de7bc649726f2` |
| 12 | `class` | [HNot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean/declarations/hnot--c6890d5b2f77be8a02952533.md) | 153 | `declaration-track:c6890d5b2f77be8a029525336abf99350cfe10cef05e3196ed67648f42e1e570` |
| 13 | `class` | [Top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean/declarations/top--97d03b9a25174186f8a4728d.md) | 170 | `declaration-track:97d03b9a25174186f8a4728dfa1e18d89c4fdc206e7f5eb8b7f31f643b01762d` |
| 14 | `class` | [Bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean/declarations/bot--1a1dc751e67e0caea24daa16.md) | 176 | `declaration-track:1a1dc751e67e0caea24daa1602d970b524ebd6e2f3b2b33a96924649276dc525` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean/declarations/instance--3352ecff448e54ccb17a33e9.md) | 186 | `declaration-track:3352ecff448e54ccb17a33e9ba2dc37d4cf386b261ac2184d5ced02e573d0eaf` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Notation/Variantc91d325d5f9b8952a2c4d19ff60fd5daac485896bf3d536e58e83eaec304fd0b.lean/declarations/instance--911c8550c18a34b479b51f19.md) | 189 | `declaration-track:911c8550c18a34b479b51f19445558495140d677ca54c4520c9be8c27df2664d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
