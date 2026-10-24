# Verification target: GRWTSK.NumberTheory.DirichletDensity.Variantd52e1f3104ab10cb15277018eee44ec2b6dc700391450274486341a9c786b452

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9aa3a2806248249c8fd0c7e0bd8beb7002b1ff14",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/DirichletDensity/Variantd52e1f3104ab10cb15277018eee44ec2b6dc700391450274486341a9c786b452.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/DirichletDensity/Variantd52e1f3104ab10cb15277018eee44ec2b6dc700391450274486341a9c786b452.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/DirichletDensity/Variantd52e1f3104ab10cb15277018eee44ec2b6dc700391450274486341a9c786b452.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9aa3a2806248249c8fd0c7e0bd8beb7002b1ff14`.

Source path: `GRWTSK/NumberTheory/DirichletDensity/Variantd52e1f3104ab10cb15277018eee44ec2b6dc700391450274486341a9c786b452.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/DirichletDensity/Variantd52e1f3104ab10cb15277018eee44ec2b6dc700391450274486341a9c786b452.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeIdealZetaSum](../../../../mathematics/NumberTheory/DirichletDensity/Variantd52e1f3104ab10cb15277018eee44ec2b6dc700391450274486341a9c786b452.lean/declarations/primeidealzetasum--46d42377c5e9ab866be8733d.md) | 62 | `declaration-track:46d42377c5e9ab866be8733d4a2320e6ccecfdc78febadc5645368c8921f896c` |
| 2 | `theorem` | [primeIdealZetaSum_def](../../../../mathematics/NumberTheory/DirichletDensity/Variantd52e1f3104ab10cb15277018eee44ec2b6dc700391450274486341a9c786b452.lean/declarations/primeidealzetasum-def--550c90a6c5da11ae2dcc524f.md) | 65 | `result-track:550c90a6c5da11ae2dcc524f9a7c1aad988ea6ddf9c294d685289dc09ed03ea9` |
| 3 | `theorem` | [primeIdealZetaSum_nonneg](../../../../mathematics/NumberTheory/DirichletDensity/Variantd52e1f3104ab10cb15277018eee44ec2b6dc700391450274486341a9c786b452.lean/declarations/primeidealzetasum-nonneg--9d16ce3f888670cc076df467.md) | 68 | `result-track:9d16ce3f888670cc076df467f4eac7125a39d5dbae5a836661a3b80e88a3f929` |
| 4 | `theorem` | [primeIdealZetaSum_le_card_of_finite](../../../../mathematics/NumberTheory/DirichletDensity/Variantd52e1f3104ab10cb15277018eee44ec2b6dc700391450274486341a9c786b452.lean/declarations/primeidealzetasum-le-card-of-finite--e901de4dd2c9d45c3df54e23.md) | 76 | `result-track:e901de4dd2c9d45c3df54e233de0b4d5d5f6439d3a6efa9df78357f44b9a8a95` |
| 5 | `def` | [HasDirichletDensity](../../../../mathematics/NumberTheory/DirichletDensity/Variantd52e1f3104ab10cb15277018eee44ec2b6dc700391450274486341a9c786b452.lean/declarations/hasdirichletdensity--5542e07e54e1e0ce673d1208.md) | 90 | `declaration-track:5542e07e54e1e0ce673d12084e044466900741a57d59dc221ef1c4c6d0db875a` |
| 6 | `def` | [dirichletDensity](../../../../mathematics/NumberTheory/DirichletDensity/Variantd52e1f3104ab10cb15277018eee44ec2b6dc700391450274486341a9c786b452.lean/declarations/dirichletdensity--1c5d20e2830bc9190de8b012.md) | 98 | `declaration-track:1c5d20e2830bc9190de8b012d97c7707f36ae801205fa7d7ae388a4dae9b2b61` |
| 7 | `theorem` | [dirichletDensity_eq_zero_of_not_hasDirichletDensity](../../../../mathematics/NumberTheory/DirichletDensity/Variantd52e1f3104ab10cb15277018eee44ec2b6dc700391450274486341a9c786b452.lean/declarations/dirichletdensity-eq-zero-of-not-hasdirichletdensity--4138c9c6bec61ceab7f28172.md) | 104 | `result-track:4138c9c6bec61ceab7f281720c56bfa8687cd7f09e1d098699d7b5a2cfa2081d` |
| 8 | `theorem` | [HasDirichletDensity.dirichletDensity_eq](../../../../mathematics/NumberTheory/DirichletDensity/Variantd52e1f3104ab10cb15277018eee44ec2b6dc700391450274486341a9c786b452.lean/declarations/hasdirichletdensity-dirichletdensity-eq--db148b2f685380cca3cee9a5.md) | 109 | `result-track:db148b2f685380cca3cee9a5f80db39f277c38d350a92eb99eccfec0faad889e` |
| 9 | `theorem` | [hasDirichletDensity_empty](../../../../mathematics/NumberTheory/DirichletDensity/Variantd52e1f3104ab10cb15277018eee44ec2b6dc700391450274486341a9c786b452.lean/declarations/hasdirichletdensity-empty--08eef044664c44eeb5e36f7b.md) | 114 | `result-track:08eef044664c44eeb5e36f7bd6ad470a0f11ce08fbb842fdcbb666a35b56dda8` |
| 10 | `theorem` | [dirichletDensity_empty](../../../../mathematics/NumberTheory/DirichletDensity/Variantd52e1f3104ab10cb15277018eee44ec2b6dc700391450274486341a9c786b452.lean/declarations/dirichletdensity-empty--6fc7ba5802b3b41f0003c4f9.md) | 120 | `result-track:6fc7ba5802b3b41f0003c4f90d726333e3a3bfdeb56db144188bbec9bf539d88` |
| 11 | `theorem` | [HasDirichletDensity.nonneg](../../../../mathematics/NumberTheory/DirichletDensity/Variantd52e1f3104ab10cb15277018eee44ec2b6dc700391450274486341a9c786b452.lean/declarations/hasdirichletdensity-nonneg--44a50d68a725bcd292af5f27.md) | 125 | `result-track:44a50d68a725bcd292af5f277ac71679b142eca976c57d63e8afccbd98aada04` |
| 12 | `theorem` | [dirichletDensity_nonneg](../../../../mathematics/NumberTheory/DirichletDensity/Variantd52e1f3104ab10cb15277018eee44ec2b6dc700391450274486341a9c786b452.lean/declarations/dirichletdensity-nonneg--630382d8f81590c3c56f0e40.md) | 132 | `result-track:630382d8f81590c3c56f0e40ca4582283681000b8410ff717062ed9694cac344` |
| 13 | `theorem` | [HasDirichletDensity.le_one](../../../../mathematics/NumberTheory/DirichletDensity/Variantd52e1f3104ab10cb15277018eee44ec2b6dc700391450274486341a9c786b452.lean/declarations/hasdirichletdensity-le-one--91fa06145c9b1c1f3f191b37.md) | 139 | `result-track:91fa06145c9b1c1f3f191b37d41ea466eb39e7b656e14cbd68f70e92ca857585` |
| 14 | `theorem` | [dirichletDensity_le_one](../../../../mathematics/NumberTheory/DirichletDensity/Variantd52e1f3104ab10cb15277018eee44ec2b6dc700391450274486341a9c786b452.lean/declarations/dirichletdensity-le-one--ca826b8b15cd67169bed30de.md) | 151 | `result-track:ca826b8b15cd67169bed30dee7eb0f80da6477b0f55e1aaf62c25f33efbc81c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
