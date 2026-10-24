# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Linear.Variant7b6caf44a1d6eab6893f80bfc0b644d91ec7edb6d4368d6d6637464cba5150e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98edfca5130214e7c00074e32b37c7d313d5e802",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant7b6caf44a1d6eab6893f80bfc0b644d91ec7edb6d4368d6d6637464cba5150e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant7b6caf44a1d6eab6893f80bfc0b644d91ec7edb6d4368d6d6637464cba5150e2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant7b6caf44a1d6eab6893f80bfc0b644d91ec7edb6d4368d6d6637464cba5150e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98edfca5130214e7c00074e32b37c7d313d5e802`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant7b6caf44a1d6eab6893f80bfc0b644d91ec7edb6d4368d6d6637464cba5150e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant7b6caf44a1d6eab6893f80bfc0b644d91ec7edb6d4368d6d6637464cba5150e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContinuousLinearMap.hasDerivAtFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant7b6caf44a1d6eab6893f80bfc0b644d91ec7edb6d4368d6d6637464cba5150e2.lean/declarations/continuouslinearmap-hasderivatfilter--deb40a2cf8ae64450514914a.md) | 53 | `result-track:deb40a2cf8ae64450514914ae32c12b0d0f30f2a226d882e0463fa305f1a56e7` |
| 2 | `theorem` | [ContinuousLinearMap.hasStrictDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant7b6caf44a1d6eab6893f80bfc0b644d91ec7edb6d4368d6d6637464cba5150e2.lean/declarations/continuouslinearmap-hasstrictderivat--3592848df00393dfceab6be3.md) | 56 | `result-track:3592848df00393dfceab6be39bf27b0c987c1cf75c4856e8d8a11e2d355ea683` |
| 3 | `theorem` | [ContinuousLinearMap.hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant7b6caf44a1d6eab6893f80bfc0b644d91ec7edb6d4368d6d6637464cba5150e2.lean/declarations/continuouslinearmap-hasderivat--b91b1f2abcf6fc3049d7a865.md) | 59 | `result-track:b91b1f2abcf6fc3049d7a865ae13d6cbba2ed58d036281e1678b491ef7614b8d` |
| 4 | `theorem` | [ContinuousLinearMap.hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant7b6caf44a1d6eab6893f80bfc0b644d91ec7edb6d4368d6d6637464cba5150e2.lean/declarations/continuouslinearmap-hasderivwithinat--ea90538ba0749161bee49b5a.md) | 62 | `result-track:ea90538ba0749161bee49b5ab4418d4eb1a7d757441abf0cc1efaa04e8113025` |
| 5 | `theorem` | [ContinuousLinearMap.deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant7b6caf44a1d6eab6893f80bfc0b644d91ec7edb6d4368d6d6637464cba5150e2.lean/declarations/continuouslinearmap-deriv--fca49f7a197d1e8aecbabd7d.md) | 66 | `result-track:fca49f7a197d1e8aecbabd7d45905219420eaa1699dfc27060142006d5541a6a` |
| 6 | `theorem` | [ContinuousLinearMap.derivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant7b6caf44a1d6eab6893f80bfc0b644d91ec7edb6d4368d6d6637464cba5150e2.lean/declarations/continuouslinearmap-derivwithin--0e9ad7d61da1c0c9039a9445.md) | 69 | `result-track:0e9ad7d61da1c0c9039a944549a54b26a7e41a5fb92a653d21a0ed30248fed95` |
| 7 | `theorem` | [LinearMap.hasDerivAtFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant7b6caf44a1d6eab6893f80bfc0b644d91ec7edb6d4368d6d6637464cba5150e2.lean/declarations/linearmap-hasderivatfilter--310542d3ba16d38e730ac7f2.md) | 81 | `result-track:310542d3ba16d38e730ac7f29a714b20e045a0ea0713d74a5d1a23bdc0e4c7c9` |
| 8 | `theorem` | [LinearMap.hasStrictDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant7b6caf44a1d6eab6893f80bfc0b644d91ec7edb6d4368d6d6637464cba5150e2.lean/declarations/linearmap-hasstrictderivat--d1ae24fc759f4521448eee3a.md) | 84 | `result-track:d1ae24fc759f4521448eee3affecd995df275a30016b6dabcb4481013ae70f5c` |
| 9 | `theorem` | [LinearMap.hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant7b6caf44a1d6eab6893f80bfc0b644d91ec7edb6d4368d6d6637464cba5150e2.lean/declarations/linearmap-hasderivat--21bfd3bccd1934803abaa11c.md) | 87 | `result-track:21bfd3bccd1934803abaa11c0fd4e53d3e2a8de94958edba4ebcdca3530277a0` |
| 10 | `theorem` | [LinearMap.hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant7b6caf44a1d6eab6893f80bfc0b644d91ec7edb6d4368d6d6637464cba5150e2.lean/declarations/linearmap-hasderivwithinat--ba29b37c3c44134b9b5bd41f.md) | 90 | `result-track:ba29b37c3c44134b9b5bd41f1aa09c9c10fccc82810056a2aa4b168008707496` |
| 11 | `theorem` | [LinearMap.deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant7b6caf44a1d6eab6893f80bfc0b644d91ec7edb6d4368d6d6637464cba5150e2.lean/declarations/linearmap-deriv--0d6a3336d94a69159b8a326e.md) | 94 | `result-track:0d6a3336d94a69159b8a326ed605e14ffa40fa9459324065513c4ab766cd33be` |
| 12 | `theorem` | [LinearMap.derivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant7b6caf44a1d6eab6893f80bfc0b644d91ec7edb6d4368d6d6637464cba5150e2.lean/declarations/linearmap-derivwithin--ef55e4d7eb0c74068a4b35dc.md) | 97 | `result-track:ef55e4d7eb0c74068a4b35dc19b565f6654122e59ac42cd4dff3c229429ac0dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
