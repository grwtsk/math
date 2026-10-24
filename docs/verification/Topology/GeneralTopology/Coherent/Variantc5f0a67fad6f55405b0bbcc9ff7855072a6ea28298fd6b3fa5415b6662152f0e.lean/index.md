# Verification target: GRWTSK.Topology.GeneralTopology.Coherent.Variantc5f0a67fad6f55405b0bbcc9ff7855072a6ea28298fd6b3fa5415b6662152f0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4004d63f34492a732fdab9f81902120c9a912cc",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Coherent/Variantc5f0a67fad6f55405b0bbcc9ff7855072a6ea28298fd6b3fa5415b6662152f0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Coherent/Variantc5f0a67fad6f55405b0bbcc9ff7855072a6ea28298fd6b3fa5415b6662152f0e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Coherent/Variantc5f0a67fad6f55405b0bbcc9ff7855072a6ea28298fd6b3fa5415b6662152f0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4004d63f34492a732fdab9f81902120c9a912cc`.

Source path: `GRWTSK/Topology/GeneralTopology/Coherent/Variantc5f0a67fad6f55405b0bbcc9ff7855072a6ea28298fd6b3fa5415b6662152f0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Coherent/Variantc5f0a67fad6f55405b0bbcc9ff7855072a6ea28298fd6b3fa5415b6662152f0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Defs.Sequences` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Compact` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Coherent/Variantc5f0a67fad6f55405b0bbcc9ff7855072a6ea28298fd6b3fa5415b6662152f0e.lean/declarations/isopen-iff--3f631cea2ab928818f18ffac.md) | 50 | `result-track:3f631cea2ab928818f18ffac4f1ede9c72c00c96267667c664ed39a1a0168d6b` |
| 2 | `theorem` | [isClosed_iff](../../../../../mathematics/Topology/GeneralTopology/Coherent/Variantc5f0a67fad6f55405b0bbcc9ff7855072a6ea28298fd6b3fa5415b6662152f0e.lean/declarations/isclosed-iff--ec86af3478e05456219fa1d8.md) | 54 | `result-track:ec86af3478e05456219fa1d8e574a298c662e0436a70b5b687f07dd14755694d` |
| 3 | `theorem` | [continuous_iff](../../../../../mathematics/Topology/GeneralTopology/Coherent/Variantc5f0a67fad6f55405b0bbcc9ff7855072a6ea28298fd6b3fa5415b6662152f0e.lean/declarations/continuous-iff--28bb0ad76a06cfb7242a0377.md) | 58 | `result-track:28bb0ad76a06cfb7242a03777f0c52f5e19aab975cb05a680ab51c65bb9db37b` |
| 4 | `theorem` | [of_continuous_prop](../../../../../mathematics/Topology/GeneralTopology/Coherent/Variantc5f0a67fad6f55405b0bbcc9ff7855072a6ea28298fd6b3fa5415b6662152f0e.lean/declarations/of-continuous-prop--6d3a04f353db5999b34c4ee8.md) | 64 | `result-track:6d3a04f353db5999b34c4ee853804d3153565017b0c9c57461f71c561a10707b` |
| 5 | `theorem` | [of_isClosed](../../../../../mathematics/Topology/GeneralTopology/Coherent/Variantc5f0a67fad6f55405b0bbcc9ff7855072a6ea28298fd6b3fa5415b6662152f0e.lean/declarations/of-isclosed--a4e2212d191d595cb98c2637.md) | 70 | `result-track:a4e2212d191d595cb98c263751e4f1052dc20290d64209e30e8a251cc6599b10` |
| 6 | `theorem` | [enlarge](../../../../../mathematics/Topology/GeneralTopology/Coherent/Variantc5f0a67fad6f55405b0bbcc9ff7855072a6ea28298fd6b3fa5415b6662152f0e.lean/declarations/enlarge--f28b58a3e4082513eb4a1c68.md) | 74 | `result-track:f28b58a3e4082513eb4a1c682896bc36c1762ef7d87203c6424a708736a4082a` |
| 7 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/Coherent/Variantc5f0a67fad6f55405b0bbcc9ff7855072a6ea28298fd6b3fa5415b6662152f0e.lean/declarations/mono--2311eefe27f18f7f5bfc90d3.md) | 79 | `result-track:2311eefe27f18f7f5bfc90d32e50e33d3e45736caaf94642e0b47df1660afd92` |
| 8 | `lemma` | [of_seq](../../../../../mathematics/Topology/GeneralTopology/Coherent/Variantc5f0a67fad6f55405b0bbcc9ff7855072a6ea28298fd6b3fa5415b6662152f0e.lean/declarations/of-seq--2ad46c8f03f22fbdcdee59f6.md) | 86 | `result-track:2ad46c8f03f22fbdcdee59f64eace34ce638ce687144feae75397e294359571b` |
| 9 | `lemma` | [isCompact_of_seq](../../../../../mathematics/Topology/GeneralTopology/Coherent/Variantc5f0a67fad6f55405b0bbcc9ff7855072a6ea28298fd6b3fa5415b6662152f0e.lean/declarations/iscompact-of-seq--857eebd1ced557ff3d6996c7.md) | 98 | `result-track:857eebd1ced557ff3d6996c7f52d517710e99f9d35a39cb4742bbd906109a535` |
| 10 | `lemma` | [of_nhds](../../../../../mathematics/Topology/GeneralTopology/Coherent/Variantc5f0a67fad6f55405b0bbcc9ff7855072a6ea28298fd6b3fa5415b6662152f0e.lean/declarations/of-nhds--c00791beda876a48ddb9380b.md) | 103 | `result-track:c00791beda876a48ddb9380b29b479943813025c99f61b3d4f5a0f0a8091be36` |
| 11 | `lemma` | [isCompact_of_weaklyLocallyCompact](../../../../../mathematics/Topology/GeneralTopology/Coherent/Variantc5f0a67fad6f55405b0bbcc9ff7855072a6ea28298fd6b3fa5415b6662152f0e.lean/declarations/iscompact-of-weaklylocallycompact--8973e8c9e4e475a3d6360298.md) | 109 | `result-track:8973e8c9e4e475a3d6360298454fe5cfc3bd3f34dd1f81fa7618a8fd02c67f1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
