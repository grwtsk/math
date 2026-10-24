# Verification target: GRWTSK.Algebra.LinearAlgebra.Average.Variantf5969800af4cc3f65e417e397de1d52281a807c5f355b7fcf04f1641c0117d3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5696fdcfd31aca277e94912e683d9280f29b8e2c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Average/Variantf5969800af4cc3f65e417e397de1d52281a807c5f355b7fcf04f1641c0117d3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantf5969800af4cc3f65e417e397de1d52281a807c5f355b7fcf04f1641c0117d3b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantf5969800af4cc3f65e417e397de1d52281a807c5f355b7fcf04f1641c0117d3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5696fdcfd31aca277e94912e683d9280f29b8e2c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Average/Variantf5969800af4cc3f65e417e397de1d52281a807c5f355b7fcf04f1641c0117d3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Average/Variantf5969800af4cc3f65e417e397de1d52281a807c5f355b7fcf04f1641c0117d3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.BirkhoffSum.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [birkhoffAverage](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantf5969800af4cc3f65e417e397de1d52281a807c5f355b7fcf04f1641c0117d3b.lean/declarations/birkhoffaverage--26a96e96ec25e24888211afb.md) | 42 | `declaration-track:26a96e96ec25e24888211afb8585bc89fa0a1e3bf0d16c946878e89cf2ba5483` |
| 2 | `theorem` | [birkhoffAverage_zero](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantf5969800af4cc3f65e417e397de1d52281a807c5f355b7fcf04f1641c0117d3b.lean/declarations/birkhoffaverage-zero--59f200016067bee39b121907.md) | 44 | `result-track:59f200016067bee39b121907a4ab10f2cfa496d970a29fd40cc44cf65627ea11` |
| 3 | `theorem` | [birkhoffAverage_zero'](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantf5969800af4cc3f65e417e397de1d52281a807c5f355b7fcf04f1641c0117d3b.lean/declarations/birkhoffaverage-zero--eba5e19bbc8d87d4908768e2.md) | 47 | `result-track:eba5e19bbc8d87d4908768e2a83d96e97eda35fe305efaf39dd44f23876869f4` |
| 4 | `theorem` | [birkhoffAverage_one](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantf5969800af4cc3f65e417e397de1d52281a807c5f355b7fcf04f1641c0117d3b.lean/declarations/birkhoffaverage-one--5e2c9cbdfceb9e0817def1b3.md) | 50 | `result-track:5e2c9cbdfceb9e0817def1b35e07e6092af57a4a6878c3e0a403d2b192e5b769` |
| 5 | `theorem` | [birkhoffAverage_one'](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantf5969800af4cc3f65e417e397de1d52281a807c5f355b7fcf04f1641c0117d3b.lean/declarations/birkhoffaverage-one--fd214a0733df4f9f9c387a85.md) | 54 | `result-track:fd214a0733df4f9f9c387a85d281437a742f7c5a2290d4c02a9e6394eccd9181` |
| 6 | `theorem` | [map_birkhoffAverage](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantf5969800af4cc3f65e417e397de1d52281a807c5f355b7fcf04f1641c0117d3b.lean/declarations/map-birkhoffaverage--48c6a2e7972283af85cce73c.md) | 57 | `result-track:48c6a2e7972283af85cce73c8039b6f8e91f8b8d556d59af99b5d6173fd8a7e4` |
| 7 | `theorem` | [birkhoffAverage_congr_ring](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantf5969800af4cc3f65e417e397de1d52281a807c5f355b7fcf04f1641c0117d3b.lean/declarations/birkhoffaverage-congr-ring--bcd53c9e19f2e2e92d493735.md) | 63 | `result-track:bcd53c9e19f2e2e92d4937354c8f5b48d03b72eff38919c811b5308144b415ed` |
| 8 | `theorem` | [birkhoffAverage_congr_ring'](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantf5969800af4cc3f65e417e397de1d52281a807c5f355b7fcf04f1641c0117d3b.lean/declarations/birkhoffaverage-congr-ring--4db9ab857ae10eacfd8c0bde.md) | 68 | `result-track:4db9ab857ae10eacfd8c0bde7324e255c376514a37de7c7dcd3340e21909b7ff` |
| 9 | `theorem` | [Function.IsFixedPt.birkhoffAverage_eq](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantf5969800af4cc3f65e417e397de1d52281a807c5f355b7fcf04f1641c0117d3b.lean/declarations/function-isfixedpt-birkhoffaverage-eq--4c226e1099d1c95a4eeee5df.md) | 72 | `result-track:4c226e1099d1c95a4eeee5df72fc7380db4becf1085d4f481880e9bb0e850548` |
| 10 | `theorem` | [birkhoffAverage_apply_sub_birkhoffAverage](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantf5969800af4cc3f65e417e397de1d52281a807c5f355b7fcf04f1641c0117d3b.lean/declarations/birkhoffaverage-apply-sub-birkhoffaverage--7752b94aa9c7ac4d6a8d3051.md) | 82 | `result-track:7752b94aa9c7ac4d6a8d3051ccb11717d25053694b75223aa892fc8a490d27dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
