# Verification target: GRWTSK.Algebra.LinearAlgebra.Quotient.Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d70712bd61d5066ccf61488ca2fc24809536341",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d70712bd61d5066ccf61488ca2fc24809536341`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Submodule` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Isomorphisms` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/instance--ce022ecb085963992cb226dc.md) | 46 | `declaration-track:ce022ecb085963992cb226dc6a97b55e92f999665cb12484906047e1f8c67da9` |
| 2 | `instance` | [addCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/addcommgroup--60180652915e8d072e9d3f4d.md) | 53 | `declaration-track:60180652915e8d072e9d3f4deb518989c40ce6bb1641caba68c268cda34dc091` |
| 3 | `instance` | [module'](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/module--018136a6d192716c3186fe7e.md) | 57 | `declaration-track:018136a6d192716c3186fe7eae68c456d944526a11c562e124803253357455ac` |
| 4 | `instance` | [module](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/module--c4cf652f8580a5abae500114.md) | 62 | `declaration-track:c4cf652f8580a5abae500114e591e2e99bc0114b4d61d89c3630aa6751087316` |
| 5 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/iscentralscalar--48e8669cf2b7535e4abbde05.md) | 66 | `declaration-track:48e8669cf2b7535e4abbde0582c57679a1cc99b3d5c8e997a7d1ebc0871dfbee` |
| 6 | `instance` | [inhabited](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/inhabited--c1a57d1828f63edb1d13b1b3.md) | 72 | `declaration-track:c1a57d1828f63edb1d13b1b3ac450043ec74a1295e3c3f7f8599fbd438af1148` |
| 7 | `abbrev` | [mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/mk--709f01799b8e51cb38b8ed60.md) | 78 | `declaration-track:709f01799b8e51cb38b8ed600d8413c6ed43cd103cea75eeb211d9d10f298d5a` |
| 8 | `theorem` | [is_quotient_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/is-quotient-mk--68821000d0e70d96c608dc28.md) | 82 | `result-track:68821000d0e70d96c608dc28604b6c855d02ddf4abf8c5f9a7db670a4ea0c1f0` |
| 9 | `def` | [lieSubmoduleInvariant](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/liesubmoduleinvariant--f2d7a92324fd64ddfa967f15.md) | 88 | `declaration-track:f2d7a92324fd64ddfa967f15291d77b6d9b4a189af918e1ab75aeead38424646` |
| 10 | `def` | [actionAsEndoMap](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/actionasendomap--d573426f0103d4fedaec1aa7.md) | 96 | `declaration-track:d573426f0103d4fedaec1aa75f1eea84a1e6373300bcbe8fc484e4da16959805` |
| 11 | `instance` | [actionAsEndoMapBracket](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/actionasendomapbracket--5d1a6aa176aa00ab691051ff.md) | 105 | `declaration-track:5d1a6aa176aa00ab691051ff2030672f0049da2f53d8966d754cbd5976d2134a` |
| 12 | `instance` | [lieQuotientLieRingModule](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/liequotientlieringmodule--530551dbed2bb2085be77315.md) | 109 | `declaration-track:530551dbed2bb2085be7731591f89ec845753643ba5c07756f7d651858b1074b` |
| 13 | `instance` | [lieQuotientLieModule](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/liequotientliemodule--fc2ade99404d9b45418ebbe1.md) | 114 | `declaration-track:fc2ade99404d9b45418ebbe139726509561878aaf835f2bd19694c46a8d8fa1e` |
| 14 | `instance` | [lieQuotientHasBracket](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/liequotienthasbracket--ffe77f4eedd24aa1dbbb4f2a.md) | 118 | `declaration-track:ffe77f4eedd24aa1dbbb4f2a8439af36bc8d400a348600f8f91b23fb067799d8` |
| 15 | `theorem` | [mk_bracket](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/mk-bracket--9aea064004de761adc691b2a.md) | 134 | `result-track:9aea064004de761adc691b2ac39eb4d93b3f38d145028abec15913f1ceee6761` |
| 16 | `instance` | [lieQuotientLieRing](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/liequotientliering--2724ed05cc89af5802d40636.md) | 138 | `declaration-track:2724ed05cc89af5802d40636ad1158fe61e877af4f2a2f6703b3013a40063b16` |
| 17 | `instance` | [lieQuotientLieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/liequotientliealgebra--f369530545f59b0878e9ab7d.md) | 169 | `declaration-track:f369530545f59b0878e9ab7dae24e2a5aec748911767beb323514aad21d5e680` |
| 18 | `def` | [mk'](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/mk--87ea789cdc0835215a86a67f.md) | 182 | `declaration-track:87ea789cdc0835215a86a67f21d9be587aaf49256c63e7af5739fcf97835f2fc` |
| 19 | `theorem` | [mk_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/mk-eq-zero--688eea35ae70c639c015db2e.md) | 189 | `result-track:688eea35ae70c639c015db2e2a9cea960a74140b3b91b32974ebe842932b8ad8` |
| 20 | `theorem` | [mk_eq_zero'](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/mk-eq-zero--22027d34fe22e1d8746a0db5.md) | 195 | `result-track:22027d34fe22e1d8746a0db5a586a13316d5adfddf69c4520cd9e25134f23d69` |
| 21 | `theorem` | [mk'_ker](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/mk-ker--32d40dbdcb2cbb69153069ca.md) | 199 | `result-track:32d40dbdcb2cbb69153069caeeff3fe1760e0caa46d51b22480a3cedaf35fd8d` |
| 22 | `theorem` | [map_mk'_eq_bot_le](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/map-mk-eq-bot-le--29c41a09007447912fe32dc4.md) | 203 | `result-track:29c41a09007447912fe32dc434a29174d5f639c1c7355c44adcacb28e01d74f8` |
| 23 | `theorem` | [lieModuleHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/liemodulehom-ext--9602a9ce53d50cb20eb704e4.md) | 212 | `result-track:9602a9ce53d50cb20eb704e40191a580f400385b0bc4f0f7121e5affa6329301` |
| 24 | `def` | [quotKerEquivRange](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantf664849635925b3306f770d404013d0df49a68dfa6fccebf7c394760bf1e447c.lean/declarations/quotkerequivrange--3c3d3c4a74834ed6cb859cc3.md) | 230 | `declaration-track:3c3d3c4a74834ed6cb859cc3c6fe396cd3425abad9a948cf6294095f8569ac8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
