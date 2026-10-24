# Verification target: GRWTSK.Algebra.LinearAlgebra.Lemmas.Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ceec4d0ccfc26f414e5144000df75aa66378f837",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ceec4d0ccfc26f414e5144000df75aa66378f837`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean.json)

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
| 1 | `theorem` | [RingHom.ker_isRadical_iff_reduced_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/declarations/ringhom-ker-isradical-iff-reduced-of-surjective--d1356c764c33fcac8ad61898.md) | 30 | `result-track:d1356c764c33fcac8ad61898fef7d1ebda9fc34b1b86b1d736cd9d5d28f01055` |
| 2 | `theorem` | [isRadical_iff_span_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/declarations/isradical-iff-span-singleton--0501d3925f31eee87d0cfe15.md) | 36 | `result-track:0501d3925f31eee87d0cfe15230ac4d99cda9059635e38a34c32c5641c33a30d` |
| 3 | `theorem` | [isNilpotent_iff_zero_mem_powers](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/declarations/isnilpotent-iff-zero-mem-powers--a6fa4ce6a9ec052893f89156.md) | 41 | `result-track:a6fa4ce6a9ec052893f89156bdb55d0842b34db92784e9080c69d39c164f52b6` |
| 4 | `def` | [nilradical](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/declarations/nilradical--7326eb0fe614434803096b40.md) | 49 | `declaration-track:7326eb0fe614434803096b40339446f8557dc3e4d44d3111ea699b833e55fa9a` |
| 5 | `theorem` | [mem_nilradical](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/declarations/mem-nilradical--eee5e7ed7d52d785c57f5d86.md) | 52 | `result-track:eee5e7ed7d52d785c57f5d86f9946c731d7394125fbf0f0131d10e083058ea55` |
| 6 | `theorem` | [nilradical_eq_sInf](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/declarations/nilradical-eq-sinf--d9c068ffca578625d2aaff98.md) | 55 | `result-track:d9c068ffca578625d2aaff9813b7779f8669535a3a053aad07ea6bd22d8399d9` |
| 7 | `theorem` | [nilpotent_iff_mem_prime](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/declarations/nilpotent-iff-mem-prime--0b92f41433d98c9646614d24.md) | 59 | `result-track:0b92f41433d98c9646614d24426735e6bf9c1b7f2e59bb3714e704d2208f4cf7` |
| 8 | `theorem` | [nilradical_le_prime](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/declarations/nilradical-le-prime--b402da94868027972691dd79.md) | 63 | `result-track:b402da94868027972691dd798bb30c8510c8bf7126c10d373fdd9d693df6be6f` |
| 9 | `theorem` | [nilradical_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/declarations/nilradical-eq-zero--6ea1e8e4b51c5393ee7b6e0b.md) | 67 | `result-track:6ea1e8e4b51c5393ee7b6e0b5f3243b7643b597e16dac0db5e4c4df19c467c2f` |
| 10 | `theorem` | [nilradical_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/declarations/nilradical-eq-bot-iff--e93b2a73307535e1d83f57c0.md) | 70 | `result-track:e93b2a73307535e1d83f57c0aad2020d727f500df0b24806d716925bf743e422` |
| 11 | `lemma` | [Ideal.radical_span_singleton_eq_span_radical](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/declarations/ideal-radical-span-singleton-eq-span-radical--b8674ea54903d0111c926770.md) | 74 | `result-track:b8674ea54903d0111c926770b293455bb20351759f94912ed3297e6607779176` |
| 12 | `theorem` | [isNilpotent_mulLeft_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/declarations/isnilpotent-mulleft-iff--58bec111252e278cb0bedba3.md) | 93 | `result-track:58bec111252e278cb0bedba341c061a0a59bd45e2058cd4c95e91c2fa6098abc` |
| 13 | `theorem` | [isNilpotent_mulRight_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/declarations/isnilpotent-mulright-iff--e1b15fa6d7956aed09ef4369.md) | 99 | `result-track:e1b15fa6d7956aed09ef4369b54d94229e5f182ffc66745e53d7b3d19ef603a6` |
| 14 | `lemma` | [isNilpotent_toMatrix_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/declarations/isnilpotent-tomatrix-iff--fed2af4e6e25b3aabe4c4b13.md) | 108 | `result-track:fed2af4e6e25b3aabe4c4b13786ff9420e5819f3e5e3a2cc8ecd75be657f767e` |
| 15 | `lemma` | [Matrix.isNilpotent_toLin'_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/declarations/matrix-isnilpotent-tolin-iff--afd28235f3762a9066493e2a.md) | 117 | `result-track:afd28235f3762a9066493e2a2e0a959d0e1653bd1e81ea779537b67c81534c07` |
| 16 | `lemma` | [isNilpotent_restrict_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/declarations/isnilpotent-restrict-of-le--f8accc68f5d8ed1f0dd96afc.md) | 131 | `result-track:f8accc68f5d8ed1f0dd96afcf892f00e5e80d583e2a883e7808af52abc830bc8` |
| 17 | `lemma` | [isNilpotent.restrict](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/declarations/isnilpotent-restrict--18b1ae3a588ae706e3c69227.md) | 144 | `result-track:18b1ae3a588ae706e3c692273ea15fc862f091699b5d01787911b6a70712fb00` |
| 18 | `theorem` | [IsNilpotent.mapQ](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant7c52c5f5e8329cc56e48a4e7697b7abd80af77507a9c453d410ba2726bacc1cf.lean/declarations/isnilpotent-mapq--3870c0015707b5b564bf78af.md) | 156 | `result-track:3870c0015707b5b564bf78afc7ba70bfcd740710173a49a6a31cb24a9d4df75e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
