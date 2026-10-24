# Verification target: GRWTSK.Analysis.SubboxInduction.Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2b752de2f22691366552bed165fcc0f7939602e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean/index.md) · [Full source](../../../../mathematics/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2b752de2f22691366552bed165fcc0f7939602e`.

Source path: `GRWTSK/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Box.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitCenterBox](../../../../mathematics/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean/declarations/splitcenterbox--e2344b67c063f8fa0e79e806.md) | 45 | `declaration-track:e2344b67c063f8fa0e79e806905454ac329a8803547716a11f775c5167a37156` |
| 2 | `theorem` | [mem_splitCenterBox](../../../../mathematics/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean/declarations/mem-splitcenterbox--779990576860376bba3f13d6.md) | 53 | `result-track:779990576860376bba3f13d6f37c9fb3fbf13567568620165e5e80fb8c595111` |
| 3 | `theorem` | [splitCenterBox_le](../../../../mathematics/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean/declarations/splitcenterbox-le--1880e5fde79295f0480af92e.md) | 65 | `result-track:1880e5fde79295f0480af92e2c8d8e9a9a6333daebf5af25dcc7365b04ee5fb2` |
| 4 | `theorem` | [disjoint_splitCenterBox](../../../../mathematics/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean/declarations/disjoint-splitcenterbox--606bb2154b48c559d88fe202.md) | 69 | `result-track:606bb2154b48c559d88fe202dbb3b321d6afb0bc4e02f8aef8c5c273a3731c73` |
| 5 | `theorem` | [injective_splitCenterBox](../../../../mathematics/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean/declarations/injective-splitcenterbox--61bdac8f954ad4675280127b.md) | 78 | `result-track:61bdac8f954ad4675280127b19cf22065275890b3c1b0ba4dd90d7bbf3e485b3` |
| 6 | `theorem` | [exists_mem_splitCenterBox](../../../../mathematics/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean/declarations/exists-mem-splitcenterbox--2f86be071167f6de54d1d002.md) | 83 | `result-track:2f86be071167f6de54d1d0027c88396ddf180cb75822a87197bfe94cd4d4207c` |
| 7 | `def` | [splitCenterBoxEmb](../../../../mathematics/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean/declarations/splitcenterboxemb--02d0f656a3e33ed767e8fd20.md) | 90 | `declaration-track:02d0f656a3e33ed767e8fd20fa812c1e82d3264be454aa0cc76e375ffea3b8d5` |
| 8 | `theorem` | [iUnion_coe_splitCenterBox](../../../../mathematics/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean/declarations/iunion-coe-splitcenterbox--56472ee80e27cfecc3a638b9.md) | 95 | `result-track:56472ee80e27cfecc3a638b9b1218a07f83cb490bd1f15b5fdc2411c4f502828` |
| 9 | `theorem` | [upper_sub_lower_splitCenterBox](../../../../mathematics/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean/declarations/upper-sub-lower-splitcenterbox--15e522f3d0716ff2bfba65fe.md) | 101 | `result-track:15e522f3d0716ff2bfba65feb8152881e41bc9d7e218561c44107d4a86a25601` |
| 10 | `theorem` | [subbox_induction_on'](../../../../mathematics/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean/declarations/subbox-induction-on--73a741bb202e8cba9caf51be.md) | 122 | `result-track:73a741bb202e8cba9caf51be20aa69c42a8d8c365ab8e9ea7e4554abeb335456` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
