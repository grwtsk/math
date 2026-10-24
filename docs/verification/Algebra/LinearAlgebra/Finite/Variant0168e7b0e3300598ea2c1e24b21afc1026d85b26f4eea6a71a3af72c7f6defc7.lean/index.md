# Verification target: GRWTSK.Algebra.LinearAlgebra.Finite.Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e61ba2fdd336c4e6ce4799224c21446ee1e63c10",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e61ba2fdd336c4e6ce4799224c21446ee1e63c10`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean.json)

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
| 1 | `theorem` | [exists_fg_le_eq_rTensor_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean/declarations/exists-fg-le-eq-rtensor-subtype--b908c9d52e33b9d0ef3fac25.md) | 42 | `result-track:b908c9d52e33b9d0ef3fac25703df21c28e2598d6a419e8fa623a678b972c6ba` |
| 2 | `theorem` | [exists_fg_le_subset_range_rTensor_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean/declarations/exists-fg-le-subset-range-rtensor-subtype--e8b087c2d17976177445a526.md) | 54 | `result-track:e8b087c2d17976177445a52611f1b1a36e571d6f987e793cb4a1927c07e2da5a` |
| 3 | `theorem` | [exists_fg_le_eq_rTensor_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean/declarations/exists-fg-le-eq-rtensor-inclusion--02963b168742203d11aba11a.md) | 65 | `result-track:02963b168742203d11aba11afa30dc96a71e2aa8ccaa187b40f57e9c50dcd99b` |
| 4 | `theorem` | [exists_fg_le_subset_range_rTensor_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean/declarations/exists-fg-le-subset-range-rtensor-inclusion--751280d150e14b12bd8495fd.md) | 72 | `result-track:751280d150e14b12bd8495fdfade394f106511930ce3b9f9dd4ef0e90101c315` |
| 5 | `instance` | [Module.Finite.base_change](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean/declarations/module-finite-base-change--71cd080378e1048d1350921f.md) | 87 | `declaration-track:71cd080378e1048d1350921fb0517adf60870283052f190b0e5014645474f259` |
| 6 | `instance` | [Module.Finite.tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean/declarations/module-finite-tensorproduct--2b9a9cad00dbdfd23a97c753.md) | 101 | `declaration-track:2b9a9cad00dbdfd23a97c7539b6a6528a321157fbfd8f9476c24c6113c60fd81` |
| 7 | `lemma` | [Module.exists_isPrincipal_quotient_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean/declarations/module-exists-isprincipal-quotient-of-finite--663cd6cbc20a86101caf0f4b.md) | 112 | `result-track:663cd6cbc20a86101caf0f4bf2f41e8a45f0cfa7fb0f27a7c4a1b118303ef633` |
| 8 | `lemma` | [Module.exists_surjective_quotient_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean/declarations/module-exists-surjective-quotient-of-finite--7c21b580f8b4633de3beb070.md) | 134 | `result-track:7c21b580f8b4633de3beb0709c6ad999d42eb9153dc2580a97972bc64a911f56` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean/declarations/instance--8537f2027035a5669186fbcd.md) | 146 | `declaration-track:8537f2027035a5669186fbcdab8908705ead13043c6cc56d2f15271c23f07915` |
| 10 | `theorem` | [Subalgebra.finite_sup](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean/declarations/subalgebra-finite-sup--0d39935256a1a632c84e1288.md) | 157 | `result-track:0d39935256a1a632c84e12885eca8dc191c85d510cb15513f01454e5a0d84464` |
| 11 | `lemma` | [RingHom.Finite.tensorProductMap_id](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean/declarations/ringhom-finite-tensorproductmap-id--817b407fbf7c9a244d4d515f.md) | 164 | `result-track:817b407fbf7c9a244d4d515f2c6fc6c782b58fef5513a6baf1f3c6082a9c963f` |
| 12 | `lemma` | [RingHom.Finite.tensorProductMap](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean/declarations/ringhom-finite-tensorproductmap--f9a627e8b0d6f4e6ff4fa342.md) | 179 | `result-track:f9a627e8b0d6f4e6ff4fa3421d827abeefc9c6ebca6d13ce6be2b72128f345f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
