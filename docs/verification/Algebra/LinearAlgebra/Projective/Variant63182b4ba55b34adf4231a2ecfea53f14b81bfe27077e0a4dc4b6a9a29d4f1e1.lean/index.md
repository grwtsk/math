# Verification target: GRWTSK.Algebra.LinearAlgebra.Projective.Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c102a77be8ce2309987ba62ccf51a017c5e49961",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c102a77be8ce2309987ba62ccf51a017c5e49961`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.SumProd` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Basis` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Module.Projective](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/declarations/module-projective--143e77b162c308ec4a176e39.md) | 74 | `declaration-track:143e77b162c308ec4a176e3923f640883a98a6d2a8d74ed86c32dfaaba2e3e84` |
| 2 | `theorem` | [projective_def](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/declarations/projective-def--f68427ce0f9d59388797fb77.md) | 85 | `result-track:f68427ce0f9d59388797fb77d435d9540c090bbab1864dcf45fa6f59dc1d4d6b` |
| 3 | `theorem` | [projective_def'](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/declarations/projective-def--1629dbc30425e6785ca84a20.md) | 89 | `result-track:1629dbc30425e6785ca84a202ca71963d7090ca5bd2f6ec47d13580aa7fe831c` |
| 4 | `theorem` | [projective_lifting_property](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/declarations/projective-lifting-property--4c60f2ba15f2f0b81fa4b26f.md) | 94 | `result-track:4c60f2ba15f2f0b81fa4b26f106e82eed90742c93a47b77b9de3aa60a454283c` |
| 5 | `theorem` | [_root_.LinearMap.exists_rightInverse_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/declarations/root-linearmap-exists-rightinverse-of-surjective--f770b578edc21364249aba0b.md) | 114 | `result-track:f770b578edc21364249aba0b6ceca0203ff97232005b5a489ceeb59aefe72dd4` |
| 6 | `theorem` | [_root_.Function.Surjective.surjective_linearMapComp_left](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/declarations/root-function-surjective-surjective-linearmapcomp-left--4fd198ab94780fe2394481d1.md) | 119 | `result-track:4fd198ab94780fe2394481d17fb387f6192c595460ed4de5e6925b87018ba36d` |
| 7 | `theorem` | [Projective.of_lifting_property''](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/declarations/projective-of-lifting-property--f53c54120a472b07ae6eaa02.md) | 127 | `result-track:f53c54120a472b07ae6eaa02524ea39ab1cbeee89f325af4237affb6b2db9cc2` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/declarations/instance--0d74bcdf469b9567810e4ae6.md) | 136 | `declaration-track:0d74bcdf469b9567810e4ae639ab2f481a45012b6982ab590683fdbf42e28b0c` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/declarations/instance--cb123b0cfda253fead96f278.md) | 145 | `declaration-track:cb123b0cfda253fead96f278173c6663f0b678c848072c7b5b6166c0c750edbb` |
| 10 | `theorem` | [Projective.of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/declarations/projective-of-basis--b373edc433a1679579966a3d.md) | 155 | `result-track:b373edc433a1679579966a3d9c41487fa1c43d18a29667b9d22ded58ef2fb037` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/declarations/instance--a13dcae7547856f1889850ba.md) | 164 | `declaration-track:a13dcae7547856f1889850ba51709bc9ffebb325b81275081528282310adf79c` |
| 12 | `theorem` | [Projective.of_split](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/declarations/projective-of-split--8c7ddec5a954e94960121087.md) | 168 | `result-track:8c7ddec5a954e949601210873f801bdedbd9705828e5650b60a44adafeabea3f` |
| 13 | `theorem` | [Projective.of_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/declarations/projective-of-equiv--e4dd061b2a18c243a99d1fa9.md) | 176 | `result-track:e4dd061b2a18c243a99d1fa9f8936029407197004e88bd5788b315ecfb6e7d43` |
| 14 | `theorem` | [Projective.iff_split_of_projective](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/declarations/projective-iff-split-of-projective--0b0e587257c7051dc5a87407.md) | 181 | `result-track:0b0e587257c7051dc5a874073615759e0f6cdd1fd29b6a1d1aaaab7bae012a53` |
| 15 | `theorem` | [Projective.of_ringEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/declarations/projective-of-ringequiv--5db69d07114aa59985180c27.md) | 187 | `result-track:5db69d07114aa59985180c27e41d105220fae4e7242f60ff78d7a0ce70d3bde4` |
| 16 | `theorem` | [Projective.iff_split](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/declarations/projective-iff-split--ca2644adbcd0e02985b5d9cd.md) | 209 | `result-track:ca2644adbcd0e02985b5d9cd1a747ae9d48b7b04a1709c32254a6e22fd8fdc02` |
| 17 | `instance` | [Projective.tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/declarations/projective-tensorproduct--128d66971aac6e99e24d0283.md) | 216 | `declaration-track:128d66971aac6e99e24d0283db0b8cfd5cc022eb1f437301156a35871a510dbd` |
| 18 | `theorem` | [Projective.of_lifting_property'](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/declarations/projective-of-lifting-property--b122eef4e840090ecb5edcf1.md) | 239 | `result-track:b122eef4e840090ecb5edcf10a5422bfc48a2e4d9c6d46a5d15bcdef424b18a5` |
| 19 | `theorem` | [Projective.of_lifting_property](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.lean/declarations/projective-of-lifting-property--cde2c5997d201ac32fbb90df.md) | 252 | `result-track:cde2c5997d201ac32fbb90dfac3ba979aa36458942520d4fd7a53d6318c58100` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
