# Verification target: GRWTSK.Algebra.GroupTheory.CompletionEquivariance.Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac28ba25fbffc2e21e0b29cba010000ca90afdee",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac28ba25fbffc2e21e0b29cba010000ca90afdee`.

Source path: `GRWTSK/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Completion.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.BinaryFrontier.Symmetry.Canonical` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transportFinset](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean/declarations/transportfinset--cd86eaea8b99111fd8e97e08.md) | 17 | `declaration-track:cd86eaea8b99111fd8e97e0852837a2c49f1cccd387862c77250b99e4132cedc` |
| 2 | `theorem` | [mem_transportFinset](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean/declarations/mem-transportfinset--4913ffd8d6d9508065e485c3.md) | 29 | `result-track:4913ffd8d6d9508065e485c3244fdc0c38fccf9e4a5ed15de30eefab6bd82250` |
| 3 | `theorem` | [transportFinset_one](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean/declarations/transportfinset-one--c375d44d89b7aeeefbf18f0f.md) | 44 | `result-track:c375d44d89b7aeeefbf18f0feb365a964beb96e1676f0d81fc0987a64f5b3752` |
| 4 | `theorem` | [transportFinset_mul](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean/declarations/transportfinset-mul--e9ca3e20740f5fc6d664c097.md) | 56 | `result-track:e9ca3e20740f5fc6d664c097492584f7dd0db222f23d5fbb596a06c6a2e3db86` |
| 5 | `theorem` | [transportFinset_inverse_left](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean/declarations/transportfinset-inverse-left--30867ad700dc8e424aceddc9.md) | 70 | `result-track:30867ad700dc8e424aceddc9dcd87dc3d0f6a7cbf13dc9ea742500486967c0dc` |
| 6 | `theorem` | [transportFinset_subset](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean/declarations/transportfinset-subset--7c4329003350ddeba14b62fe.md) | 84 | `result-track:7c4329003350ddeba14b62fe98103607ae4a3bd307554ea381223781019f1f80` |
| 7 | `theorem` | [transportFinset_nonempty](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean/declarations/transportfinset-nonempty--5003a06b33e7f0b15b74af45.md) | 103 | `result-track:5003a06b33e7f0b15b74af45463e7bc809f0a504c3e3a5a53d81dcdd7c0d7e70` |
| 8 | `theorem` | [transportFinset_erase](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean/declarations/transportfinset-erase--ab6efcad394a56b187c79d0c.md) | 121 | `result-track:ab6efcad394a56b187c79d0c3c859e0057ca39a60e5ce9666c6f01b19adcdf78` |
| 9 | `structure` | [CompletionEquivariance](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean/declarations/completionequivariance--43050685a6de2cb26fe41adb.md) | 137 | `declaration-track:43050685a6de2cb26fe41adb5f6270379bfe23561ce8d0840dc2357e73cfc54b` |
| 10 | `theorem` | [CompletionEquivariance.satisfiesAll_equivariant](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean/declarations/completionequivariance-satisfiesall-equivariant--3b645f66764c5d6989e3adb2.md) | 167 | `result-track:3b645f66764c5d6989e3adb2cbf4874f251c2b1e8d83e96b8fef30864ea6b860` |
| 11 | `theorem` | [CompletionEquivariance.feasible_equivariant](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean/declarations/completionequivariance-feasible-equivariant--3b0a63adf8c4ed710929053c.md) | 215 | `result-track:3b0a63adf8c4ed710929053c5bbf50ff8011984951d64562b02b7dcbb530507b` |
| 12 | `theorem` | [CompletionEquivariance.infeasible_equivariant](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean/declarations/completionequivariance-infeasible-equivariant--1489bb3a41ccb74e745b0ee9.md) | 267 | `result-track:1489bb3a41ccb74e745b0ee980f5c5d85c901976eaaed4f1ea47e9f39ec94bab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
