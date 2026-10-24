# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.Covariance.Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f4b7f7170899450457ccefc1022ddb91cfad26e",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f4b7f7170899450457ccefc1022ddb91cfad26e`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Moments.Variance` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [covariance](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance--c4fec515edf4ea449c57bc11.md) | 37 | `declaration-track:c4fec515edf4ea449c57bc113075078c93aeff941d9806d35bb5da7344fdbcde` |
| 2 | `lemma` | [covariance_same](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-same--e860ea17c72b9470e7902c53.md) | 47 | `result-track:e860ea17c72b9470e7902c53eacb1a685c44675e4d4cf28e6d512bafc039513f` |
| 3 | `lemma` | [covariance_zero_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-zero-left--95a91a9298cdbc3e9e76bbff.md) | 53 | `result-track:95a91a9298cdbc3e9e76bbff9e49e439f7dfa2b5cfc644c7278aeb423888a70c` |
| 4 | `lemma` | [covariance_zero_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-zero-right--23abc7b0fade39f63c814298.md) | 55 | `result-track:23abc7b0fade39f63c814298430ffb8ae2829098643fa40be737566bca965730` |
| 5 | `lemma` | [covariance_zero_measure](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-zero-measure--9138b21f69b299c9b2c886f4.md) | 57 | `result-track:9138b21f69b299c9b2c886f41e303b9b75e1bfe55de22830b5ad055f447656da` |
| 6 | `lemma` | [covariance_comm](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-comm--a0167c1119d0d7b274fe856d.md) | 60 | `result-track:a0167c1119d0d7b274fe856deb7e0ac9bb7188280b998778d325c9a40992eaa5` |
| 7 | `lemma` | [covariance_const_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-const-left--96e6921cfe24378a6a779886.md) | 66 | `result-track:96e6921cfe24378a6a7798861c33867c701fd5582f72fcc3e64c2af7847afbcf` |
| 8 | `lemma` | [covariance_const_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-const-right--9a3efe14186012b16afbbf23.md) | 70 | `result-track:9a3efe14186012b16afbbf23c2df9dceecfb5ec6afe8656144523c943ae1e6d3` |
| 9 | `lemma` | [covariance_add_const_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-add-const-left--18cb84d44b6ec0efb09690ae.md) | 74 | `result-track:18cb84d44b6ec0efb09690ae9378b5386018db19f12199565a996af843675ea9` |
| 10 | `lemma` | [covariance_const_add_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-const-add-left--8a70e7bd5d5bf0a320f63d37.md) | 82 | `result-track:8a70e7bd5d5bf0a320f63d370fe92385be21c6a6b4e068a4035912747abfe46c` |
| 11 | `lemma` | [covariance_add_const_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-add-const-right--9b99f7d06393716076df3aac.md) | 88 | `result-track:9b99f7d06393716076df3aac695da57626889f1deb7c64661a6ff56eab78bfea` |
| 12 | `lemma` | [covariance_const_add_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-const-add-right--a6d2c6c144a634ec40e34173.md) | 93 | `result-track:a6d2c6c144a634ec40e341734b5e446401a5ffe3f29dc22097856d4cf2e5e1ef` |
| 13 | `lemma` | [covariance_add_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-add-left--e34f0c06d8b37126019e2e83.md) | 98 | `result-track:e34f0c06d8b37126019e2e8398139e6ae71411c428238cfccdf1a6dd44c64a5b` |
| 14 | `lemma` | [covariance_add_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-add-right--560f6d32c3201d87a51422f8.md) | 109 | `result-track:560f6d32c3201d87a51422f802e085f1a7bc8085ef979f8b34d1d3c3bfb37e67` |
| 15 | `lemma` | [covariance_smul_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-smul-left--3d3a0f1833f459db554d725b.md) | 114 | `result-track:3d3a0f1833f459db554d725bc58d39769feb7d0360aa54fd51127973c62cd4ca` |
| 16 | `lemma` | [covariance_smul_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-smul-right--e54d94c6d6d40088efe0d4da.md) | 118 | `result-track:e54d94c6d6d40088efe0d4da1c13a85a29b7ced88b07a80ff4a121c71462020c` |
| 17 | `lemma` | [covariance_neg_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-neg-left--c0dc750f7ab816eefba95249.md) | 122 | `result-track:c0dc750f7ab816eefba95249a779dc48cf41fe8fb4558c65af1bd877afa5a4f4` |
| 18 | `lemma` | [covariance_fun_neg_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-fun-neg-left--08ccecfd7bd520f0761ed1d0.md) | 128 | `result-track:08ccecfd7bd520f0761ed1d0fa32c61cdbd011a9f00d706da7d272f8a66cc17e` |
| 19 | `lemma` | [covariance_neg_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-neg-right--4d5ddd86da2eb30d59ece2c0.md) | 132 | `result-track:4d5ddd86da2eb30d59ece2c0ce7e4133f7bac805e18e5267d108d471e7c3838a` |
| 20 | `lemma` | [covariance_fun_neg_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-fun-neg-right--81177cc83c3a0d642a2202c6.md) | 138 | `result-track:81177cc83c3a0d642a2202c6d4ef4f9cd10c0aac5fe84dfc0f45016619291050` |
| 21 | `lemma` | [covariance_sub_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-sub-left--fb711298af538ae7a0849205.md) | 141 | `result-track:fb711298af538ae7a084920595dadc3fe71c2f65d7ae82d1139d5858b221aeb2` |
| 22 | `lemma` | [covariance_sub_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-sub-right--48904e53a2c669e25bca16a3.md) | 146 | `result-track:48904e53a2c669e25bca16a3baca8fc0c819e70f31e0936a614a85f3db9cb5fd` |
| 23 | `lemma` | [covariance_sub_const_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-sub-const-left--0ffd66a25310113b4d41f90e.md) | 152 | `result-track:0ffd66a25310113b4d41f90e2e39bc884b3b908e0025fb9a5bdb152c181a7fb4` |
| 24 | `lemma` | [covariance_const_sub_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-const-sub-left--1de6a87037979dbe0aeb4bcf.md) | 157 | `result-track:1de6a87037979dbe0aeb4bcfd82f79c099107f20fd33756920fb717ff49e1f63` |
| 25 | `lemma` | [covariance_sub_const_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-sub-const-right--9360bc18e5deee7d1fe35740.md) | 162 | `result-track:9360bc18e5deee7d1fe35740c05516c8fa5e3e35023054848f0e3d749b672c3c` |
| 26 | `lemma` | [covariance_const_sub_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/Covariance/Variant0891da465e57bbae31ad43a6d430207261d4632e21e4e389509094e2b504a8de.lean/declarations/covariance-const-sub-right--18da2acdcdd1de205855b5cc.md) | 167 | `result-track:18da2acdcdd1de205855b5cccf40a8d142f6921faf1798264379d273c580e74e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
