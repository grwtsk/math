# Verification target: GRWTSK.Algebra.PFilter.Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34a28d2270b07cc44c1e1a29b9624b5aca4e3453",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/index.md) · [Full source](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34a28d2270b07cc44c1e1a29b9624b5aca4e3453`.

Source path: `GRWTSK/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Ideal` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PFilter](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/pfilter--0066afccf140cc933588bc23.md) | 49 | `declaration-track:0066afccf140cc933588bc237a7a3a85a681958b4604661dd298a157c9793e76` |
| 2 | `def` | [IsPFilter](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/ispfilter--1798fb49e55dc100e0a5be25.md) | 55 | `declaration-track:1798fb49e55dc100e0a5be25f623c6977b8fa6e936bdbe27ec787651bf00c3bb` |
| 3 | `theorem` | [IsPFilter.of_def](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/ispfilter-of-def--b60aea894543ecc6906d8c36.md) | 58 | `result-track:b60aea894543ecc6906d8c360c47d84a308aa4a2fe25520ad3be5da213990059` |
| 4 | `def` | [IsPFilter.toPFilter](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/ispfilter-topfilter--da1c7a58355f3e2a310871bd.md) | 65 | `declaration-track:da1c7a58355f3e2a310871bdb221e6f0c393bb7deda7e63199a925e37570d744` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/instance--17d0a021bd96f497b8943576.md) | 74 | `declaration-track:17d0a021bd96f497b8943576270426b0f4468c74fd749810f5c414db226b276b` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/instance--bceb0cc84edbcb5ab8f7f567.md) | 77 | `declaration-track:bceb0cc84edbcb5ab8f7f5679dc979c18521657b2ac15fa0ddbf1a32cae659e2` |
| 7 | `theorem` | [isPFilter](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/ispfilter--b9f2c77f93a82e4da0391a3f.md) | 81 | `result-track:b9f2c77f93a82e4da0391a3f14cbd7d512674a98272eaa062464482127838288` |
| 8 | `theorem` | [nonempty](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/nonempty--689465b03be63a4ce915c16e.md) | 83 | `result-track:689465b03be63a4ce915c16ef546899666155ca694aa47eee0dabcdd13d13d1e` |
| 9 | `theorem` | [directed](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/directed--5a0948997bc33bb678c34be5.md) | 85 | `result-track:5a0948997bc33bb678c34be537b4716c93dcd4687fb7ab4b2e953c37d54b3456` |
| 10 | `theorem` | [mem_of_le](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/mem-of-le--d17e874659714dc95672e8eb.md) | 87 | `result-track:d17e874659714dc95672e8eb11b5e143588b1ae62cca72617705cfda4f4af709` |
| 11 | `theorem` | [ext](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/ext--57212880ca1ee9fd65376faf.md) | 91 | `result-track:57212880ca1ee9fd65376faf0c453dd4cc046c59a422393602bb61cce21193fa` |
| 12 | `theorem` | [mem_of_mem_of_le](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/mem-of-mem-of-le--a0b4f1170dbf8808a9524ea9.md) | 94 | `result-track:a0b4f1170dbf8808a9524ea9e31c733991195a8ab8286300d3c01d3f45bd029d` |
| 13 | `def` | [principal](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/principal--e7c54157dfc4277d226a3b13.md) | 98 | `declaration-track:e7c54157dfc4277d226a3b13dae2a3c02c351fc3ebb0fe15592a7d8b06d77749` |
| 14 | `theorem` | [mem_mk](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/mem-mk--11f4c4cb805447f3e4699703.md) | 102 | `result-track:11f4c4cb805447f3e4699703bf7f1542c0e487ed5f7d6749cd91d49211cef979` |
| 15 | `theorem` | [principal_le_iff](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/principal-le-iff--4de26784f8c43c23188751ec.md) | 106 | `result-track:4de26784f8c43c23188751ec4aa416b59c88710337406c4ce43b9c6aee8ab367` |
| 16 | `theorem` | [mem_principal](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/mem-principal--b9170f2ef10db463c8e896ef.md) | 109 | `result-track:b9170f2ef10db463c8e896ef60b0019b235c4ee8610a7bd6ff4f5954e6917bf4` |
| 17 | `theorem` | [principal_le_principal_iff](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/principal-le-principal-iff--92f7d1cbe055e0c811fbd7ef.md) | 111 | `result-track:92f7d1cbe055e0c811fbd7eff79f24746f2fbb49561d68584cf447bacd671ecd` |
| 18 | `theorem` | [antitone_principal](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/antitone-principal--4037384da406e1c2ebf53afb.md) | 114 | `result-track:4037384da406e1c2ebf53afb7893aafb13b849b74e8829590aec904acf949cdb` |
| 19 | `theorem` | [top_mem](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/top-mem--d9fc10097a37137b394922d5.md) | 124 | `result-track:d9fc10097a37137b394922d52c2ff947b061a7ec51b3eb008d45f0e982d465ac` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/instance--213c18b4ffa78a5cdf4d5bdb.md) | 127 | `declaration-track:213c18b4ffa78a5cdf4d5bdb5d59da2dab711fec08ee81db1a289ca50503deba` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/instance--c38ef114a7fa0196b112c713.md) | 134 | `declaration-track:c38ef114a7fa0196b112c7139e0af85d16bd8ca88d841069a0d78dbf72eb7817` |
| 22 | `theorem` | [inf_mem](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/inf-mem--ff67cae6aa93584029fd6987.md) | 143 | `result-track:ff67cae6aa93584029fd698717df154a1ce7a14d65dcea88c2b038fafedc9287` |
| 23 | `theorem` | [inf_mem_iff](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/inf-mem-iff--58672e7c85aa77f6ece6c071.md) | 147 | `result-track:58672e7c85aa77f6ece6c0719dec568172d6d486603e5859de5f34dd66f170d1` |
| 24 | `theorem` | [sInf_gc](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/sinf-gc--8c20a4766f677fceff9e7645.md) | 156 | `result-track:8c20a4766f677fceff9e7645294ac7f43849c3c655e951643cf2c7153cdd0093` |
| 25 | `def` | [infGi](../../../../mathematics/Algebra/PFilter/Variantf8f1800a7214ac3d6760909e339dc1c08012b1d858344906b8238a010d2581b9.lean/declarations/infgi--eae20e70627bfa36612a56cb.md) | 161 | `declaration-track:eae20e70627bfa36612a56cbd9dafeb1f319ac6f5242c92cfb1ca3ef3b802011` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
