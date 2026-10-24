# Verification target: GRWTSK.Algebra.HopkinsLevitzki.Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc317a743a04c9d43e8c6be0d9269f2860f9c156",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean/index.md) · [Full source](../../../../mathematics/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc317a743a04c9d43e8c6be0d9269f2860f9c156`.

Source path: `GRWTSK/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [induction](../../../../mathematics/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean/declarations/induction--24b046282ed6ae10421450fa.md) | 46 | `result-track:24b046282ed6ae10421450fa0cfa88f929de822948044461b514d55dbad9962f` |
| 2 | `theorem` | [finite_of_isNoetherian_or_isArtinian](../../../../mathematics/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean/declarations/finite-of-isnoetherian-or-isartinian--cd1e4d8bc48992a1fbe5d98d.md) | 80 | `result-track:cd1e4d8bc48992a1fbe5d98d54960ffdced97bb260fa7d1c7beae7e481e01a61` |
| 3 | `theorem` | [finite_of_isNoetherian](../../../../mathematics/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean/declarations/finite-of-isnoetherian--3357a13081c9363efad5fdb0.md) | 94 | `result-track:3357a13081c9363efad5fdb03b7d23183af31f83665c3d01e4ea3a9514465f3e` |
| 4 | `theorem` | [finite_of_isArtinian](../../../../mathematics/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean/declarations/finite-of-isartinian--10740badc95a4378401a380c.md) | 97 | `result-track:10740badc95a4378401a380c3e2703f367a7cb18a8788bc28f93f73327241132` |
| 5 | `theorem` | [isNoetherian_iff_isArtinian](../../../../mathematics/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean/declarations/isnoetherian-iff-isartinian--aea4be04131bb830ecca7205.md) | 104 | `result-track:aea4be04131bb830ecca72053f8cb0a094478a4fc22ad94a2966f86a38edae4f` |
| 6 | `theorem` | [isNoetherian_iff_finite_of_jacobson_fg](../../../../mathematics/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean/declarations/isnoetherian-iff-finite-of-jacobson-fg--82daa498ca7653b2f9a171fc.md) | 110 | `result-track:82daa498ca7653b2f9a171fcd606a2ef80ccb02bc58911ec193fe137cc508355` |
| 7 | `theorem` | [isNoetherianRing_iff_jacobson_fg](../../../../mathematics/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean/declarations/isnoetherianring-iff-jacobson-fg--9b086a2cc5e7efe7a96b1953.md) | 118 | `result-track:9b086a2cc5e7efe7a96b19533dfab648f5ad794c481e636f3edf80ffc3969332` |
| 8 | `theorem` | [IsArtinianRing.tfae](../../../../mathematics/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean/declarations/isartinianring-tfae--ff21597efb3e4c8c08872b14.md) | 124 | `result-track:ff21597efb3e4c8c08872b1415af4dd6be43ddce40718b4924ce00b0c76a3765` |
| 9 | `theorem` | [isArtinianRing_iff_isFiniteLength](../../../../mathematics/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean/declarations/isartinianring-iff-isfinitelength--2c5db2a659caaff415a4a5cb.md) | 135 | `result-track:2c5db2a659caaff415a4a5cbeca5433ef59c7434d20637d47f1f08747feedc8b` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean/declarations/instance--f18e7e6dc29ac1c72f436872.md) | 141 | `declaration-track:f18e7e6dc29ac1c72f4368721f3ac3159901487eb1a1b11fe4210eee5e228ca1` |
| 11 | `theorem` | [isNoetherian_of_finite_isArtinian](../../../../mathematics/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean/declarations/isnoetherian-of-finite-isartinian--a23977d780a081223132548c.md) | 145 | `result-track:a23977d780a081223132548cad96eafc52119545b902f83e1152d128b2a31419` |
| 12 | `theorem` | [IsNoetherianRing.isArtinianRing_of_krullDimLE_zero](../../../../mathematics/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean/declarations/isnoetherianring-isartinianring-of-krulldimle-zero--7bd0137907c786bb16e1e10f.md) | 161 | `result-track:7bd0137907c786bb16e1e10fe511247fda7ff0f7f9b1633fc35d5b29cfa4a9de` |
| 13 | `theorem` | [isArtinianRing_iff_isNoetherianRing_krullDimLE_zero](../../../../mathematics/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean/declarations/isartinianring-iff-isnoetherianring-krulldimle-zero--33fee36be7513158424d7ac9.md) | 176 | `result-track:33fee36be7513158424d7ac9f8a56eb3cf19f4e590f7fa7ddec7afae31e9e26d` |
| 14 | `theorem` | [isArtinianRing_iff_krullDimLE_zero](../../../../mathematics/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean/declarations/isartinianring-iff-krulldimle-zero--18d978fa96427a7105bf7235.md) | 180 | `result-track:18d978fa96427a7105bf72356c179e4de71628f6889fb8cc65cc4351a628e51e` |
| 15 | `lemma` | [isArtinianRing_iff_isNilpotent_maximalIdeal](../../../../mathematics/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean/declarations/isartinianring-iff-isnilpotent-maximalideal--71f9eaa217c9e25dc964098f.md) | 184 | `result-track:71f9eaa217c9e25dc964098f233b5ee9159a01e34c0aaac87cfb33c3bcecf101` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
