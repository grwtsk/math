# Verification target: GRWTSK.Algebra.LinearAlgebra.Free.Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30641eed758d13db6192f293859da9d12f9be75d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30641eed758d13db6192f293859da9d12f9be75d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.Free` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ModuleCat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [disjoint_span_sum](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean/declarations/disjoint-span-sum--cf78feefe67f4cf47b66c884.md) | 55 | `result-track:cf78feefe67f4cf47b66c884aa7d3fa781128d27fce7a5bed623e74c09298aa6` |
| 2 | `theorem` | [linearIndependent_leftExact](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean/declarations/linearindependent-leftexact--8d7062167231afbb80fbac8c.md) | 75 | `result-track:8d7062167231afbb80fbac8c34f018912447c01fdd987466f993e35b921517d8` |
| 3 | `theorem` | [linearIndependent_shortExact](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean/declarations/linearindependent-shortexact--cfc85e7b60462328b11daf05.md) | 88 | `result-track:cfc85e7b60462328b11daf055bd9b367052b27037ce54549d422ccb171593a56` |
| 4 | `theorem` | [span_exact](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean/declarations/span-exact--c9fe65887f773b7e1dc49835.md) | 111 | `result-track:c9fe65887f773b7e1dc49835c3ef48684947779dd40e3de22298f11bcbfa4a19` |
| 5 | `theorem` | [span_rightExact](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean/declarations/span-rightexact--a206f40fa1d0675d86e6978b.md) | 147 | `result-track:a206f40fa1d0675d86e6978b1af61590e215e9eadef7ab1b5b9523ec091f1f6b` |
| 6 | `def` | [Basis.ofShortExact](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean/declarations/basis-ofshortexact--3981ae2e4f15c8dece286e97.md) | 163 | `declaration-track:3981ae2e4f15c8dece286e974847fcf463f8efe6898086184332547c7eb5f915` |
| 7 | `theorem` | [free_shortExact](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean/declarations/free-shortexact--4c31b53fa807e755c3a87d09.md) | 172 | `result-track:4c31b53fa807e755c3a87d090dff1884c5a784fc3f10068098a5ed2552a6c323` |
| 8 | `theorem` | [free_shortExact_rank_add](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean/declarations/free-shortexact-rank-add--2951f5010c43f28e6e96c92e.md) | 177 | `result-track:2951f5010c43f28e6e96c92e85e09aa6a3f36c605e8e1e8041733f6b91d8fed8` |
| 9 | `theorem` | [free_shortExact_finrank_add](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant1faf4c97e7e3024f83f8f72b30918383696a3edc1fbe1b3d946b7ed5408c320d.lean/declarations/free-shortexact-finrank-add--5b00e83cc34e6aa39d3fb3ba.md) | 186 | `result-track:5b00e83cc34e6aa39d3fb3ba2445db671ff693ae37d8797ee08cb98090d1bd4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
