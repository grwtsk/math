# Verification target: GRWTSK.Algebra.CommutativeAlgebra.UniqueFactorization.Variantd5c14827a5213744b3e52c0ed7b62f87dd8fb0a067bf56225258640246b60950

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bb83d9ee95d75fe21a92648874bdd073188b94f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/UniqueFactorization/Variantd5c14827a5213744b3e52c0ed7b62f87dd8fb0a067bf56225258640246b60950.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variantd5c14827a5213744b3e52c0ed7b62f87dd8fb0a067bf56225258640246b60950.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variantd5c14827a5213744b3e52c0ed7b62f87dd8fb0a067bf56225258640246b60950.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bb83d9ee95d75fe21a92648874bdd073188b94f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/UniqueFactorization/Variantd5c14827a5213744b3e52c0ed7b62f87dd8fb0a067bf56225258640246b60950.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/UniqueFactorization/Variantd5c14827a5213744b3e52c0ed7b62f87dd8fb0a067bf56225258640246b60950.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variantd5c14827a5213744b3e52c0ed7b62f87dd8fb0a067bf56225258640246b60950.lean/declarations/instance--f96573d981b1020814702150.md) | 45 | `declaration-track:f96573d981b10208147021500ad3f636f9950f5ae56d1948c2e54c00dc1c18d3` |
| 2 | `theorem` | [exists_irreducible_of_degree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variantd5c14827a5213744b3e52c0ed7b62f87dd8fb0a067bf56225258640246b60950.lean/declarations/exists-irreducible-of-degree-pos--fe571c8878bd701f74d9165c.md) | 76 | `result-track:fe571c8878bd701f74d9165c123a973d5d70adc65b4dbba36c78c7eb0468a2c3` |
| 3 | `theorem` | [exists_irreducible_of_natDegree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variantd5c14827a5213744b3e52c0ed7b62f87dd8fb0a067bf56225258640246b60950.lean/declarations/exists-irreducible-of-natdegree-pos--91eb1b9e9794cb7fe30e035b.md) | 80 | `result-track:91eb1b9e9794cb7fe30e035bd8a46150156b3e174ded8f7d540d976f093b08eb` |
| 4 | `theorem` | [exists_irreducible_of_natDegree_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variantd5c14827a5213744b3e52c0ed7b62f87dd8fb0a067bf56225258640246b60950.lean/declarations/exists-irreducible-of-natdegree-ne-zero--bf6903a8e5e96c7ea1f7d06e.md) | 85 | `result-track:bf6903a8e5e96c7ea1f7d06e81ff94e69834d8b928169c7cbcd73fe32db34961` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variantd5c14827a5213744b3e52c0ed7b62f87dd8fb0a067bf56225258640246b60950.lean/declarations/instance--f83dd434601a30088f5a99f6.md) | 99 | `declaration-track:f83dd434601a30088f5a99f6e67a9a10e2c77c039b544b04c6797947e6be51da` |
| 6 | `def` | [fintypeSubtypeMonicDvd](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variantd5c14827a5213744b3e52c0ed7b62f87dd8fb0a067bf56225258640246b60950.lean/declarations/fintypesubtypemonicdvd--4631b608fa7f6a6fa73faf07.md) | 108 | `declaration-track:4631b608fa7f6a6fa73faf07a74c7a69960033db7141aff84ad6b68d2cd86177` |
| 7 | `theorem` | [uniqueFactorizationMonoid_of_fintype](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variantd5c14827a5213744b3e52c0ed7b62f87dd8fb0a067bf56225258640246b60950.lean/declarations/uniquefactorizationmonoid-of-fintype--bff7634007cfdb4f3597e938.md) | 125 | `result-track:bff7634007cfdb4f3597e938aeb0d6d49f366a689ba3a3e812a929ce7affbba5` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variantd5c14827a5213744b3e52c0ed7b62f87dd8fb0a067bf56225258640246b60950.lean/declarations/instance--e182a5673c0414f3437d5cd1.md) | 137 | `declaration-track:e182a5673c0414f3437d5cd103b57a6c206e8a78a98bb1c229f46f33db7f012a` |
| 9 | `theorem` | [Polynomial.exists_monic_irreducible_factor](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variantd5c14827a5213744b3e52c0ed7b62f87dd8fb0a067bf56225258640246b60950.lean/declarations/polynomial-exists-monic-irreducible-factor--9d56f070bf697c79dc70c292.md) | 158 | `result-track:9d56f070bf697c79dc70c292e4522e3678191eb44c44847422b1c3fca1c2bd8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
