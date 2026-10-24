# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.DedekindZeta.Variantc8c41167ef70155facaea65575cf4544e4107bc212580edba8a7b26680a0777e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbb43cd6ade0c80a65da6c671ca3297a4cdee7da",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variantc8c41167ef70155facaea65575cf4544e4107bc212580edba8a7b26680a0777e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variantc8c41167ef70155facaea65575cf4544e4107bc212580edba8a7b26680a0777e.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variantc8c41167ef70155facaea65575cf4544e4107bc212580edba8a7b26680a0777e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbb43cd6ade0c80a65da6c671ca3297a4cdee7da`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variantc8c41167ef70155facaea65575cf4544e4107bc212580edba8a7b26680a0777e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variantc8c41167ef70155facaea65575cf4544e4107bc212580edba8a7b26680a0777e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dedekindZeta](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variantc8c41167ef70155facaea65575cf4544e4107bc212580edba8a7b26680a0777e.lean/declarations/dedekindzeta--1f3de9d9eec8f0b2a319e58e.md) | 49 | `declaration-track:1f3de9d9eec8f0b2a319e58e0be3bbea15aa7447afc7495ddaa3fb23e0ad9e16` |
| 2 | `def` | [dedekindZeta_residue](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variantc8c41167ef70155facaea65575cf4544e4107bc212580edba8a7b26680a0777e.lean/declarations/dedekindzeta-residue--72aa5ac7987c204a01303fa3.md) | 56 | `declaration-track:72aa5ac7987c204a01303fa3ce4ab93bca133ed6a465384ae359134402ad43f2` |
| 3 | `theorem` | [dedekindZeta_residue_def](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variantc8c41167ef70155facaea65575cf4544e4107bc212580edba8a7b26680a0777e.lean/declarations/dedekindzeta-residue-def--51e7f71a04d49ad5e6ca95ea.md) | 60 | `result-track:51e7f71a04d49ad5e6ca95ea53d5105f61758b4323e49c15543063e6151f566b` |
| 4 | `theorem` | [dedekindZeta_residue_pos](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variantc8c41167ef70155facaea65575cf4544e4107bc212580edba8a7b26680a0777e.lean/declarations/dedekindzeta-residue-pos--c307ffe1d7c0a8ef00a13ece.md) | 65 | `result-track:c307ffe1d7c0a8ef00a13ecec132027fd1f38e22a8277f3bc86110b674b05ac7` |
| 5 | `theorem` | [dedekindZeta_residue_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variantc8c41167ef70155facaea65575cf4544e4107bc212580edba8a7b26680a0777e.lean/declarations/dedekindzeta-residue-ne-zero--aecca44fee56a2fee308aa98.md) | 71 | `result-track:aecca44fee56a2fee308aa9866579736d3d44143716a5269f2ffdf939dd0d6b2` |
| 6 | `theorem` | [tendsto_sub_one_mul_dedekindZeta_nhdsGT](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variantc8c41167ef70155facaea65575cf4544e4107bc212580edba8a7b26680a0777e.lean/declarations/tendsto-sub-one-mul-dedekindzeta-nhdsgt--da51f50e94a2f52eb17f542d.md) | 77 | `result-track:da51f50e94a2f52eb17f542d8da19d321ea6826dd823adae953a7240f1467eb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
