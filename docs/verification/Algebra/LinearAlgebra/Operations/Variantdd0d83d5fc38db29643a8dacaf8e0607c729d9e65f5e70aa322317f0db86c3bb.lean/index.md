# Verification target: GRWTSK.Algebra.LinearAlgebra.Operations.Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31555a320f83104dacc36a211274373c777f31a4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31555a320f83104dacc36a211274373c777f31a4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Operations/Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Operations/Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Matrix` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Matrix.zeros](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb.lean/declarations/matrix-zeros--dab47f3efc76b659d114628b.md) | 14 | `declaration-track:dab47f3efc76b659d114628b506548c1a2fa48691593446f6e978f94ae05cd04` |
| 2 | `def` | [Matrix.ones](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb.lean/declarations/matrix-ones--24e40ac68b29d2494cdcbd13.md) | 18 | `declaration-track:24e40ac68b29d2494cdcbd13b037be43e0a3dc504a99794a4eaae532d8441bdb` |
| 3 | `def` | [Matrix.join](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb.lean/declarations/matrix-join--90de48bdbe2113656c27c6fe.md) | 22 | `declaration-track:90de48bdbe2113656c27c6fe9d3099c21ceb673189056a5f7714591397f6ece4` |
| 4 | `def` | [Matrix.meet](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb.lean/declarations/matrix-meet--16f2462893fb6f90a0720c89.md) | 28 | `declaration-track:16f2462893fb6f90a0720c89ea8ef8f87772d7eec54b0ff9f098b9380d9854af` |
| 5 | `def` | [Matrix.compl](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb.lean/declarations/matrix-compl--3e1c274a3c086b9d023e83ac.md) | 34 | `declaration-track:3e1c274a3c086b9d023e83ac544fd67914d29f95256e272ecebf2c6603d1b6b4` |
| 6 | `def` | [Matrix.transpose](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb.lean/declarations/matrix-transpose--45925c81d0efd9935ce8287b.md) | 40 | `declaration-track:45925c81d0efd9935ce8287b05034de889ef6b3e34263cfeb5b73bdd4264495c` |
| 7 | `def` | [Matrix.set](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb.lean/declarations/matrix-set--7edfa12eb4a19d2daa5504d1.md) | 46 | `declaration-track:7edfa12eb4a19d2daa5504d1dbbf870b56e1ad7e2eafdf7069d74a33f71840dd` |
| 8 | `theorem` | [Matrix.entry_zeros](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb.lean/declarations/matrix-entry-zeros--8c6f7c5ffb855da57f484c88.md) | 58 | `result-track:8c6f7c5ffb855da57f484c881a1755b9b04d2b7f86f0184f9662dd5c4dae5202` |
| 9 | `theorem` | [Matrix.entry_ones](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb.lean/declarations/matrix-entry-ones--c344e19cba71159c6e94be28.md) | 64 | `result-track:c344e19cba71159c6e94be28f1ae5798cd6a9738edf1099373a3eccb59580cbc` |
| 10 | `theorem` | [Matrix.entry_join](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb.lean/declarations/matrix-entry-join--fb5a446c53c4d47b796cf258.md) | 70 | `result-track:fb5a446c53c4d47b796cf2585173227888dc8743fed77e0a9a96b912ea0b6e16` |
| 11 | `theorem` | [Matrix.entry_meet](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb.lean/declarations/matrix-entry-meet--62f606d06d6cfb75576d6100.md) | 78 | `result-track:62f606d06d6cfb75576d6100aebd28b5a2f654dec32ad8df60488e8459aee88d` |
| 12 | `theorem` | [Matrix.entry_compl](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb.lean/declarations/matrix-entry-compl--ef07bd4ab905a04141f83dfb.md) | 86 | `result-track:ef07bd4ab905a04141f83dfba22d02063e63fb11442479c021f1cd183c1fc3ef` |
| 13 | `theorem` | [Matrix.entry_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb.lean/declarations/matrix-entry-transpose--b21cf053b43d34af8756937c.md) | 94 | `result-track:b21cf053b43d34af8756937cbc91b6488c6428128042e1d7c39f87b1cc4fd394` |
| 14 | `theorem` | [Matrix.transpose_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb.lean/declarations/matrix-transpose-transpose--f8b506044d67afc3cbeba6dd.md) | 102 | `result-track:f8b506044d67afc3cbeba6dd109404afd57fb30644c74049181ba56a92be42ff` |
| 15 | `theorem` | [Matrix.entry_set_same](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb.lean/declarations/matrix-entry-set-same--837976e8696d138ceee15c8b.md) | 109 | `result-track:837976e8696d138ceee15c8b1413a6116192af99a4b394cebf4027670ffa0907` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
