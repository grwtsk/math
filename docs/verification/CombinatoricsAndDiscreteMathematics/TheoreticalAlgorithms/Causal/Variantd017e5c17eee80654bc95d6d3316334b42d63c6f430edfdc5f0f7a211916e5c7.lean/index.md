# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Causal.Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfeda367dbe393855ab5a928003d550b59ef9f1c",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfeda367dbe393855ab5a928003d550b59ef9f1c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.System` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Operations` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CausalEquivalent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/causalequivalent--dbca128d8d25be69e8a528f5.md) | 34 | `declaration-track:dbca128d8d25be69e8a528f54f5332a3a4914669b92ddc993c20c56b908150bb` |
| 2 | `theorem` | [causalEquivalent_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/causalequivalent-refl--f571d47d0b74859ac9b9463e.md) | 39 | `result-track:f571d47d0b74859ac9b9463e079d4955b99780b52bd2afc1fbf41c827022eb84` |
| 3 | `theorem` | [causalEquivalent_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/causalequivalent-symm--fed7686db40913358e6bf061.md) | 44 | `result-track:fed7686db40913358e6bf061d470c6afb0229a21beeadf34681f6e5e8a00908a` |
| 4 | `theorem` | [causalEquivalent_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/causalequivalent-trans--e7c648ae012ab5de10c5c7a5.md) | 52 | `result-track:e7c648ae012ab5de10c5c7a56909e8ee4b3371d879633aec838ddfe613e8aa7d` |
| 5 | `def` | [causalSetoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/causalsetoid--a07306da8cfb8bca5307a873.md) | 62 | `declaration-track:a07306da8cfb8bca5307a8730161af5a1a90a376fe9bb455b484c10c185e5909` |
| 6 | `def` | [CausalState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/causalstate--86e8d72726e8ed283d4565c3.md) | 71 | `declaration-track:86e8d72726e8ed283d4565c39baaaba9762aea34c17b7c623d638cf3d2fd8cb3` |
| 7 | `def` | [toCausal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/tocausal--9db96ef0e34f451329e6d769.md) | 75 | `declaration-track:9db96ef0e34f451329e6d769bc077f52a53c2c92c6fcd68cd74908101f19cd70` |
| 8 | `theorem` | [toCausal_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/tocausal-surjective--90893dd75364a46c65ff62e9.md) | 78 | `result-track:90893dd75364a46c65ff62e999d0228e1fb87fe5bfc4ba3989762a7deeb9ac43` |
| 9 | `theorem` | [toCausal_eq_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/tocausal-eq-iff--bcc4b870723051c2c78132d3.md) | 86 | `result-track:bcc4b870723051c2c78132d39d9f9a7f94a31e145e9ad9be57657076d76ad1d2` |
| 10 | `theorem` | [map_causalEquivalent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/map-causalequivalent--babc184f7b1254bd827e607a.md) | 103 | `result-track:babc184f7b1254bd827e607ad31fc2d1f8762cad1062e92a8bc94cebfea2f2e5` |
| 11 | `def` | [causalStateMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/causalstatemap--13bda32befdae7f1f748a030.md) | 119 | `declaration-track:13bda32befdae7f1f748a030fda5543b5822dfae361e2604396423aa651e875f` |
| 12 | `theorem` | [causalStateMap_toCausal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/causalstatemap-tocausal--9e4347c24a112508b102f6db.md) | 127 | `result-track:9e4347c24a112508b102f6db8e6c767371214f507817fae65eda6d910efdb9e8` |
| 13 | `theorem` | [causalStateMap_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/causalstatemap-surjective--aeb11907747a4730dfe9865c.md) | 143 | `result-track:aeb11907747a4730dfe9865cbcd7ad8046b1e315dd1d69af56ea46498ca74865` |
| 14 | `theorem` | [causalEquivalent_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/causalequivalent-iff--07efbded41fb56abc30cac02.md) | 162 | `result-track:07efbded41fb56abc30cac028d5a3742d85d30aa32e5be6bd9f08cbd71926f3e` |
| 15 | `def` | [causalStateEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/causalstateequiv--d1c2031a16ab962199ad4e15.md) | 175 | `declaration-track:d1c2031a16ab962199ad4e1529572f6717aaf1373d93c0d6e995a5c001be4219` |
| 16 | `theorem` | [causalStateEquiv_toCausal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/causalstateequiv-tocausal--083c386e57b5c71a283d8cf1.md) | 193 | `result-track:083c386e57b5c71a283d8cf1761d493fe8cb08d12a94c6ed1a6a1b9754dfc4a5` |
| 17 | `structure` | [PredictiveRepresentation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/predictiverepresentation--317793ccb1e31f7355b65821.md) | 206 | `declaration-track:317793ccb1e31f7355b65821a61c43175761c04f195342e51f6205a968dde72f` |
| 18 | `def` | [RealizedImage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/realizedimage--4e3537537046d173e219b74e.md) | 217 | `declaration-track:4e3537537046d173e219b74ebcb46ff2a5bf6cf6b5751d36593258522f371256` |
| 19 | `def` | [toRealizedImage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/torealizedimage--757d195746ad8c93781f255c.md) | 221 | `declaration-track:757d195746ad8c93781f255c2dc689b6903f964a1423c51dcaca99e726858ca3` |
| 20 | `theorem` | [toRealizedImage_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/torealizedimage-surjective--a10fe525d72f9f79cf4117c9.md) | 224 | `result-track:a10fe525d72f9f79cf4117c9d6b0a41d438d3b0a54636d0851602d46b1aecc54` |
| 21 | `def` | [realizedImageToCausal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/realizedimagetocausal--af564c0f00020328e521978f.md) | 235 | `declaration-track:af564c0f00020328e521978f29eea95c518861fb0f9c020e0aaf59b2ae79d93b` |
| 22 | `theorem` | [realizedImageToCausal_toRealizedImage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/realizedimagetocausal-torealizedimage--6ff658fa56ad45ddc65603f4.md) | 240 | `result-track:6ff658fa56ad45ddc65603f4f1e6a06279d865e55306baa2217014ed7253f7a1` |
| 23 | `theorem` | [realizedImageToCausal_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/realizedimagetocausal-unique--992e1ddde029eb4853e149c5.md) | 246 | `result-track:992e1ddde029eb4853e149c5e34cc226cf562cec371267f37551cb48f9cccda1` |
| 24 | `theorem` | [causalState_terminal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/causalstate-terminal--dcee0ae88973c48a680ce373.md) | 260 | `result-track:dcee0ae88973c48a680ce37310070cd151777aaadd3bc4bd2fc0c87ebe2b0b1b` |
| 25 | `theorem` | [causalState_terminal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/declarations/causalstate-terminal--f420cf78f8887fa8534526fc.md) | 271 | `result-track:f420cf78f8887fa8534526fce05178d907a039c72ff3164f636e0dfe40fad9e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
