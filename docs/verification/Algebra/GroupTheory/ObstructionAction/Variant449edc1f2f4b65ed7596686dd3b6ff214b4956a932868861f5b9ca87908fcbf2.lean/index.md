# Verification target: GRWTSK.Algebra.GroupTheory.ObstructionAction.Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5ef71292abadfb6a59034952fa85abfc9be3691",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ObstructionAction/Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ObstructionAction/Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ObstructionAction/Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5ef71292abadfb6a59034952fa85abfc9be3691`.

Source path: `GRWTSK/Algebra/GroupTheory/ObstructionAction/Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ObstructionAction/Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Obstruction.MUS` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.BinaryFrontier.Symmetry.CompletionEquivariance` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RawObstruction](../../../../../mathematics/Algebra/GroupTheory/ObstructionAction/Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2.lean/declarations/rawobstruction--5594b75490f48440386f19d7.md) | 18 | `declaration-track:5594b75490f48440386f19d726d63108351fccbc7f080e8221d7127d5ea5f2ff` |
| 2 | `def` | [smulRawObstruction](../../../../../mathematics/Algebra/GroupTheory/ObstructionAction/Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2.lean/declarations/smulrawobstruction--9c7e86be79a6cfc298c33f1b.md) | 29 | `declaration-track:9c7e86be79a6cfc298c33f1be6e1e99dbd764535f2acd34ca7663923332d0897` |
| 3 | `instance` | [rawObstructionSMul](../../../../../mathematics/Algebra/GroupTheory/ObstructionAction/Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2.lean/declarations/rawobstructionsmul--0c73db41f940cb9b3351fb9f.md) | 46 | `declaration-track:0c73db41f940cb9b3351fb9f05374c5096cf9b24aed5c71047371f33111936cb` |
| 4 | `instance` | [rawObstructionMulAction](../../../../../mathematics/Algebra/GroupTheory/ObstructionAction/Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2.lean/declarations/rawobstructionmulaction--df5e47c4961b471d6e2ab5d0.md) | 58 | `declaration-track:df5e47c4961b471d6e2ab5d094f873952902ed7fb1ac50c9df702c9e535dce3e` |
| 5 | `def` | [transportPrimitiveCore](../../../../../mathematics/Algebra/GroupTheory/ObstructionAction/Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2.lean/declarations/transportprimitivecore--e383a0c3cd6ba7b505ad4886.md) | 80 | `declaration-track:e383a0c3cd6ba7b505ad4886d501b5643a34f285389bcd5e853b683f89da1347` |
| 6 | `theorem` | [primitive_core_transports_under_automorphism](../../../../../mathematics/Algebra/GroupTheory/ObstructionAction/Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2.lean/declarations/primitive-core-transports-under-automorphism--b014c5f475767c45e45eb029.md) | 136 | `result-track:b014c5f475767c45e45eb02996335126b62f33a80acfbe29545728daf0511c3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
