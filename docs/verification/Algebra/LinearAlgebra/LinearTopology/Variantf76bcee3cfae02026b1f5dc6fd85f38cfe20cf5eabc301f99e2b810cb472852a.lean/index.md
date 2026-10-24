# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearTopology.Variantf76bcee3cfae02026b1f5dc6fd85f38cfe20cf5eabc301f99e2b810cb472852a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca7c9f02283c596cf96735ac4338cf5e59d59551",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearTopology/Variantf76bcee3cfae02026b1f5dc6fd85f38cfe20cf5eabc301f99e2b810cb472852a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantf76bcee3cfae02026b1f5dc6fd85f38cfe20cf5eabc301f99e2b810cb472852a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantf76bcee3cfae02026b1f5dc6fd85f38cfe20cf5eabc301f99e2b810cb472852a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca7c9f02283c596cf96735ac4338cf5e59d59551`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearTopology/Variantf76bcee3cfae02026b1f5dc6fd85f38cfe20cf5eabc301f99e2b810cb472852a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearTopology/Variantf76bcee3cfae02026b1f5dc6fd85f38cfe20cf5eabc301f99e2b810cb472852a.lean.json)

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
| 1 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantf76bcee3cfae02026b1f5dc6fd85f38cfe20cf5eabc301f99e2b810cb472852a.lean/declarations/basis--46302a5b2560630eced5704b.md) | 53 | `declaration-track:46302a5b2560630eced5704b2220ae86dd70e9fbf496704abd0d58f0e70b4e15` |
| 2 | `theorem` | [mem_basis_iff](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantf76bcee3cfae02026b1f5dc6fd85f38cfe20cf5eabc301f99e2b810cb472852a.lean/declarations/mem-basis-iff--42fe82378797da95164405d4.md) | 78 | `result-track:42fe82378797da95164405d4261689bd255313234321ea5b19b2750cb450d2df` |
| 3 | `theorem` | [basis_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantf76bcee3cfae02026b1f5dc6fd85f38cfe20cf5eabc301f99e2b810cb472852a.lean/declarations/basis-le--cc35496ba8eb5d9887a70939.md) | 84 | `result-track:cc35496ba8eb5d9887a709393f662c74674609fbd458b8d8b58dec9d8192fabb` |
| 4 | `theorem` | [basis_le_iff](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantf76bcee3cfae02026b1f5dc6fd85f38cfe20cf5eabc301f99e2b810cb472852a.lean/declarations/basis-le-iff--38541e623c6e1cfa2216f5aa.md) | 89 | `result-track:38541e623c6e1cfa2216f5aa6f1a9ed8623b75d50b49a906b39a29809615b6d3` |
| 5 | `lemma` | [hasBasis_nhds_zero](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantf76bcee3cfae02026b1f5dc6fd85f38cfe20cf5eabc301f99e2b810cb472852a.lean/declarations/hasbasis-nhds-zero--08532b16d2a2c9b6dbb547d9.md) | 120 | `result-track:08532b16d2a2c9b6dbb547d96d4ce787dba42dba722b4a8423862f4734992d65` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantf76bcee3cfae02026b1f5dc6fd85f38cfe20cf5eabc301f99e2b810cb472852a.lean/declarations/instance--86a96cfe2d851f8d7b3ce473.md) | 137 | `declaration-track:86a96cfe2d851f8d7b3ce47316eefbfbf07e16c5c7f201280c1c056d2ce069a0` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantf76bcee3cfae02026b1f5dc6fd85f38cfe20cf5eabc301f99e2b810cb472852a.lean/declarations/instance--fad2b6255705bf15b0e4f477.md) | 143 | `declaration-track:fad2b6255705bf15b0e4f477e944afceecb0a6e4dd5692a916bcf3b8f420b89b` |
| 8 | `theorem` | [isTopologicallyNilpotent_of_constantCoeff](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantf76bcee3cfae02026b1f5dc6fd85f38cfe20cf5eabc301f99e2b810cb472852a.lean/declarations/istopologicallynilpotent-of-constantcoeff--b456a87b78550659a5a09c5d.md) | 147 | `result-track:b456a87b78550659a5a09c5d69d540a0d0ca99e6cdcfe74a05b5edc186ee49b1` |
| 9 | `theorem` | [isTopologicallyNilpotent_iff_constantCoeff](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantf76bcee3cfae02026b1f5dc6fd85f38cfe20cf5eabc301f99e2b810cb472852a.lean/declarations/istopologicallynilpotent-iff-constantcoeff--1db219523b01674b58e716ca.md) | 166 | `result-track:1db219523b01674b58e716cabba281a7575b6fcf7be96a6ab6e4cb202b198a00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
