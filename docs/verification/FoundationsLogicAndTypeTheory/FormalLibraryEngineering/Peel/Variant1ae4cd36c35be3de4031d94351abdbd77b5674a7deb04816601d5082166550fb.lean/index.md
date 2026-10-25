# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Peel.Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d08c1bb1f98843f575ed641252ceefa67ac3a399",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d08c1bb1f98843f575ed641252ceefa67ac3a399`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean/declarations/syntax--4c31d70d993c45bde4711671.md) | 91 | `declaration-track:4c31d70d993c45bde4711671ebac3a5b5bda17f4d49315fb985ff5aad849a388` |
| 2 | `lemma` | [and_imp_left_of_imp_imp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean/declarations/and-imp-left-of-imp-imp--ddbb6b7f8a0b06f7619a200f.md) | 95 | `result-track:ddbb6b7f8a0b06f7619a200f4d43bfc87a3b0efdaf4d59853c2be946f23d3cb0` |
| 3 | `theorem` | [eventually_imp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean/declarations/eventually-imp--bd7a93a5d11f6a6672d1b269.md) | 97 | `result-track:bd7a93a5d11f6a6672d1b269843f5dd4a3449435588a97e076c39ffc4f68c9e3` |
| 4 | `theorem` | [frequently_imp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean/declarations/frequently-imp--bb95c558db36b607d1991f18.md) | 101 | `result-track:bb95c558db36b607d1991f18f4c8a7053d334850b5a8cba59da790a46e388129` |
| 5 | `theorem` | [eventually_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean/declarations/eventually-congr--e62d85347e8ea22bdedba03e.md) | 105 | `result-track:e62d85347e8ea22bdedba03e14790e82d549554fe7f0c956cfac113f3041ef8a` |
| 6 | `theorem` | [frequently_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean/declarations/frequently-congr--efa2fe6ab347482172496022.md) | 109 | `result-track:efa2fe6ab347482172496022df6dde66b3c70387875627b26a670a004c61f69a` |
| 7 | `def` | [quantifiers](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean/declarations/quantifiers--902e3615df5b4a7cb12ea6c0.md) | 114 | `declaration-track:902e3615df5b4a7cb12ea6c069e048159bdb8c894ee1a91d8e27c8e4a152060b` |
| 8 | `def` | [whnfQuantifier](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean/declarations/whnfquantifier--98d8ad1009bee4b5630f47d0.md) | 119 | `declaration-track:98d8ad1009bee4b5630f47d0da0cc243168cf8cdb9bd126881f82fedabc57d3c` |
| 9 | `def` | [throwPeelError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean/declarations/throwpeelerror--f191ac036ae428903449367d.md) | 130 | `declaration-track:f191ac036ae428903449367d615ad5576834548e01d75ef635a6c0d74b615fbb` |
| 10 | `def` | [mkFreshBinderName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean/declarations/mkfreshbindername--055e816c888e4e62e6032a1b.md) | 135 | `declaration-track:055e816c888e4e62e6032a1bb3e245d50607e46deea13ee650255fe308ec91ac` |
| 11 | `def` | [applyPeelThm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean/declarations/applypeelthm--14799123d6985fd776b1b719.md) | 144 | `declaration-track:14799123d6985fd776b1b719c4a558471e04286a9bc87ea92cc20b9ada6047a7` |
| 12 | `def` | [peelCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean/declarations/peelcore--558e799bf60af7f189a00d00.md) | 160 | `declaration-track:558e799bf60af7f189a00d00fbc5e51fee1dd077b7df4d179887ff28e5118e2f` |
| 13 | `def` | [peelArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean/declarations/peelargs--577d9e8eb94ca00900d7660f.md) | 186 | `declaration-track:577d9e8eb94ca00900d7660f25b11c83c061b9f28e0915ce70a638c5d842fdc2` |
| 14 | `def` | [peelUnbounded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean/declarations/peelunbounded--a5a11e232d1dfa33d971e3c5.md) | 199 | `declaration-track:a5a11e232d1dfa33d971e3c5b9fb286239e36c81e43e3fbdaf945f71adf223b1` |
| 15 | `def` | [peelIffAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean/declarations/peeliffaux--977cda54be2cf890281d571e.md) | 212 | `declaration-track:977cda54be2cf890281d571ea06d821650bdce4fe5d01972720ed557d078b014` |
| 16 | `def` | [peelArgsIff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean/declarations/peelargsiff--fb87310828773c449c7f02e1.md) | 223 | `declaration-track:fb87310828773c449c7f02e1e6e2308647cb1582f0f47a62d9870c5902866dfb` |
| 17 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean/declarations/elab-rules--8279cad58447b7a204b8859a.md) | 233 | `declaration-track:8279cad58447b7a204b8859a35816da218408897ea2ba500c603ad45b6f65b54` |
| 18 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant1ae4cd36c35be3de4031d94351abdbd77b5674a7deb04816601d5082166550fb.lean/declarations/macro-rules--7c802a5cc2e73736274cff19.md) | 251 | `declaration-track:7c802a5cc2e73736274cff198756325bb1dc1ac7bb62d0f3aa4a206b1430f0aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
