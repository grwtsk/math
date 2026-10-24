# Verification target: GRWTSK.Algebra.RelNorm.Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "899507ca1ea1d129e8b781410b077f8e95d9caa6",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/index.md) · [Full source](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `899507ca1ea1d129e8b781410b077f8e95d9caa6`.

Source path: `GRWTSK/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.PID` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.NormTrace` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IntegralRestrict` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [spanNorm](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/spannorm--6448ca8c3c4a42f5ad617a34.md) | 49 | `declaration-track:6448ca8c3c4a42f5ad617a34e30714cfb4ca0c85e680829c233773df2c14f1dc` |
| 2 | `theorem` | [spanNorm_bot](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/spannorm-bot--4951d293560a7fed01fe6f22.md) | 53 | `result-track:4951d293560a7fed01fe6f22e249df8d663aa02ad31ad91e3bdf9eb75e1a6b8c` |
| 3 | `theorem` | [spanNorm_eq_bot_iff](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/spannorm-eq-bot-iff--0dce01653d0df80031b9aba4.md) | 58 | `result-track:0dce01653d0df80031b9aba467f4256ab718e22f59878c15004aa9d382a65376` |
| 4 | `theorem` | [intNorm_mem_spanNorm](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/intnorm-mem-spannorm--d03b5c023e1e91b192e4a98f.md) | 63 | `result-track:d03b5c023e1e91b192e4a98fd302fffe88f7fabea0d16e1c81ce5b345545973b` |
| 5 | `theorem` | [norm_mem_spanNorm](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/norm-mem-spannorm--03a2914f112f81ee27075ab1.md) | 67 | `result-track:03a2914f112f81ee27075ab1b7937158c151f607f7f7d1351fbf57812962e43c` |
| 6 | `theorem` | [spanNorm_singleton](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/spannorm-singleton--b075adc96cba7c6c0e17fc08.md) | 73 | `result-track:b075adc96cba7c6c0e17fc0841aadbf676c7e24fe68e31adf1ce9d7c75cc98ba` |
| 7 | `theorem` | [spanNorm_top](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/spannorm-top--4d6c1586c9cce9ec80c9d7fa.md) | 84 | `result-track:4d6c1586c9cce9ec80c9d7fa8863ea484c80e7943cbe6f29065e88a9302d278c` |
| 8 | `theorem` | [map_spanIntNorm](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/map-spanintnorm--21fa43fe0c10ba80f1e3c627.md) | 87 | `result-track:21fa43fe0c10ba80f1e3c6274d2a70c5b8c168e8aa27d806e678362a0c549146` |
| 9 | `theorem` | [spanNorm_mono](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/spannorm-mono--40772295207354c96f4eba88.md) | 94 | `result-track:40772295207354c96f4eba88c0baabdab250b68057cb51b7f6abfe92e3e4d2da` |
| 10 | `theorem` | [spanIntNorm_localization](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/spanintnorm-localization--04ddd66842acc2c828634981.md) | 97 | `result-track:04ddd66842acc2c8286349812218eb23d4fb4cd1d4889a03296d38f56ffa40e1` |
| 11 | `theorem` | [spanNorm_mul_spanNorm_le](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/spannorm-mul-spannorm-le--3ad238529b75fd50234f11b5.md) | 156 | `result-track:3ad238529b75fd50234f11b5e5c521887da164cad4ee4d96652bb4c1bbe684bf` |
| 12 | `theorem` | [spanNorm_mul_of_bot_or_top](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/spannorm-mul-of-bot-or-top--9a12ad60697b86b27c3e0bcb.md) | 168 | `result-track:9a12ad60697b86b27c3e0bcb852f734202cbe2894dc84bb637aa90a4ba94cf17` |
| 13 | `theorem` | [spanNorm_mul](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/spannorm-mul--98e83a79a8f9a4545277c312.md) | 183 | `result-track:98e83a79a8f9a4545277c312adb114b082500ebf3a8eb561fb163ff72f3a20cf` |
| 14 | `def` | [relNorm](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/relnorm--461ebb01c67b2b2fc57beec2.md) | 236 | `declaration-track:461ebb01c67b2b2fc57beec242335a0875e4351bbb56801ad82d88970690f086` |
| 15 | `theorem` | [relNorm_apply](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/relnorm-apply--88f7e71e4d8d7db07a7681c1.md) | 242 | `result-track:88f7e71e4d8d7db07a7681c1729861ab6723d66d3988ccd1a6fe7c1e524d8b8a` |
| 16 | `theorem` | [spanNorm_eq](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/spannorm-eq--abd375c5c4a7db5057b68589.md) | 247 | `result-track:abd375c5c4a7db5057b685896edee5f1450018482a4dc7016e967db48211060e` |
| 17 | `theorem` | [relNorm_bot](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/relnorm-bot--63c87982193d12a01946c157.md) | 250 | `result-track:63c87982193d12a01946c157b3191a8c1506683e6f71a9ef8311817795247960` |
| 18 | `theorem` | [relNorm_top](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/relnorm-top--79b1a9ea430c5cf5999ea262.md) | 254 | `result-track:79b1a9ea430c5cf5999ea262be51269862843f222c2a37863fe650018d4a7ba3` |
| 19 | `theorem` | [relNorm_eq_bot_iff](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/relnorm-eq-bot-iff--e731d4d4cefa20e1a58eb3b8.md) | 259 | `result-track:e731d4d4cefa20e1a58eb3b860785843d11ad160fb0b0e81cc2996f9e6de6780` |
| 20 | `theorem` | [norm_mem_relNorm](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/norm-mem-relnorm--ec2641c5abf637d9a70ce76a.md) | 262 | `result-track:ec2641c5abf637d9a70ce76a209a1614c968c598ae2d4ed65d39c7b2b31960fb` |
| 21 | `theorem` | [relNorm_singleton](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/relnorm-singleton--32a3104650a5e9f67bc5392c.md) | 267 | `result-track:32a3104650a5e9f67bc5392c789e40a50f581314ab93f1d1c6d5a0ae9447a9dd` |
| 22 | `theorem` | [map_relNorm](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/map-relnorm--165bbdb213e7ab0844bae53f.md) | 270 | `result-track:165bbdb213e7ab0844bae53fa3e4d7a1bc3ffcfdfef1fd2cba9c46635d0f3f22` |
| 23 | `theorem` | [relNorm_mono](../../../../mathematics/Algebra/RelNorm/Variantf0da49db74656161afbd47a2b6523d1c06d8596fea64362ae6cf57ece3c53ef8.lean/declarations/relnorm-mono--5375c92f345d11229d0851f3.md) | 275 | `result-track:5375c92f345d11229d0851f3382478f1e3837ff4b3983f986298eb50e0be6663` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
