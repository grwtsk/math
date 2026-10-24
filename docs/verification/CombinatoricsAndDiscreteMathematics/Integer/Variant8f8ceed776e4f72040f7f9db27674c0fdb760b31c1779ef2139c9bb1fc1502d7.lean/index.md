# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Integer.Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93aacfc7d979e0401f5f988ab0f8d8cbaa41c268",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93aacfc7d979e0401f5f988ab0f8d8cbaa41c268`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean.json)

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
| 1 | `def` | [IsInteger](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/declarations/isinteger--cb24eb5bd91cc72ea75ad910.md) | 45 | `declaration-track:cb24eb5bd91cc72ea75ad910cd760212864298eb5d89f09efefb4f0004fb594a` |
| 2 | `theorem` | [isInteger_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/declarations/isinteger-zero--f8e8919cee66f201b9b3d73d.md) | 50 | `result-track:f8e8919cee66f201b9b3d73d239cab5fe8c968b9b2fef97cf91b07cbd6c2e2fc` |
| 3 | `theorem` | [isInteger_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/declarations/isinteger-one--daa6667de5c48474ab3c6c46.md) | 53 | `result-track:daa6667de5c48474ab3c6c4620a37cfcaecbf08c95f27edad8400466a9368c49` |
| 4 | `theorem` | [isInteger_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/declarations/isinteger-add--83c6e97dc04dc6d19226bc09.md) | 56 | `result-track:83c6e97dc04dc6d19226bc096d4f9cc9834f632c010d80ee1d32be48748ed2ee` |
| 5 | `theorem` | [isInteger_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/declarations/isinteger-mul--6b9e1647d71b0b3db2b92783.md) | 59 | `result-track:6b9e1647d71b0b3db2b927830007a6fccdd65062b069d0e1b12f7dbd0c728044` |
| 6 | `theorem` | [isInteger_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/declarations/isinteger-smul--0f9a57bb5a649320737c6df7.md) | 62 | `result-track:0f9a57bb5a649320737c6df7e1eb22a351539236a89bd7ed40347cb97f9767d9` |
| 7 | `theorem` | [exists_integer_multiple'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/declarations/exists-integer-multiple--1bcd0195290d5d64753e4d62.md) | 74 | `result-track:1bcd0195290d5d64753e4d6267ea203d96a6117911b092263b9ce77d4bb73188` |
| 8 | `theorem` | [exists_integer_multiple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/declarations/exists-integer-multiple--7a59e8b82a56b512af704656.md) | 82 | `result-track:7a59e8b82a56b512af70465655058face051bce3eb917855ef30903094463172` |
| 9 | `theorem` | [exist_integer_multiples](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/declarations/exist-integer-multiples--201b67c490e8037e64687aee.md) | 87 | `result-track:201b67c490e8037e64687aee4102025fdfd002c63a06a3e5479ff49a9f008963` |
| 10 | `theorem` | [exist_integer_multiples_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/declarations/exist-integer-multiples-of-finite--ddef123c55e08234b43f34dc.md) | 102 | `result-track:ddef123c55e08234b43f34dc9920b69a9c0f053d3c74cfa864ebe9a21b747351` |
| 11 | `theorem` | [exist_integer_multiples_of_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/declarations/exist-integer-multiples-of-finset--eebc69af12046a0c245e5905.md) | 109 | `result-track:eebc69af12046a0c245e5905880b05ffcbb682327960cea05abc020e30de8094` |
| 12 | `def` | [commonDenom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/declarations/commondenom--bead5fd10a6fac5ecca872ba.md) | 114 | `declaration-track:bead5fd10a6fac5ecca872bad3f7c427ddd1eb85a820e2d1c509e311e85460ce` |
| 13 | `def` | [integerMultiple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/declarations/integermultiple--89cbd26d9cc44dea5c6f6641.md) | 119 | `declaration-track:89cbd26d9cc44dea5c6f66414446bd9c759eec502570bbedb8a6e4a6373b79b0` |
| 14 | `theorem` | [map_integerMultiple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/declarations/map-integermultiple--c2f636a962f34319801acf26.md) | 123 | `result-track:c2f636a962f34319801acf26c3487d89a04f989d29bcfa37c7bfca8f9320baf3` |
| 15 | `theorem` | [integerMultiple_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/declarations/integermultiple-injective--73feb5956f061ee8d84588e3.md) | 127 | `result-track:73feb5956f061ee8d84588e35546153b28b579675fc97e8849bee3c4639195b7` |
| 16 | `def` | [commonDenomOfFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/declarations/commondenomoffinset--3846c36db01b51cff3a0bb32.md) | 138 | `declaration-track:3846c36db01b51cff3a0bb3251ed6f5a9889db7f13d7477a0bb41ba0b30993f9` |
| 17 | `def` | [finsetIntegerMultiple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/declarations/finsetintegermultiple--e3cf35279bb34b7d1a46db9c.md) | 142 | `declaration-track:e3cf35279bb34b7d1a46db9c84c7687c14913a641800e62e7ab162dccc01a99e` |
| 18 | `theorem` | [finsetIntegerMultiple_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/declarations/finsetintegermultiple-image--7423f9d40093d7e9781e1934.md) | 147 | `result-track:7423f9d40093d7e9781e1934ff735657205f5c41ebdf0fcf55feeb898b051fc6` |
| 19 | `theorem` | [card_finsetIntegerMultiple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/declarations/card-finsetintegermultiple--f70b0b0e04232203886936f3.md) | 160 | `result-track:f70b0b0e04232203886936f345644e97b0b85818e3e63204e97267b3c80f84a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
