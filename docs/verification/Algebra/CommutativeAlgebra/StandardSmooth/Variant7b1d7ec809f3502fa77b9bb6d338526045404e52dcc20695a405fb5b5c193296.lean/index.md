# Verification target: GRWTSK.Algebra.CommutativeAlgebra.StandardSmooth.Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab546d7d4f085bd703cac82ad29463924c4c0f7d",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab546d7d4f085bd703cac82ad29463924c4c0f7d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean.json)

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
| 1 | `class` | [IsStandardSmooth](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/isstandardsmooth--0b9c567b335d564da530f172.md) | 81 | `declaration-track:0b9c567b335d564da530f172d56b98390ff0d8546838660489d31ac5c05b4843` |
| 2 | `lemma` | [SubmersivePresentation.isStandardSmooth](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/submersivepresentation-isstandardsmooth--34b4ab75a66f8ed7f3470b3e.md) | 87 | `result-track:34b4ab75a66f8ed7f3470b3e1b3c827b0cba43c7c612b93ecafb8b50031af21e` |
| 3 | `def` | [IsStandardSmooth.relativeDimension](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/isstandardsmooth-relativedimension--293e3ee7964a0b5cb493e4ea.md) | 99 | `declaration-track:293e3ee7964a0b5cb493e4ea8771900eb6ee3a210d1c626f6bfcffeb278221fb` |
| 4 | `class` | [IsStandardSmoothOfRelativeDimension](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/isstandardsmoothofrelativedimension--7fb6b898a27fd3460cc28f20.md) | 107 | `declaration-track:7fb6b898a27fd3460cc28f20c255e684e2ded71ac31b7e9e639730969b820a05` |
| 5 | `lemma` | [SubmersivePresentation.isStandardSmoothOfRelativeDimension](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/submersivepresentation-isstandardsmoothofrelativedimension--1ae64b5d21329766b6eec1e9.md) | 112 | `result-track:1ae64b5d21329766b6eec1e9fcfd6d64ff083e5d4edd80a6f35e5f2a5ad1b831` |
| 6 | `lemma` | [IsStandardSmoothOfRelativeDimension.isStandardSmooth](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/isstandardsmoothofrelativedimension-isstandardsmooth--3d74f0582cfe38fdc06c7aa1.md) | 121 | `result-track:3d74f0582cfe38fdc06c7aa14ccfc767f97fa9009d0460425b7fa585912c8a04` |
| 7 | `lemma` | [IsStandardSmoothOfRelativeDimension.of_algebraMap_bijective](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/isstandardsmoothofrelativedimension-of-algebramap-bijective--778c1ea6c52175a9029e206d.md) | 126 | `result-track:778c1ea6c52175a9029e206dcf5e8c2863f6ec089cd84bd8582ae1f1bef280bf` |
| 8 | `instance` | [IsStandardSmoothOfRelativeDimension.id](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/isstandardsmoothofrelativedimension-id--95787d71ce7f336b72169dc3.md) | 133 | `declaration-track:95787d71ce7f336b72169dc372de628b2d7d50b4a2c2cb7931944bce9f0eff1b` |
| 9 | `lemma` | [IsStandardSmoothOfRelativeDimension.mvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/isstandardsmoothofrelativedimension-mvpolynomial--8f0b75e47cb96500d0c40843.md) | 140 | `result-track:8f0b75e47cb96500d0c4084352b886822bee33f1a59fdd07bec310a77262acd5` |
| 10 | `instance` | [IsStandardSmoothOfRelativeDimension.mvPolynomial_fin](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/isstandardsmoothofrelativedimension-mvpolynomial-fin--303434a036c128c81b0c1446.md) | 147 | `declaration-track:303434a036c128c81b0c144604ce96277a9253f8f7f4ff8a72517b84fe7a7465` |
| 11 | `instance` | [IsStandardSmooth.mvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/isstandardsmooth-mvpolynomial--8d14e70492688306f75fca0a.md) | 152 | `declaration-track:8d14e70492688306f75fca0abddd4b964ecc299377fbea9c5f78ca2cf10ba01a` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/instance--08162aa6ce53623fdf6f2eae.md) | 156 | `declaration-track:08162aa6ce53623fdf6f2eaec158e54be77b49d40f03e55b6ac194e2f2784dde` |
| 13 | `lemma` | [IsStandardSmooth.of_algEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/isstandardsmooth-of-algequiv--4c7d62068abf96b4b305ce31.md) | 161 | `result-track:4c7d62068abf96b4b305ce31233bbaff9f9ce47effa2597d097127871398d4ef` |
| 14 | `lemma` | [IsStandardSmoothOfRelativeDimension.of_algEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/isstandardsmoothofrelativedimension-of-algequiv--7ee6487d249003179cf066a3.md) | 166 | `result-track:7ee6487d249003179cf066a35ef19e06a0e12503aa2ffefb82b59efae479065e` |
| 15 | `lemma` | [IsStandardSmooth.trans](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/isstandardsmooth-trans--3508ecb585d20531282aa72f.md) | 176 | `result-track:3508ecb585d20531282aa72f3989bcb927fafb1d80e20b76c9046ab72de23f43` |
| 16 | `lemma` | [IsStandardSmoothOfRelativeDimension.trans](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/isstandardsmoothofrelativedimension-trans--8c79512fa2a720cc795f0165.md) | 183 | `result-track:8c79512fa2a720cc795f01653a71b27b5ae672725b16e14ed768e600c9abdde0` |
| 17 | `lemma` | [IsStandardSmooth.localization_away](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/isstandardsmooth-localization-away--5e27920eb5985ba82e4cca52.md) | 194 | `result-track:5e27920eb5985ba82e4cca52ba4642fa15e1767bf3fc487e7aaaffda9db9ad4c` |
| 18 | `lemma` | [IsStandardSmoothOfRelativeDimension.localization_away](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/isstandardsmoothofrelativedimension-localization-away--4e06b22284f2a24cc05a1a78.md) | 198 | `result-track:4e06b22284f2a24cc05a1a78a38a514c2bd9f05a9c83ed3249b577a6ff92e3c3` |
| 19 | `instance` | [IsStandardSmooth.baseChange](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/isstandardsmooth-basechange--497291dca1f75f233122c682.md) | 207 | `declaration-track:497291dca1f75f233122c682daec82163336c9f10da5e7dc47370a469754a18a` |
| 20 | `instance` | [IsStandardSmoothOfRelativeDimension.baseChange](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/isstandardsmoothofrelativedimension-basechange--634c36b0ca14c8ed77d39cc3.md) | 213 | `declaration-track:634c36b0ca14c8ed77d39cc377358211f5ddf86e5db29eee13e76146ed0a0f14` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/instance--6bc36460b275c414249d6bba.md) | 223 | `declaration-track:6bc36460b275c414249d6bbac2501ffc2dcf61702f6b17b49e1ea02098e238c3` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/declarations/instance--a6ac342d11d5e34ee3ab2e84.md) | 227 | `declaration-track:a6ac342d11d5e34ee3ab2e84881e276bf752de51e0cb9e93027930300505e8fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
