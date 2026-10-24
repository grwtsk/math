# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DeriveFintype.Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4842ab5fb8a06b979e0e3e4eb20c269cb3e1f4b0",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4842ab5fb8a06b979e0e3e4eb20c269cb3e1f4b0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.DeriveFintype` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [A](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/a--c1dcba243b2efb1ace407373.md) | 20 | `declaration-track:c1dcba243b2efb1ace407373fd721707740a55b92133db57dc6d89b96bc8ed70` |
| 2 | `inductive` | [A'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/a--77875d4ee6eacefd8f87d021.md) | 29 | `declaration-track:77875d4ee6eacefd8f87d0210abc38b46666e7ea66f6d93ec8169b99db0f7e6b` |
| 3 | `inductive` | [A''](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/a--fb781dd83bf5e7ea26c3686e.md) | 38 | `declaration-track:fb781dd83bf5e7ea26c3686efa1222c3c8002b72ae2b21cb35bfe13f9fc5323e` |
| 4 | `inductive` | [B](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/b--aee6ea615466a19522fdbb59.md) | 52 | `declaration-track:aee6ea615466a19522fdbb59143ea11e6e97e5bacb9528c92b708673b94b0550` |
| 5 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/example--c4bb21f559aa4b059ba167c1.md) | 55 | `declaration-track:c4bb21f559aa4b059ba167c1eaac071ea6567bd840afcfcf0864805809987080` |
| 6 | `inductive` | [C](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/c--4a2bbdc6aa1d556d8ca2ae35.md) | 57 | `declaration-track:4a2bbdc6aa1d556d8ca2ae354e1bd62fc7474d4bae64e1c21e3e62f8f076152d` |
| 7 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/example--5435d6b6c4e9bdbbe1bfbed4.md) | 66 | `declaration-track:5435d6b6c4e9bdbbe1bfbed47f410b2f3d91afff03f5896c6288b92454657b62` |
| 8 | `inductive` | [C'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/c--3c3598d02f725f40a13ec980.md) | 68 | `declaration-track:3c3598d02f725f40a13ec980d2b68f654a3de846f44ea5907cde732cdcaf7d7a` |
| 9 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/example--7f050a40cd0c858d9a359e76.md) | 75 | `declaration-track:7f050a40cd0c858d9a359e76204b516b3de460443225c066752518b699ff9ffa` |
| 10 | `inductive` | [C''](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/c--a871049d903cd426b5c9ebf6.md) | 77 | `declaration-track:a871049d903cd426b5c9ebf6336c6ba6f06dd96bc37ce36b49fa1d39ba3a2007` |
| 11 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/example--23df8f5e9bf3ab6429213248.md) | 80 | `declaration-track:23df8f5e9bf3ab6429213248bf3082b6c8c85d530c9a474c70160bdbe440f014` |
| 12 | `inductive` | [D](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/d--0fb449ba09d8a3dafba2c97a.md) | 92 | `declaration-track:0fb449ba09d8a3dafba2c97a2601d0021ceba8e6010e546ee220b7e6189f60e5` |
| 13 | `inductive` | [baz](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/baz--03118fcc853531a1a8c48236.md) | 103 | `declaration-track:03118fcc853531a1a8c482364c17c58016b99b8c228369ac107370b4681086d2` |
| 14 | `inductive` | [bar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/bar--39e0f5247f36680e6185950d.md) | 106 | `declaration-track:39e0f5247f36680e6185950d03a57d72439fe725b425ff1ff8791cbd2f7d2924` |
| 15 | `inductive` | [Y](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/y--fd445b183591813953c91f87.md) | 113 | `declaration-track:fd445b183591813953c91f87ba935851d114a8b2286e02b2cbe2bcb906fa99b5` |
| 16 | `structure` | [S](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/s--c99cbc07646cdf1e2daf9682.md) | 117 | `declaration-track:c99cbc07646cdf1e2daf9682c2feea5cf31eb34d9b9e83c2826c5b316bc4cee6` |
| 17 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/example--6b17051c244d8e97e903f588.md) | 121 | `declaration-track:6b17051c244d8e97e903f588ecb0b66d543e6a0f4a3220fb280dc30a34ba62c1` |
| 18 | `inductive` | [MyOption](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/myoption--2ebe388ad8473cc5d9de27fe.md) | 123 | `declaration-track:2ebe388ad8473cc5d9de27feecfe4ae368d3cfec9455c0f1cdc9bb5c60fcc119` |
| 19 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/example--7bd59eb41e83643ab866fdee.md) | 128 | `declaration-track:7bd59eb41e83643ab866fdee56df25fac69d3439c0cf52c6f78e6da7f55386d9` |
| 20 | `inductive` | [I](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/i--aa4355a31d6046a7cb7e7741.md) | 131 | `declaration-track:aa4355a31d6046a7cb7e7741a9a9023faffd424fe535845d295b3bdd6451d296` |
| 21 | `inductive` | [I'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/i--d1398b403f5f9760bec719ae.md) | 135 | `declaration-track:d1398b403f5f9760bec719ae44f7c4606d7db08be9a016936fb88c88e059a7cd` |
| 22 | `def` | [myBoolInst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/myboolinst--b172d20804d562044c227439.md) | 143 | `declaration-track:b172d20804d562044c227439e97b556f82ce4672ff62d9a75071911bdc740874` |
| 23 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/example--21e209a8e52d9dd0f7f64127.md) | 145 | `declaration-track:21e209a8e52d9dd0f7f641279f1046277cdff254c94164207e106bd2a6f348a7` |
| 24 | `def` | [myBoolInst'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/myboolinst--c64e913a93dd391554fd85dc.md) | 147 | `declaration-track:c64e913a93dd391554fd85dc55a14cf6595003fe03924ac70aa603cd37fd0676` |
| 25 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/example--4b21f272188edff016b1bd92.md) | 149 | `declaration-track:4b21f272188edff016b1bd92977f7290a7fd7d0526d317b3d95ee7761572a7d1` |
| 26 | `def` | [myProdInst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/myprodinst--b3a5ec35b63a998ba6147196.md) | 151 | `declaration-track:b3a5ec35b63a998ba6147196e0acf45d7ce18106fcf9691254d25de6bb5e0d5f` |
| 27 | `structure` | [MySubtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/mysubtype--c58b4f338a9aa7baaf253dfb.md) | 153 | `declaration-track:c58b4f338a9aa7baaf253dfbebd3673ed2a8f351b015a8e65424ef40fb046a56` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/instance--6766e62515e7eeed5094776a.md) | 158 | `declaration-track:6766e62515e7eeed5094776aa033d904f875fc394b0af6d7a04fbab1adca7daa` |
| 29 | `inductive` | [Alphabet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/alphabet--cf5dbd822a8bdf0e4557a1fa.md) | 165 | `declaration-track:cf5dbd822a8bdf0e4557a1fa16c914a1ed306bba34526469ba3175db2a4ee238` |
| 30 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/example--bc90041d4d56707a1445f680.md) | 172 | `declaration-track:bc90041d4d56707a1445f680caf10b4b33303ba16ed8da51d90c6aa0b7d195e8` |
| 31 | `inductive` | [foo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/foo--d2f68d04c891a9088da0d176.md) | 174 | `declaration-track:d2f68d04c891a9088da0d176d4c01ba28794cf3a41e65c27efb83ee7cd46064f` |
| 32 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/example--ecd38ed3fb5fbe2afa068db6.md) | 180 | `declaration-track:ecd38ed3fb5fbe2afa068db635f8cef9ffcfb05024591369897113253384086f` |
| 33 | `inductive` | [foo2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/foo2--a8dea8e593b8aa242a236a14.md) | 182 | `declaration-track:a8dea8e593b8aa242a236a1413b75fde742ba268cbb89eeebaa21b5f82613cb0` |
| 34 | `inductive` | [foo3](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/foo3--91067ebecc0f62964c63bc32.md) | 189 | `declaration-track:91067ebecc0f62964c63bc32e4b55b247a7a564998510c9d824436ca6c667658` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/instance--000143ace83ae12dc127967d.md) | 194 | `declaration-track:000143ace83ae12dc127967de5d9cfe394c3dcacde6ba39891887d7568635149` |
| 36 | `structure` | [foo4](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/foo4--8b0e14d8fa4d32cca69d8777.md) | 197 | `declaration-track:8b0e14d8fa4d32cca69d8777d700eac8e5ca1fbc92aad701cc610a3ee4072794` |
| 37 | `class` | [MyClass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/myclass--c1a17a3a9932369cf68fc04c.md) | 203 | `declaration-track:c1a17a3a9932369cf68fc04c6c6e83cd32569f4cbd62c1a9928ef170f816f8ae` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant0b96c7ba59489cdfbd86ae0c5ecd0b4853296978deab18911dfb2ace2a97b6a7.lean/declarations/instance--e082b2c6b01973d1447396bd.md) | 207 | `declaration-track:e082b2c6b01973d1447396bdc67ce744584a77187845fdc0a91f111215c61db8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
