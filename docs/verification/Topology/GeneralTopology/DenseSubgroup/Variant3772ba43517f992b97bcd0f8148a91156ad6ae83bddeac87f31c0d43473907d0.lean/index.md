# Verification target: GRWTSK.Topology.GeneralTopology.DenseSubgroup.Variant3772ba43517f992b97bcd0f8148a91156ad6ae83bddeac87f31c0d43473907d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4c22c319a765d66fe1690f0470248ebf07938d9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DenseSubgroup/Variant3772ba43517f992b97bcd0f8148a91156ad6ae83bddeac87f31c0d43473907d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DenseSubgroup/Variant3772ba43517f992b97bcd0f8148a91156ad6ae83bddeac87f31c0d43473907d0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DenseSubgroup/Variant3772ba43517f992b97bcd0f8148a91156ad6ae83bddeac87f31c0d43473907d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4c22c319a765d66fe1690f0470248ebf07938d9`.

Source path: `GRWTSK/Topology/GeneralTopology/DenseSubgroup/Variant3772ba43517f992b97bcd0f8148a91156ad6ae83bddeac87f31c0d43473907d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DenseSubgroup/Variant3772ba43517f992b97bcd0f8148a91156ad6ae83bddeac87f31c0d43473907d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Irrational` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.AddCircle` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Archimedean` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dense_addSubgroupClosure_pair_iff](../../../../../mathematics/Topology/GeneralTopology/DenseSubgroup/Variant3772ba43517f992b97bcd0f8148a91156ad6ae83bddeac87f31c0d43473907d0.lean/declarations/dense-addsubgroupclosure-pair-iff--e5df0efbad8fbb1c12117925.md) | 34 | `result-track:e5df0efbad8fbb1c121179256c248e08a482e157e17f0318fe99003bae803570` |
| 2 | `theorem` | [denseRange_zsmul_coe_iff](../../../../../mathematics/Topology/GeneralTopology/DenseSubgroup/Variant3772ba43517f992b97bcd0f8148a91156ad6ae83bddeac87f31c0d43473907d0.lean/declarations/denserange-zsmul-coe-iff--25f4e8d774fa4245e4ed3887.md) | 59 | `result-track:25f4e8d774fa4245e4ed3887d60d59045a2cc3351348451354a0c12539c90a6c` |
| 3 | `theorem` | [denseRange_zsmul_iff](../../../../../mathematics/Topology/GeneralTopology/DenseSubgroup/Variant3772ba43517f992b97bcd0f8148a91156ad6ae83bddeac87f31c0d43473907d0.lean/declarations/denserange-zsmul-iff--1642e229fd4c7373c8842ba7.md) | 69 | `result-track:1642e229fd4c7373c8842ba795600fc89cef3de446ef6b88a34ccdf959478a2e` |
| 4 | `theorem` | [dense_addSubgroup_iff_ne_zmultiples](../../../../../mathematics/Topology/GeneralTopology/DenseSubgroup/Variant3772ba43517f992b97bcd0f8148a91156ad6ae83bddeac87f31c0d43473907d0.lean/declarations/dense-addsubgroup-iff-ne-zmultiples--92e2fd58bf4409d67bc66eee.md) | 76 | `result-track:92e2fd58bf4409d67bc66eee792b0a5e444474f83d10a4c93e7eb3bea06b0e80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
