# Verification target: GRWTSK.Algebra.LinearAlgebra.Projective.Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70778af63b1c9b0c3f176e68cba5c0c9ebc491bb",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70778af63b1c9b0c3f176e68cba5c0c9ebc491bb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.SumProd` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Basis` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Module.Projective](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/declarations/module-projective--69ce1d93e3a9b890a683df57.md) | 82 | `declaration-track:69ce1d93e3a9b890a683df5718accf73da8d93dbd407f809ce518ff35cbcc294` |
| 2 | `theorem` | [projective_def](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/declarations/projective-def--94740eaa205fa466187553b8.md) | 93 | `result-track:94740eaa205fa466187553b8e7c7259f959ed1c69c0d667fa32afd021cc8f247` |
| 3 | `theorem` | [projective_def'](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/declarations/projective-def--0ba694e7f8f9fe2f42838014.md) | 97 | `result-track:0ba694e7f8f9fe2f428380149b0ce6afe8a3ffdbc0d334b4631838cfbad15513` |
| 4 | `theorem` | [projective_lifting_property](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/declarations/projective-lifting-property--21852bd1a3fb951c7a4f3bd3.md) | 102 | `result-track:21852bd1a3fb951c7a4f3bd3a4a4e03154e03f743e3c4f7365fcdc9793d1a17a` |
| 5 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.ModuleProjective.Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.LinearMap.exists_rightInverse_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/declarations/root-grwtsk-algebra-linearalgebra-moduleprojective-variant63182b4ba55b34--39f2bca4332b08d735d87262.md) | 122 | `result-track:39f2bca4332b08d735d87262bed052e33d184172c90c0780cd9dfce3a594be50` |
| 6 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.ModuleProjective.Variant63182b4ba55b34adf4231a2ecfea53f14b81bfe27077e0a4dc4b6a9a29d4f1e1.Function.Surjective.surjective_linearMapComp_left](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/declarations/root-grwtsk-algebra-linearalgebra-moduleprojective-variant63182b4ba55b34--a033ca8941500521d777010c.md) | 127 | `result-track:a033ca8941500521d777010ca02ed10824d0adf989c3ac718a0ac22bc1826db7` |
| 7 | `theorem` | [Projective.of_lifting_property''](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/declarations/projective-of-lifting-property--3dad405bd23bb0d9dae301d2.md) | 135 | `result-track:3dad405bd23bb0d9dae301d2c26f9ec7e17e4c769e2fb42465d993ac8f60ecd6` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/declarations/instance--e442e3659a1b0dd24fedcba1.md) | 144 | `declaration-track:e442e3659a1b0dd24fedcba18c2e118cf496fee400c0a2f0dcd96a81dff816f8` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/declarations/instance--d3abe75bc8414272fc0be7e7.md) | 153 | `declaration-track:d3abe75bc8414272fc0be7e7421bd295b42146b9d37ec15f03cbb67714fac3f1` |
| 10 | `theorem` | [Projective.of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/declarations/projective-of-basis--aad48cd39a056cfc65ce639e.md) | 163 | `result-track:aad48cd39a056cfc65ce639e89218aa978b471824a856afaeff05da96fdb3779` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/declarations/instance--c798e063442e1cf8a5b2171b.md) | 172 | `declaration-track:c798e063442e1cf8a5b2171bdd5b486b454f740f527d4e6fe386e8fe834aab54` |
| 12 | `theorem` | [Projective.of_split](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/declarations/projective-of-split--c31524555ee54a4b4967b29f.md) | 176 | `result-track:c31524555ee54a4b4967b29fb3bba8027ca29c10d91e03e4af9f1ffae5cb21a1` |
| 13 | `theorem` | [Projective.of_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/declarations/projective-of-equiv--81585aa22281cf1426269912.md) | 184 | `result-track:81585aa22281cf1426269912c5e72485e4173e502ca76fb26b4b9bb61d60dbbd` |
| 14 | `theorem` | [Projective.iff_split_of_projective](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/declarations/projective-iff-split-of-projective--3cc667fb80686d53c354852a.md) | 189 | `result-track:3cc667fb80686d53c354852aa4516d274915cf2fc830078e7ddb5f7ac4fd4153` |
| 15 | `theorem` | [Projective.of_ringEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/declarations/projective-of-ringequiv--bd49e7c1bee04efcd26d3440.md) | 195 | `result-track:bd49e7c1bee04efcd26d344079e06802b9e6b7a8e49544d3e130e45f6691be71` |
| 16 | `theorem` | [Projective.iff_split](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/declarations/projective-iff-split--e86640db2f1933bac7d53358.md) | 217 | `result-track:e86640db2f1933bac7d5335803f8d1d1a9f09e56954946f34dd38635b62065c0` |
| 17 | `instance` | [Projective.tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/declarations/projective-tensorproduct--21127ec6aaa4732bd02fe598.md) | 224 | `declaration-track:21127ec6aaa4732bd02fe598db2b74d5c928c464910a2d0bd314a3bff44e1576` |
| 18 | `theorem` | [Projective.of_lifting_property'](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/declarations/projective-of-lifting-property--e5d76302d2cc41096f125d39.md) | 247 | `result-track:e5d76302d2cc41096f125d39cf3723a70f0f4edd8ed6e29a6be178abac87d6c1` |
| 19 | `theorem` | [Projective.of_lifting_property](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant002b3c0510119e8301681aaa818ebb33e1fa66bdaf00d33c0631ac631d42e529.lean/declarations/projective-of-lifting-property--e18e95e54932ef56cc26e7e0.md) | 260 | `result-track:e18e95e54932ef56cc26e7e0b68c36243687887b3fd7a90c5c868196080b7bdb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
