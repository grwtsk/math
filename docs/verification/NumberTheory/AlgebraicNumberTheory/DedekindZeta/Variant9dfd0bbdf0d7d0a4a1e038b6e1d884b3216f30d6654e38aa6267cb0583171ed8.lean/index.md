# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.DedekindZeta.Variant9dfd0bbdf0d7d0a4a1e038b6e1d884b3216f30d6654e38aa6267cb0583171ed8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de8cfa91a537cdd3cffff392c4eb4617592e29c3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant9dfd0bbdf0d7d0a4a1e038b6e1d884b3216f30d6654e38aa6267cb0583171ed8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant9dfd0bbdf0d7d0a4a1e038b6e1d884b3216f30d6654e38aa6267cb0583171ed8.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant9dfd0bbdf0d7d0a4a1e038b6e1d884b3216f30d6654e38aa6267cb0583171ed8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de8cfa91a537cdd3cffff392c4eb4617592e29c3`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant9dfd0bbdf0d7d0a4a1e038b6e1d884b3216f30d6654e38aa6267cb0583171ed8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant9dfd0bbdf0d7d0a4a1e038b6e1d884b3216f30d6654e38aa6267cb0583171ed8.lean.json)

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
| 1 | `def` | [dedekindZeta](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant9dfd0bbdf0d7d0a4a1e038b6e1d884b3216f30d6654e38aa6267cb0583171ed8.lean/declarations/dedekindzeta--d8635bda5e2d2aa917930d97.md) | 57 | `declaration-track:d8635bda5e2d2aa917930d97444bb3946dc55294b348aa97e0cd420e32d050d5` |
| 2 | `def` | [dedekindZeta_residue](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant9dfd0bbdf0d7d0a4a1e038b6e1d884b3216f30d6654e38aa6267cb0583171ed8.lean/declarations/dedekindzeta-residue--019a20cf0b060549ed1ae790.md) | 64 | `declaration-track:019a20cf0b060549ed1ae79028acbacd9ff2f5f523b7ecf29211ea53e39c56de` |
| 3 | `theorem` | [dedekindZeta_residue_def](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant9dfd0bbdf0d7d0a4a1e038b6e1d884b3216f30d6654e38aa6267cb0583171ed8.lean/declarations/dedekindzeta-residue-def--329bbf3dd009018d98a06930.md) | 68 | `result-track:329bbf3dd009018d98a06930d43f593d0f701eaf4bf127c8772d3eaee7009325` |
| 4 | `theorem` | [dedekindZeta_residue_pos](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant9dfd0bbdf0d7d0a4a1e038b6e1d884b3216f30d6654e38aa6267cb0583171ed8.lean/declarations/dedekindzeta-residue-pos--32a349c0f55ca6b3e02e0d5a.md) | 73 | `result-track:32a349c0f55ca6b3e02e0d5a9714896d3c0327584f45880121b9539dd519fef6` |
| 5 | `theorem` | [dedekindZeta_residue_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant9dfd0bbdf0d7d0a4a1e038b6e1d884b3216f30d6654e38aa6267cb0583171ed8.lean/declarations/dedekindzeta-residue-ne-zero--bb2cede944250f1e5451f1a1.md) | 79 | `result-track:bb2cede944250f1e5451f1a10a5f3f234ab1c2a6bb0e0ab92e863050313b3ac7` |
| 6 | `theorem` | [tendsto_sub_one_mul_dedekindZeta_nhdsGT](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant9dfd0bbdf0d7d0a4a1e038b6e1d884b3216f30d6654e38aa6267cb0583171ed8.lean/declarations/tendsto-sub-one-mul-dedekindzeta-nhdsgt--7c7aceeef5f3f44dc3f44ea6.md) | 85 | `result-track:7c7aceeef5f3f44dc3f44ea6e9e43760d5ccb441aef32346609f7e6afe36a3f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
