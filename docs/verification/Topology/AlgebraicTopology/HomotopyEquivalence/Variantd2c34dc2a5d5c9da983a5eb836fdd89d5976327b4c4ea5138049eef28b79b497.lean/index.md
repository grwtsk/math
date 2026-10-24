# Verification target: GRWTSK.Topology.AlgebraicTopology.HomotopyEquivalence.Variantd2c34dc2a5d5c9da983a5eb836fdd89d5976327b4c4ea5138049eef28b79b497

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5711d06b38f5c90bbb5342e8de4abc6b7de0c4d0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/HomotopyEquivalence/Variantd2c34dc2a5d5c9da983a5eb836fdd89d5976327b4c4ea5138049eef28b79b497.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyEquivalence/Variantd2c34dc2a5d5c9da983a5eb836fdd89d5976327b4c4ea5138049eef28b79b497.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyEquivalence/Variantd2c34dc2a5d5c9da983a5eb836fdd89d5976327b4c4ea5138049eef28b79b497.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5711d06b38f5c90bbb5342e8de4abc6b7de0c4d0`.

Source path: `GRWTSK/Topology/AlgebraicTopology/HomotopyEquivalence/Variantd2c34dc2a5d5c9da983a5eb836fdd89d5976327b4c4ea5138049eef28b79b497.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/HomotopyEquivalence/Variantd2c34dc2a5d5c9da983a5eb836fdd89d5976327b4c4ea5138049eef28b79b497.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.DoldKan.Normalized` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [homotopyPToId](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyEquivalence/Variantd2c34dc2a5d5c9da983a5eb836fdd89d5976327b4c4ea5138049eef28b79b497.lean/declarations/homotopyptoid--d0ee60044faff7147a9e4ab2.md) | 31 | `declaration-track:d0ee60044faff7147a9e4ab2951d3e1115590ec6187464c080c86b6dd057bdde` |
| 2 | `def` | [homotopyQToZero](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyEquivalence/Variantd2c34dc2a5d5c9da983a5eb836fdd89d5976327b4c4ea5138049eef28b79b497.lean/declarations/homotopyqtozero--0fae33d5a311121d32df28b7.md) | 43 | `declaration-track:0fae33d5a311121d32df28b78d8bd91ea2617c6735512f01e3270559b5138ee0` |
| 3 | `theorem` | [homotopyPToId_eventually_constant](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyEquivalence/Variantd2c34dc2a5d5c9da983a5eb836fdd89d5976327b4c4ea5138049eef28b79b497.lean/declarations/homotopyptoid-eventually-constant--13edcc5969b978c406ed47db.md) | 46 | `result-track:13edcc5969b978c406ed47dbf47c9a81271fc09919fdc8832120a70963243cd5` |
| 4 | `def` | [homotopyPInftyToId](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyEquivalence/Variantd2c34dc2a5d5c9da983a5eb836fdd89d5976327b4c4ea5138049eef28b79b497.lean/declarations/homotopypinftytoid--53aa7838ff981b64b4aceb06.md) | 57 | `declaration-track:53aa7838ff981b64b4aceb0601cb8fe24b630d84bc9631d8c0403d3219c7ed6c` |
| 5 | `def` | [homotopyEquivNormalizedMooreComplexAlternatingFaceMapComplex](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyEquivalence/Variantd2c34dc2a5d5c9da983a5eb836fdd89d5976327b4c4ea5138049eef28b79b497.lean/declarations/homotopyequivnormalizedmoorecomplexalternatingfacemapcomplex--5dab0ab47d26d4ea65fe642d.md) | 74 | `declaration-track:5dab0ab47d26d4ea65fe642d1f23e6714b91c420937b4f357722a4d05f7dc9f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
