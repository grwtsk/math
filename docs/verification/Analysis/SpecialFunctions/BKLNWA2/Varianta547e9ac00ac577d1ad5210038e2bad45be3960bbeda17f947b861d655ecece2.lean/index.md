# Verification target: GRWTSK.Analysis.SpecialFunctions.BKLNWA2.Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7193ec12e254dffb2ccb9fc970b2fbc5615b31e",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7193ec12e254dffb2ccb9fc970b2fbc5615b31e`.

Source path: `GRWTSK/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.IntervalAuto` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [a2_bound_20](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-bound-20--822914da0313adf2b3811174.md) | 23 | `result-track:822914da0313adf2b3811174aa1051c15c631c17e3769d6ed36a6c0b49f4e5a5` |
| 2 | `theorem` | [a2_lower_25_part1](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-25-part1--ede14c67adfc13cc692c45fc.md) | 28 | `result-track:ede14c67adfc13cc692c45fcf8549a6aa1c95e8b813ab751cfce08706898aa4a` |
| 3 | `theorem` | [a2_upper_25_part1](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-25-part1--1bb74ba0b79847ec8dd46447.md) | 32 | `result-track:1bb74ba0b79847ec8dd4644707772d77b41f3935b57dd60f7524fd5037cedd05` |
| 4 | `theorem` | [a2_lower_25_part2](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-25-part2--48274dadb70da2cea3b64692.md) | 36 | `result-track:48274dadb70da2cea3b64692ed686f141f008e5ab65ab50b7dc1c1e1a30b8726` |
| 5 | `theorem` | [a2_upper_25_part2](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-25-part2--4f83f397270104fb7e624bf2.md) | 40 | `result-track:4f83f397270104fb7e624bf29b1f43ddaf1e17c8b18596e957b610a4a7785d4d` |
| 6 | `theorem` | [a2_lower_25_part3](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-25-part3--2b1c7942ffa5477d2cf6cb34.md) | 44 | `result-track:2b1c7942ffa5477d2cf6cb34c2284c6531fcf597b546c972e5a75657bfdc0570` |
| 7 | `theorem` | [a2_upper_25_part3](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-25-part3--98e80c574bb15e11a9ac0ed5.md) | 48 | `result-track:98e80c574bb15e11a9ac0ed563b4c92d4fbe3ef045fced43d26716734f92c563` |
| 8 | `theorem` | [a2_bound_25](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-bound-25--f8b58b37eb4f7420396f6779.md) | 52 | `result-track:f8b58b37eb4f7420396f677980cf587529f00c9e3bd123c64ab3ce32dcd85ca6` |
| 9 | `theorem` | [a2_lower_30_part1](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-30-part1--d3850f5513dfcc860d08395f.md) | 65 | `result-track:d3850f5513dfcc860d08395fcf1a1e1bbe5684fdb8516dafe25796cc70ffd51d` |
| 10 | `theorem` | [a2_upper_30_part1](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-30-part1--afed3f2a60182aab4ca79804.md) | 69 | `result-track:afed3f2a60182aab4ca79804b82db215f834275af90c6d9da99c7b39e9009a83` |
| 11 | `theorem` | [a2_lower_30_part2](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-30-part2--0d1b4f4403813bcff4d41dac.md) | 73 | `result-track:0d1b4f4403813bcff4d41dac25552f208128fff9364f9f2c2ede471051df722d` |
| 12 | `theorem` | [a2_upper_30_part2](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-30-part2--422340878b8dd162e8fe7c84.md) | 77 | `result-track:422340878b8dd162e8fe7c847203e67ed0987c257083535ce8f9ff423f0ecd27` |
| 13 | `theorem` | [a2_lower_30_part3](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-30-part3--0a1759f0553464d8ff8dcd1f.md) | 81 | `result-track:0a1759f0553464d8ff8dcd1fc224192b5c2bac2e11e2394a62f080af1e29b932` |
| 14 | `theorem` | [a2_upper_30_part3](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-30-part3--23ced5efe2d54fe65a3ad0b7.md) | 85 | `result-track:23ced5efe2d54fe65a3ad0b7a626fc69e4a9d2eb7dbf355ab31747732ad4b22b` |
| 15 | `theorem` | [a2_lower_30_part4](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-30-part4--445c5779b455446fd1f9c043.md) | 89 | `result-track:445c5779b455446fd1f9c0432b0c554cf9638133a1d0005d62d5add2a3c387d6` |
| 16 | `theorem` | [a2_upper_30_part4](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-30-part4--0d45e706f8526f91ac475361.md) | 93 | `result-track:0d45e706f8526f91ac4753611e775f012bbaf3a2220bdea5c85316aafe12e617` |
| 17 | `theorem` | [a2_bound_30](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-bound-30--e8fbe2a30d8f2a7ab2f8a706.md) | 97 | `result-track:e8fbe2a30d8f2a7ab2f8a70683069d72a3ea5a565f3a3ca6e59cd61421793162` |
| 18 | `theorem` | [a2_lower_35_part1](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-35-part1--0215e20962dafd3af5ef672f.md) | 112 | `result-track:0215e20962dafd3af5ef672f1190f56e8f7f76542bac76413743393e1ab0d5b0` |
| 19 | `theorem` | [a2_upper_35_part1](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-35-part1--913c593dfb8e988b8ae2575b.md) | 116 | `result-track:913c593dfb8e988b8ae2575be73ac3044ddd8ce3516bbc09b9c5482f3a2edd72` |
| 20 | `theorem` | [a2_lower_35_part2](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-35-part2--fd169b2a50d392d4fa8c573f.md) | 120 | `result-track:fd169b2a50d392d4fa8c573f6d429bbcf2b2195add4a620c9986fe48398b4329` |
| 21 | `theorem` | [a2_upper_35_part2](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-35-part2--d677784e9f3e21251063f7c2.md) | 124 | `result-track:d677784e9f3e21251063f7c2d897c2ccfd88569767904b9c21c89ad3db7479cd` |
| 22 | `theorem` | [a2_lower_35_part3](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-35-part3--4ad810ffd271c50d553b6e7d.md) | 128 | `result-track:4ad810ffd271c50d553b6e7d34013681c7e2a856a79648cf1ed47a06f92ede74` |
| 23 | `theorem` | [a2_upper_35_part3](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-35-part3--d5b02f4db1f493cea622759c.md) | 132 | `result-track:d5b02f4db1f493cea622759c37d12b2704a0fa30890f9e77e407ca8421379cc3` |
| 24 | `theorem` | [a2_lower_35_part4](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-35-part4--83b8524a5d9c8b35b83477af.md) | 136 | `result-track:83b8524a5d9c8b35b83477afc7397b897de9a6710694b06e6e38f6c147f37d13` |
| 25 | `theorem` | [a2_upper_35_part4](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-35-part4--08e1325c5741a22987ce8687.md) | 140 | `result-track:08e1325c5741a22987ce8687d4b6f4ef5a63ae082e47635463e3b7f01ee8b5a5` |
| 26 | `theorem` | [a2_bound_35](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-bound-35--6838be4e43c5d40a79e6dcba.md) | 144 | `result-track:6838be4e43c5d40a79e6dcba7d5d761d778606e38860121fb4dc39dae28c5831` |
| 27 | `theorem` | [a2_lower_40_part1](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-40-part1--856f7666972bb4f60091136a.md) | 159 | `result-track:856f7666972bb4f60091136a3de7fc8549a9dbe611ad4a45ab43d79427763ecc` |
| 28 | `theorem` | [a2_upper_40_part1](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-40-part1--89b4b4237b31ed8c0b6174f4.md) | 163 | `result-track:89b4b4237b31ed8c0b6174f44f7fdde99d33e55a3e4c6a178fe03a2e2b539dbe` |
| 29 | `theorem` | [a2_lower_40_part2](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-40-part2--c223bd8570c346f59786d1f4.md) | 167 | `result-track:c223bd8570c346f59786d1f48e7a9c210bcf5cc015be39b12304ca0ea5418ba7` |
| 30 | `theorem` | [a2_upper_40_part2](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-40-part2--95fdb0c0eed2afa931282c06.md) | 171 | `result-track:95fdb0c0eed2afa931282c06eb7eec8a2b2280f2af6182a0bfce4d70ebdce15c` |
| 31 | `theorem` | [a2_lower_40_part3](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-40-part3--2dfc4070baeae8359dd72831.md) | 175 | `result-track:2dfc4070baeae8359dd72831b8b9f3b875a94d60e524b572c7108afd01230700` |
| 32 | `theorem` | [a2_upper_40_part3](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-40-part3--2b50278df9f3f10b5e5fd98b.md) | 179 | `result-track:2b50278df9f3f10b5e5fd98bb07ed734603bc9d3096a749ba572b94f1998e922` |
| 33 | `theorem` | [a2_lower_40_part4](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-40-part4--434b9482c0df02d316c449e7.md) | 183 | `result-track:434b9482c0df02d316c449e7026c2dbc833e2da223ba46b9ba86329d63fe7749` |
| 34 | `theorem` | [a2_upper_40_part4](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-40-part4--9174ffa65ee67b1b98962913.md) | 187 | `result-track:9174ffa65ee67b1b98962913514337b7eb50250ad2ab09fdaa0db0779e4c4338` |
| 35 | `theorem` | [a2_lower_40_part5](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-40-part5--4367d950e1fd58004eb38d31.md) | 191 | `result-track:4367d950e1fd58004eb38d313915b18d51e6753a1e3fac804168fd2bbfd115e8` |
| 36 | `theorem` | [a2_upper_40_part5](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-40-part5--2f60cced7bd71447b9acf1f2.md) | 195 | `result-track:2f60cced7bd71447b9acf1f2d5c84a9736d351da3a664ae4dcb98f944effe691` |
| 37 | `theorem` | [a2_bound_40](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-bound-40--6d2d70017d8afdd04fbbb77a.md) | 199 | `result-track:6d2d70017d8afdd04fbbb77a2615ce25bfcc090a7162cc5e80d165acc7053948` |
| 38 | `theorem` | [a2_lower_43_part1](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-43-part1--566393ad1a972edfd3045e21.md) | 216 | `result-track:566393ad1a972edfd3045e211e54c212cf6b1013bf24d8c3760214e9a698ea72` |
| 39 | `theorem` | [a2_upper_43_part1](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-43-part1--810a3fca4e034bca91b766f0.md) | 220 | `result-track:810a3fca4e034bca91b766f0bfbbc42c1203cf1ccf5282512f564856c246f011` |
| 40 | `theorem` | [a2_lower_43_part2](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-43-part2--bf4d9dc4db45892acdc757af.md) | 224 | `result-track:bf4d9dc4db45892acdc757af86ca3701f998e8151f1d8c3c136d4ba2ba7e1ff1` |
| 41 | `theorem` | [a2_upper_43_part2](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-43-part2--d02782bfcc1ccdc691aa8611.md) | 228 | `result-track:d02782bfcc1ccdc691aa861152c718c4542c9351ec5464f95e24790c2c444e99` |
| 42 | `theorem` | [a2_lower_43_part3](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-43-part3--d5949ecca0ae0e2559a1b9d2.md) | 232 | `result-track:d5949ecca0ae0e2559a1b9d2612d048b9361c378bac2f54b376d4eaf98f151a9` |
| 43 | `theorem` | [a2_upper_43_part3](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-43-part3--48e1eb584c6be77f714c978c.md) | 236 | `result-track:48e1eb584c6be77f714c978c9246ae5ecc862a32f7d922333b14e64cb3c99d60` |
| 44 | `theorem` | [a2_lower_43_part4](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-43-part4--1dc7b68a0254986a814dcd49.md) | 240 | `result-track:1dc7b68a0254986a814dcd49d83a89a4957f0c86604a113bed3e671b72a93e5f` |
| 45 | `theorem` | [a2_upper_43_part4](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-43-part4--68a89987247c2ede8548ab0a.md) | 244 | `result-track:68a89987247c2ede8548ab0a7b582107fb56cf5e3ca775b4e4af71382594562d` |
| 46 | `theorem` | [a2_lower_43_part5](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-43-part5--83d5513d781ea2fd42aa98ad.md) | 248 | `result-track:83d5513d781ea2fd42aa98ad61a5f0de5dedf4a769b43b1f0e86b579012b84db` |
| 47 | `theorem` | [a2_upper_43_part5](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-43-part5--0d1c59610334af01ac7ebf2b.md) | 252 | `result-track:0d1c59610334af01ac7ebf2be4199153d5ced3cc0b8ec95408d4393cdbc92a66` |
| 48 | `theorem` | [a2_bound_43](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-bound-43--3c1a59fa680c152d08efcc3d.md) | 256 | `result-track:3c1a59fa680c152d08efcc3dafc358c23ee899079ce12bd11b2f244629763bdb` |
| 49 | `theorem` | [a2_lower_100](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-100--19ee7c2b8e4c337562993f59.md) | 273 | `result-track:19ee7c2b8e4c337562993f59ed4caedc12f95c3d56c9cd8a5af9422184889a9c` |
| 50 | `theorem` | [a2_upper_100](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-100--f8cc3c1db8a1e6df62e97114.md) | 277 | `result-track:f8cc3c1db8a1e6df62e97114cc91fe1f8c1ef70b239efb1b73708003cdf33158` |
| 51 | `theorem` | [a2_lower_150](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-150--8782e914f2448dc7ba653b1b.md) | 282 | `result-track:8782e914f2448dc7ba653b1bb239af8a7ebe5a21aed7132fdcae93d520ba92e2` |
| 52 | `theorem` | [a2_upper_150](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-150--33b06272a639efde785d0052.md) | 286 | `result-track:33b06272a639efde785d00529b5d751afb5cd4cb3273930ba48311cdc7dd3c8a` |
| 53 | `theorem` | [a2_lower_200](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-200--e15a71c8e4f23b3ce71ba013.md) | 291 | `result-track:e15a71c8e4f23b3ce71ba013e256d6aff56a16c7941f2a0a8c1267ab72faf050` |
| 54 | `theorem` | [a2_upper_200](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-200--f3f909ce36b4e9408a0d72e8.md) | 295 | `result-track:f3f909ce36b4e9408a0d72e88bc55cdaf918ae7d361e16ede6c5964934c6600e` |
| 55 | `theorem` | [a2_lower_250](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-250--0dd6159ada6555356c061881.md) | 300 | `result-track:0dd6159ada6555356c06188148236ec8280e05e2b43f267159ce849b3b8e5dec` |
| 56 | `theorem` | [a2_upper_250](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-250--39328b5c952d685905841616.md) | 304 | `result-track:39328b5c952d685905841616a1438bdfb7e98ef05e0125b27d46b2ca2511bd6b` |
| 57 | `theorem` | [a2_lower_300](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-lower-300--6ad2fab3fe841aed667f2d39.md) | 309 | `result-track:6ad2fab3fe841aed667f2d391d5da54531c2d03715dbb9dd17b89aa8e8d32d81` |
| 58 | `theorem` | [a2_upper_300](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/declarations/a2-upper-300--2b6ae423e7786cfc94880f88.md) | 313 | `result-track:2b6ae423e7786cfc94880f880b72d7ee37f013a74191cca2342ed01d49b6e1e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
