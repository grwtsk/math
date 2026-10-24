# Verification target: GRWTSK.Topology.GeneralTopology.Bernstein.Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12b43fc4d1e3762baf04577bda87bf117deb0d50",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12b43fc4d1e3762baf04577bda87bf117deb0d50`.

Source path: `GRWTSK/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Bernstein` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Polynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Compact` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernstein](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean/declarations/bernstein--733bf660880428b7a89bd83e.md) | 56 | `declaration-track:733bf660880428b7a89bd83ebac81f035a8f9d9377a853385316cfb431acc50d` |
| 2 | `theorem` | [bernstein_apply](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean/declarations/bernstein-apply--a2ce8e60ae670427a393562b.md) | 61 | `result-track:a2ce8e60ae670427a393562ba3c6e2ae3109d70315767771ffc91e08b48fb6ec` |
| 3 | `theorem` | [bernstein_nonneg](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean/declarations/bernstein-nonneg--1456affc31f89535ac28d952.md) | 67 | `result-track:1456affc31f89535ac28d9522670dcb56c9fa88d48d572adcaf9146f8b9698c2` |
| 4 | `def` | [evalBernstein](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean/declarations/evalbernstein--5e153380483ec21e7059d338.md) | 79 | `declaration-track:5e153380483ec21e7059d338a759d3f2437f5e89509b90e1d43160159db23d11` |
| 5 | `def` | [z](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean/declarations/z--494409001da35a5c8c04204c.md) | 95 | `declaration-track:494409001da35a5c8c04204cdcf68db1b5b9a68009218651b431fce0f6c90067` |
| 6 | `theorem` | [probability](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean/declarations/probability--989675fce7024aa3111d8515.md) | 108 | `result-track:989675fce7024aa3111d8515213817f0dcc18a9f6ea4ad7a8d37813bc32ee44c` |
| 7 | `theorem` | [variance](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean/declarations/variance--cf96a21a9239724c505fd85d.md) | 115 | `result-track:cf96a21a9239724c505fd85dbf8a7a8bfc5c474c518a4c408948245e1e3dd6a9` |
| 8 | `def` | [bernsteinApproximation](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean/declarations/bernsteinapproximation--c24bc061d7dcf388820739cf.md) | 144 | `declaration-track:c24bc061d7dcf388820739cf66b3dbe56ec30c862316cef3a254360c307152d3` |
| 9 | `theorem` | [apply](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean/declarations/apply--61424bb88d6f63ba93d21c4d.md) | 166 | `result-track:61424bb88d6f63ba93d21c4d1cb4990c4c186ae81f71e28c199c9e4bd765d7cc` |
| 10 | `def` | [δ](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean/declarations/anonymous--15de865ce80ab661895b4a0a.md) | 173 | `declaration-track:15de865ce80ab661895b4a0a4e36a25589e3b0bd0a826312a519cc47e0482d6c` |
| 11 | `theorem` | [δ_pos](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean/declarations/pos--6e6560213b3a7bb9df06f1b9.md) | 177 | `result-track:6e6560213b3a7bb9df06f1b9fa498c96031487eb7a679385f2648aff7f7c8538` |
| 12 | `def` | [S](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean/declarations/s--982b6430b3ce9adf5088d9fd.md) | 183 | `declaration-track:982b6430b3ce9adf5088d9fd8d6b985e7a9d0f833b7a557dc5b3fc0ba00ebfb8` |
| 13 | `theorem` | [lt_of_mem_S](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean/declarations/lt-of-mem-s--64cd35376a816e15aa8f7f59.md) | 189 | `result-track:64cd35376a816e15aa8f7f59cad95ef78411b1a97efdeda53c9d992b57f09e85` |
| 14 | `theorem` | [le_of_mem_S_compl](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean/declarations/le-of-mem-s-compl--304d373712e813882aa8e9ee.md) | 199 | `result-track:304d373712e813882aa8e9ee6bfc6bec1278bbfb8f65b3083ed0f576adeb550d` |
| 15 | `theorem` | [bernsteinApproximation_uniform](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean/declarations/bernsteinapproximation-uniform--328b171c594ee8c310ad5a80.md) | 227 | `result-track:328b171c594ee8c310ad5a802d51720d9f3583ebd2173bee08d241e6882cae75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
