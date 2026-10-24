# Verification target: GRWTSK.Algebra.LinearAlgebra.Maschke.Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8bc1536664f273f582c7bd2edf8baf67b5aa46c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8bc1536664f273f582c7bd2edf8baf67b5aa46c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean.json)

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
| 1 | `def` | [conjugate](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean/declarations/conjugate--4c5ddc9b5eb064bad81ef7bb.md) | 76 | `declaration-track:4c5ddc9b5eb064bad81ef7bba43038a3c4cb109101fb458a30af13f177f65762` |
| 2 | `theorem` | [conjugate_apply](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean/declarations/conjugate-apply--cbcf02171f7f8e6ffdf84b0c.md) | 79 | `result-track:cbcf02171f7f8e6ffdf84b0cb0733e48db1a78e02c52b08c878db52bd42029f8` |
| 3 | `theorem` | [conjugate_i](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean/declarations/conjugate-i--56628880e7e59bc91f33f2c3.md) | 87 | `result-track:56628880e7e59bc91f33f2c3e4069cc5bd8586b22289f3e2ae5a9ff17acd277b` |
| 4 | `def` | [sumOfConjugates](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean/declarations/sumofconjugates--36eedaa47b75ca17b0824df1.md) | 100 | `declaration-track:36eedaa47b75ca17b0824df1f08d0e12c7cb1ab40845eb1d339e6c93a5e1fc42` |
| 5 | `lemma` | [sumOfConjugates_apply](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean/declarations/sumofconjugates-apply--009a65aeeec9e3455024673a.md) | 103 | `result-track:009a65aeeec9e3455024673a6acc0e594994410e1b4f7b0f8ba284b445ef0505` |
| 6 | `def` | [sumOfConjugatesEquivariant](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean/declarations/sumofconjugatesequivariant--b07def272ba12b934c797eef.md) | 108 | `declaration-track:b07def272ba12b934c797eef03bd14231250c9b3a4ec9d42d93b85703878c742` |
| 7 | `theorem` | [sumOfConjugatesEquivariant_apply](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean/declarations/sumofconjugatesequivariant-apply--8852d81e36bad76e23bea8e9.md) | 114 | `result-track:8852d81e36bad76e23bea8e9728c6511eb85dfe3600c667e44307e7e55bc37f3` |
| 8 | `def` | [equivariantProjection](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean/declarations/equivariantprojection--e68de1852ff2a9c92d663079.md) | 123 | `declaration-track:e68de1852ff2a9c92d6630791c4e0925f2341020de8af29c478bb3dd6b5f3fd5` |
| 9 | `theorem` | [equivariantProjection_apply](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean/declarations/equivariantprojection-apply--bf1c42da845cd909e39e052a.md) | 126 | `result-track:bf1c42da845cd909e39e052a072c2e03169a9e7fcbad814ac10bd9b6d60f8068` |
| 10 | `theorem` | [equivariantProjection_condition](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean/declarations/equivariantprojection-condition--72a9292d948a5861c67cbd08.md) | 131 | `result-track:72a9292d948a5861c67cbd08f4cbd9603872be4b842a68168a745e83e13e43b7` |
| 11 | `theorem` | [exists_leftInverse_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean/declarations/exists-leftinverse-of-injective--e355c6a2c4468aae1ad79f1b.md) | 153 | `result-track:e355c6a2c4468aae1ad79f1b6440900fd1d24766668a86548d85644c58be7159` |
| 12 | `theorem` | [exists_isCompl](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean/declarations/exists-iscompl--3d69f7d0beb9238fa411bc39.md) | 170 | `result-track:3d69f7d0beb9238fa411bc392c28684b806db45fc67efac871b5cba719e9aaff` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean/declarations/instance--ba3ae59eee2e749cd7a2b795.md) | 176 | `declaration-track:ba3ae59eee2e749cd7a2b795add741d616514efa6271f2ae48a18b9cd1b58392` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean/declarations/instance--54edc51e8de88939c080630b.md) | 179 | `declaration-track:54edc51e8de88939c080630b372aeafcb5f4944183d84aebda5f41f8c11ded0d` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean/declarations/instance--61ddb7a6008e0cc0fd8bf612.md) | 191 | `declaration-track:61ddb7a6008e0cc0fd8bf6121ecc4a3e377802c44e777a5500ff936b4b62feee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
