# Verification target: GRWTSK.Algebra.LinearAlgebra.Star.Variant036dc17ce2dedc6b23be79d8d5a24c881c95b8dbb03f050f2c8a0a088846f946

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf41a99b81fbf3c7e78de47fd870fc85ea03884d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Star/Variant036dc17ce2dedc6b23be79d8d5a24c881c95b8dbb03f050f2c8a0a088846f946.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant036dc17ce2dedc6b23be79d8d5a24c881c95b8dbb03f050f2c8a0a088846f946.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant036dc17ce2dedc6b23be79d8d5a24c881c95b8dbb03f050f2c8a0a088846f946.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf41a99b81fbf3c7e78de47fd870fc85ea03884d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Star/Variant036dc17ce2dedc6b23be79d8d5a24c881c95b8dbb03f050f2c8a0a088846f946.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Star/Variant036dc17ce2dedc6b23be79d8d5a24c881c95b8dbb03f050f2c8a0a088846f946.lean.json)

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
| 1 | `instance` | [instStarRing](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant036dc17ce2dedc6b23be79d8d5a24c881c95b8dbb03f050f2c8a0a088846f946.lean/declarations/inststarring--30bd856106f69698e1b11913.md) | 36 | `declaration-track:30bd856106f69698e1b119135093f7694e73ba057dbed47909fabdf7e949a885` |
| 2 | `theorem` | [star_def](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant036dc17ce2dedc6b23be79d8d5a24c881c95b8dbb03f050f2c8a0a088846f946.lean/declarations/star-def--bef45d8eec1f7f009d3e8dfe.md) | 43 | `result-track:bef45d8eec1f7f009d3e8dfe80e2dde00609cab2596940d0ddf6b8e11ab679f7` |
| 3 | `theorem` | [star_def'](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant036dc17ce2dedc6b23be79d8d5a24c881c95b8dbb03f050f2c8a0a088846f946.lean/declarations/star-def--965fa6665ccb6fd315a75258.md) | 46 | `result-track:965fa6665ccb6fd315a75258fa975d691967798d4d9cb8a92bfe9bdd0696cf70` |
| 4 | `theorem` | [star_ι](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant036dc17ce2dedc6b23be79d8d5a24c881c95b8dbb03f050f2c8a0a088846f946.lean/declarations/star--f708af1ad0a766377ae7078a.md) | 50 | `result-track:f708af1ad0a766377ae7078a5280044a20db7abc0f6f9d2dbe2617ac17e9a006` |
| 5 | `theorem` | [star_smul](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant036dc17ce2dedc6b23be79d8d5a24c881c95b8dbb03f050f2c8a0a088846f946.lean/declarations/star-smul--00308cf87a72b761d6395ea3.md) | 56 | `result-track:00308cf87a72b761d6395ea322a41f2b0fd646dfaac5aaf738bdbb2bdad1a665` |
| 6 | `theorem` | [star_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant036dc17ce2dedc6b23be79d8d5a24c881c95b8dbb03f050f2c8a0a088846f946.lean/declarations/star-algebramap--2c4f5823d4f0eb0201312426.md) | 60 | `result-track:2c4f5823d4f0eb0201312426a10ef1293932dd65b676eaee826080c03b4f853c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
