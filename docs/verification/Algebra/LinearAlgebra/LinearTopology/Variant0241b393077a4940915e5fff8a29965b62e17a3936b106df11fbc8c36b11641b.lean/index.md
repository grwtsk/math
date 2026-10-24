# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearTopology.Variant0241b393077a4940915e5fff8a29965b62e17a3936b106df11fbc8c36b11641b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4286e89bf861e6d490b512db067a4155db76158",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearTopology/Variant0241b393077a4940915e5fff8a29965b62e17a3936b106df11fbc8c36b11641b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant0241b393077a4940915e5fff8a29965b62e17a3936b106df11fbc8c36b11641b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant0241b393077a4940915e5fff8a29965b62e17a3936b106df11fbc8c36b11641b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4286e89bf861e6d490b512db067a4155db76158`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearTopology/Variant0241b393077a4940915e5fff8a29965b62e17a3936b106df11fbc8c36b11641b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearTopology/Variant0241b393077a4940915e5fff8a29965b62e17a3936b106df11fbc8c36b11641b.lean.json)

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
| 1 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant0241b393077a4940915e5fff8a29965b62e17a3936b106df11fbc8c36b11641b.lean/declarations/basis--5ddfcd2de8a165ba7ac1245b.md) | 61 | `declaration-track:5ddfcd2de8a165ba7ac1245b4a9109e6a2d5ff4dc1a0c9e5d8ec3152f46320d7` |
| 2 | `theorem` | [mem_basis_iff](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant0241b393077a4940915e5fff8a29965b62e17a3936b106df11fbc8c36b11641b.lean/declarations/mem-basis-iff--c379698c57910ccc72384ae1.md) | 86 | `result-track:c379698c57910ccc72384ae124b64e866af1b34e1f8f135a73e49a41dfa7860d` |
| 3 | `theorem` | [basis_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant0241b393077a4940915e5fff8a29965b62e17a3936b106df11fbc8c36b11641b.lean/declarations/basis-le--52ceab78a40fcd84f4a977a7.md) | 92 | `result-track:52ceab78a40fcd84f4a977a72d2d6e6f7adb16056a84c505cbae8898dcfb13f4` |
| 4 | `theorem` | [basis_le_iff](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant0241b393077a4940915e5fff8a29965b62e17a3936b106df11fbc8c36b11641b.lean/declarations/basis-le-iff--1090f1998272907e8b8ad6bd.md) | 97 | `result-track:1090f1998272907e8b8ad6bd9049af691a61062455d129d66311517d06427323` |
| 5 | `lemma` | [hasBasis_nhds_zero](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant0241b393077a4940915e5fff8a29965b62e17a3936b106df11fbc8c36b11641b.lean/declarations/hasbasis-nhds-zero--00cb40024ef8a8be54b91faf.md) | 128 | `result-track:00cb40024ef8a8be54b91faf2944e37a3b71831f4ad052e113046d408a71398d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant0241b393077a4940915e5fff8a29965b62e17a3936b106df11fbc8c36b11641b.lean/declarations/instance--f8c6cc4a22cc454f65ab5478.md) | 145 | `declaration-track:f8c6cc4a22cc454f65ab547891bd09b81acd3675a1805d283b00196adb7dc18b` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant0241b393077a4940915e5fff8a29965b62e17a3936b106df11fbc8c36b11641b.lean/declarations/instance--ba443ab0a77ab35e482a6dd0.md) | 151 | `declaration-track:ba443ab0a77ab35e482a6dd050c8e69dc2b01d8bda87e008e7dc9c96a59ebe66` |
| 8 | `theorem` | [isTopologicallyNilpotent_of_constantCoeff](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant0241b393077a4940915e5fff8a29965b62e17a3936b106df11fbc8c36b11641b.lean/declarations/istopologicallynilpotent-of-constantcoeff--103b12ac0669e1113a98f8a0.md) | 155 | `result-track:103b12ac0669e1113a98f8a05c83c119090a62fe0cc1538a4e25529971d02a1d` |
| 9 | `theorem` | [isTopologicallyNilpotent_iff_constantCoeff](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant0241b393077a4940915e5fff8a29965b62e17a3936b106df11fbc8c36b11641b.lean/declarations/istopologicallynilpotent-iff-constantcoeff--dda6ffc32ed7de802e5799e2.md) | 174 | `result-track:dda6ffc32ed7de802e5799e24df2378796560cb7357796390f52a205094ff10f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
