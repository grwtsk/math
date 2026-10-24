# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Map2.Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96001750987ae6ad0e5d17dbacba38af5e383130",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96001750987ae6ad0e5d17dbacba38af5e383130`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map₂Left'_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/map-left-nil-right--a0e9f1b5dffdcbe32814d277.md) | 46 | `result-track:a0e9f1b5dffdcbe32814d277bfb099175615ae907dc020c3b9390c2d81424371` |
| 2 | `theorem` | [map₂Right'_nil_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/map-right-nil-left--9ecc797a578bfb39ecb954c8.md) | 58 | `result-track:9ecc797a578bfb39ecb954c82e28c7e2b62f10adc4b3807acbecba00e143b447` |
| 3 | `theorem` | [map₂Right'_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/map-right-nil-right--650605321e01e9919c1b34dd.md) | 61 | `result-track:650605321e01e9919c1b34ddfabc308cf79fb2bd5fc58ebed1753216cb763758` |
| 4 | `theorem` | [map₂Right'_nil_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/map-right-nil-cons--074f78b54d2bbbbc160344f5.md) | 65 | `result-track:074f78b54d2bbbbc160344f54029c953d9a9810ea935da5d8058c7d330a3eb7f` |
| 5 | `theorem` | [map₂Right'_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/map-right-cons-cons--cdae78393b6e3b93e0545c76.md) | 69 | `result-track:cdae78393b6e3b93e0545c762d551ef7d24235a73a3e092d7db08f39ade88375` |
| 6 | `theorem` | [nil_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/nil-zipwith--94731cd05eb29591f5b014f6.md) | 79 | `result-track:94731cd05eb29591f5b014f67a6f6bd32f71cd98400a2b317924292f18507fee` |
| 7 | `theorem` | [zipWith_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/zipwith-nil--e5e9074a62fd656638a6fdbf.md) | 81 | `result-track:e5e9074a62fd656638a6fdbf6ed1bb070ef374d5607d6f03c62820e90d07eb57` |
| 8 | `theorem` | [zipWith_flip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/zipwith-flip--f4495209c8e43aa6f2f74291.md) | 84 | `result-track:f4495209c8e43aa6f2f74291b3370b8cf62d33d564dacf3bc3e6c467470ce134` |
| 9 | `theorem` | [zipLeft'_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/zipleft-nil-right--5f4f461cc4d6993669d0f50f.md) | 100 | `result-track:5f4f461cc4d6993669d0f50f9f43d0c0bb1b024e16353f038db54662fe088f19` |
| 10 | `theorem` | [zipLeft'_nil_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/zipleft-nil-left--55788e3924f784ebd9746bd2.md) | 104 | `result-track:55788e3924f784ebd9746bd2574dbbe4d050f384ca40682da6c0360c4c38eac3` |
| 11 | `theorem` | [zipLeft'_cons_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/zipleft-cons-nil--dc527bb3cb25c4dda7164b49.md) | 108 | `result-track:dc527bb3cb25c4dda7164b49130d8b4b6693c04cd442803a952a62513e18c067` |
| 12 | `theorem` | [zipLeft'_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/zipleft-cons-cons--171e84f65c585b39b52303dd.md) | 113 | `result-track:171e84f65c585b39b52303dd9bb9e23aac7e559818598e77453f972cc3477733` |
| 13 | `theorem` | [zipRight'_nil_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/zipright-nil-left--134feeb965474734901966e6.md) | 128 | `result-track:134feeb965474734901966e65485802aef32504fdfc0d693ded36647c14388e7` |
| 14 | `theorem` | [zipRight'_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/zipright-nil-right--4c7e28582113a3e6b378f1a3.md) | 132 | `result-track:4c7e28582113a3e6b378f1a38cabbd9d8cea21a533d71e78fcf3855816f37efd` |
| 15 | `theorem` | [zipRight'_nil_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/zipright-nil-cons--baa60cd14e65e1d81570b9f3.md) | 136 | `result-track:baa60cd14e65e1d81570b9f3a268239f7cec4d5da6ceda8e9859b4ae17df8c39` |
| 16 | `theorem` | [zipRight'_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/zipright-cons-cons--a3ba277fcdd4e97c47646de0.md) | 141 | `result-track:a3ba277fcdd4e97c47646de01418067051659eda4185678ff69726ec73623175` |
| 17 | `theorem` | [map₂Left_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/map-left-nil-right--75b043de323fccf00bd97154.md) | 158 | `result-track:75b043de323fccf00bd9715435ab791e82bc983d45b74c3ebce02987c3a7f363` |
| 18 | `theorem` | [map₂Left_eq_map₂Left'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/map-left-eq-map-left--a92047ee2852dce8727c043b.md) | 160 | `result-track:a92047ee2852dce8727c043bd9436a4dadc6845c671fcc675c2196dd3a8764ad` |
| 19 | `theorem` | [map₂Left_eq_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/map-left-eq-zipwith--b09c9a691750a128da9ac88b.md) | 165 | `result-track:b09c9a691750a128da9ac88ba4e7757f0b8f7eb654c79eac37112d1750db5402` |
| 20 | `theorem` | [map₂Right_nil_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/map-right-nil-left--a1eece235a394fd1c97fd2b8.md) | 184 | `result-track:a1eece235a394fd1c97fd2b8d93ae757e54c91acbb1081ecd4688bcfeca3b8a4` |
| 21 | `theorem` | [map₂Right_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/map-right-nil-right--6ed07ff335f3b9a8fd509702.md) | 187 | `result-track:6ed07ff335f3b9a8fd509702d9c263ee01b00ba484fb8866cb76496e68c7a979` |
| 22 | `theorem` | [map₂Right_nil_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/map-right-nil-cons--d05099d31d5d66f0fa00b7a1.md) | 191 | `result-track:d05099d31d5d66f0fa00b7a1951e295015cdfaeadef3bcab3e70b407f3cf3c2c` |
| 23 | `theorem` | [map₂Right_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/map-right-cons-cons--b064016af85528a86b06a658.md) | 195 | `result-track:b064016af85528a86b06a6585400699ce06a6247254f42b1dffede1183f07fb3` |
| 24 | `theorem` | [map₂Right_eq_map₂Right'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/map-right-eq-map-right--f9bcc4b5ec38bdf875c25091.md) | 199 | `result-track:f9bcc4b5ec38bdf875c250913832694cc2f92a38a0fac805120eafc2291dd79f` |
| 25 | `theorem` | [map₂Right_eq_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/map-right-eq-zipwith--7cdcbd7a462f8415a606523e.md) | 202 | `result-track:7cdcbd7a462f8415a606523ec7cc5b35f4db8a22c35d0a091554de989b76ee25` |
| 26 | `theorem` | [zipLeft_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/zipleft-nil-right--0cf622c32ad3b0b658acd39c.md) | 216 | `result-track:0cf622c32ad3b0b658acd39c93fed51554b56cfd442e6330b1a4094550b57eb9` |
| 27 | `theorem` | [zipLeft_nil_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/zipleft-nil-left--25917c80958da6ac3e595b66.md) | 220 | `result-track:25917c80958da6ac3e595b6688bc6f2a232df167698c331cb43b1e07495bea87` |
| 28 | `theorem` | [zipLeft_cons_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/zipleft-cons-nil--5deb8e68ca5d30c412689082.md) | 224 | `result-track:5deb8e68ca5d30c412689082051b81659889a8bdbc45fd3bf548ff1588d0dd36` |
| 29 | `theorem` | [zipLeft_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/zipleft-cons-cons--e022f1fbe0f15209c2514b37.md) | 229 | `result-track:e022f1fbe0f15209c2514b37198df6fdbe7649e6c37dd21caf27bbce13677196` |
| 30 | `theorem` | [zipLeft_eq_zipLeft'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/zipleft-eq-zipleft--8ee134d646b88a7645f80cc8.md) | 232 | `result-track:8ee134d646b88a7645f80cc84eff83bf14c6d46dd0a784f16705953fee5a06f5` |
| 31 | `theorem` | [zipRight_nil_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/zipright-nil-left--e13606d2b54b12f93d8b028f.md) | 252 | `result-track:e13606d2b54b12f93d8b028f8f4bf3304f6daae8291a0db80eb25c2873863741` |
| 32 | `theorem` | [zipRight_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/zipright-nil-right--3f08945d50e948d0a13a33f5.md) | 256 | `result-track:3f08945d50e948d0a13a33f5081db0400446f0a46c8a540b2ca853b5417b6d69` |
| 33 | `theorem` | [zipRight_nil_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/zipright-nil-cons--6c9840d7a7a332491b46e82c.md) | 260 | `result-track:6c9840d7a7a332491b46e82caabb1acfd3c7de51bddf618ef3cefe7779e69812` |
| 34 | `theorem` | [zipRight_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/zipright-cons-cons--115975520cf02971c07a42c3.md) | 265 | `result-track:115975520cf02971c07a42c3de335fb01764f7c9b0b75061a86289f3276fda48` |
| 35 | `theorem` | [zipRight_eq_zipRight'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variant84ddb2536d3a4b69c2f38577e86ce0a6f3c0cf093f420a14a687991c99a2a04d.lean/declarations/zipright-eq-zipright--e4c071ada4f101865c74697b.md) | 268 | `result-track:e4c071ada4f101865c74697b6732d13fa79db7b749435e9adf7ea27b64bf423e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
