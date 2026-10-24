# Verification target: GRWTSK.Algebra.Closure.Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8c9add38b9573e5ca038f524bd6e9424a464ba2",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8c9add38b9573e5ca038f524bd6e9424a464ba2`.

Source path: `GRWTSK/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.SimpleRing.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Normal.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Closure` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Matrix` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsNormalClosure](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/isnormalclosure--dc7fd7b5f0eed7e26b5b4e9d.md) | 47 | `declaration-track:dc7fd7b5f0eed7e26b5b4e9d014b05211986a3bf7a3a5b4e32cd1a34649abac1` |
| 2 | `def` | [IntermediateField.normalClosure](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/intermediatefield-normalclosure--4837f05e2b018b5a1283bd7a.md) | 55 | `declaration-track:4837f05e2b018b5a1283bd7ae6cb8ab11cdc778b862645b8a909b102b6bf9887` |
| 3 | `lemma` | [normalClosure_def](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/normalclosure-def--4c99faaad8c5a18553204420.md) | 58 | `result-track:4c99faaad8c5a185532044205fe04c571b93b635b573b877fa6100a2a5f79ce8` |
| 4 | `lemma` | [IsNormalClosure.normal](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/isnormalclosure-normal--523b1b38bc033f60561aea88.md) | 64 | `result-track:523b1b38bc033f60561aea8850feb5b815c8fad95d2b7cde542947081deb5495` |
| 5 | `lemma` | [normalClosure_le_iff](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/normalclosure-le-iff--592d610ee35446d99829eb7e.md) | 68 | `result-track:592d610ee35446d99829eb7eeedce2b0f857bc48343a738bd4d5bba5683e3fa5` |
| 6 | `lemma` | [AlgHom.fieldRange_le_normalClosure](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/alghom-fieldrange-le-normalclosure--1165659506607a59bb4a1599.md) | 72 | `result-track:1165659506607a59bb4a1599e76951cdf1dcdc89f546bb759ad525d576ef009e` |
| 7 | `lemma` | [normalClosure_le_iSup_adjoin](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/normalclosure-le-isup-adjoin--09838286bbc6b691ec21a929.md) | 78 | `result-track:09838286bbc6b691ec21a92964ecfb203436cc24b06835062dddcf96cc5c1fb2` |
| 8 | `lemma` | [normalClosure_eq_iSup_adjoin_of_splits](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/normalclosure-eq-isup-adjoin-of-splits--10bc604e029daaddf7733749.md) | 88 | `result-track:10bc604e029daaddf7733749f8da7af82569177b5588e0391c94ab577ce183a2` |
| 9 | `lemma` | [isNormalClosure_iff](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/isnormalclosure-iff--e970df3baf64a356462bf127.md) | 98 | `result-track:e970df3baf64a356462bf1273baf8df204b5ad05884b1b068375c6b157ce7ac4` |
| 10 | `lemma` | [isNormalClosure_normalClosure](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/isnormalclosure-normalclosure--f034def6d50922e21742552f.md) | 107 | `result-track:f034def6d50922e21742552f07c4dcd03eb18da333c03fbbfffba2982e482d84` |
| 11 | `def` | [IsNormalClosure.lift](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/isnormalclosure-lift--8068c63d474f8338a145667d.md) | 124 | `declaration-track:8068c63d474f8338a145667d92346cba4c4499915011ed49f574200621f09294` |
| 12 | `def` | [IsNormalClosure.equiv](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/isnormalclosure-equiv--9852cce6c3e5a2a947bae88c.md) | 136 | `declaration-track:9852cce6c3e5a2a947bae88cfc0ac91ee918888052a174d363239ce0be98d0fc` |
| 13 | `instance` | [isNormalClosure_normalClosure](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/isnormalclosure-normalclosure--26b80d552e8a8ec4b8e4791c.md) | 146 | `declaration-track:26b80d552e8a8ec4b8e4791c818b4e67497250568272d8e94951d411cac2b29f` |
| 14 | `theorem` | [normalClosure_eq_iSup_adjoin'](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/normalclosure-eq-isup-adjoin--52035476482141e6a99e9d55.md) | 153 | `result-track:52035476482141e6a99e9d5545786b1f5640f95f6d7b0022aa9b2f2f9701e013` |
| 15 | `theorem` | [normalClosure_eq_iSup_adjoin](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/normalclosure-eq-isup-adjoin--06a6db7181602103e5002360.md) | 161 | `result-track:06a6db7181602103e5002360eac5e766cdf2f7d9766a1380315722d9bc0b2abc` |
| 16 | `def` | [algHomEquiv](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/alghomequiv--e7bf53696c5b7fc605f149b2.md) | 168 | `declaration-track:e7bf53696c5b7fc605f149b27742b376713ca9c4dfeb763326998ec650954532` |
| 17 | `instance` | [normal](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/normal--3b8d808abb64eee5356d19e0.md) | 175 | `declaration-track:3b8d808abb64eee5356d19e0f3038e4ac0287e9f2d3b5527f4deb5284c6229da` |
| 18 | `instance` | [is_finiteDimensional](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/is-finitedimensional--7d6c29cdf77e9847a0c31fac.md) | 181 | `declaration-track:7d6c29cdf77e9847a0c31facb004044b7d8bfb094408ff8bcece0c6a05c8b0e4` |
| 19 | `instance` | [algebra](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/algebra--812c4362c9d4596c8d4317a7.md) | 189 | `declaration-track:812c4362c9d4596c8d4317a70f1b67c49d8dbba721139546ff0f452cf97eb170` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/instance--449090e73bc595b63f2fb6f3.md) | 195 | `declaration-track:449090e73bc595b63f2fb6f300fb0b3c53dfbf62ee96f2f882d12184d11455c9` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/instance--41eb4f93b2e414426e8ca7c8.md) | 200 | `declaration-track:41eb4f93b2e414426e8ca7c89a49c0cae272192e3b41285f0f61833b8448b500` |
| 22 | `lemma` | [restrictScalars_eq](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/restrictscalars-eq--a61d5325f6fea48574a2face.md) | 203 | `result-track:a61d5325f6fea48574a2face41b32d094e4d2e754cf63409f67dd5e6979c6146` |
| 23 | `def` | [Algebra.IsAlgebraic.algHomEmbeddingOfSplits](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/algebra-isalgebraic-alghomembeddingofsplits--d97588243115527bcac0ecc8.md) | 216 | `declaration-track:d97588243115527bcac0ecc8538f64bf8c29ca8856a6269e5d88eb563c9b3941` |
| 24 | `lemma` | [le_normalClosure](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/le-normalclosure--d811ef2260801df9da867f2c.md) | 239 | `result-track:d811ef2260801df9da867f2c7e75ffcd7c1907995f074674926c157e7f18eaa9` |
| 25 | `lemma` | [normalClosure_of_normal](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/normalclosure-of-normal--b6130e9b6c356ecaf0307d3e.md) | 242 | `result-track:b6130e9b6c356ecaf0307d3eb3e0efd44ff693f00d223b28d2b961e4415d926d` |
| 26 | `lemma` | [normalClosure_def'](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/normalclosure-def--b704b78cffc0c1c652502ca9.md) | 247 | `result-track:b704b78cffc0c1c652502ca9e7211e06ffb8c573671ba929485347eabbbb8baa` |
| 27 | `lemma` | [normalClosure_def''](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/normalclosure-def--573beb4a900317a8bb3ff1b0.md) | 252 | `result-track:573beb4a900317a8bb3ff1b03d34d08ae6b647addd82e4a65aac5cb4e7004e93` |
| 28 | `lemma` | [normalClosure_mono](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/normalclosure-mono--030f3fb4268db396923326bc.md) | 258 | `result-track:030f3fb4268db396923326bcf8a52ae009d63079b21a493d386e5be4cc9e96c6` |
| 29 | `def` | [closureOperator](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/closureoperator--2dd1c72fadff68cff5f7bddc.md) | 266 | `declaration-track:2dd1c72fadff68cff5f7bddcb4ca4c6df70a35aa0249c59cd712025df24e0a32` |
| 30 | `lemma` | [normal_iff_normalClosure_eq](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/normal-iff-normalclosure-eq--0e79b26b96b462ced25ff6c2.md) | 274 | `result-track:0e79b26b96b462ced25ff6c2f3add2479e88ab8ba60125e4f5dd2451cd20dde0` |
| 31 | `lemma` | [normal_iff_normalClosure_le](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/normal-iff-normalclosure-le--e626601cfb1d270594ceb23e.md) | 277 | `result-track:e626601cfb1d270594ceb23e50074a9c798f84aa5b8de03d4e8deec57ae5359b` |
| 32 | `lemma` | [normal_iff_forall_fieldRange_le](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/normal-iff-forall-fieldrange-le--86e2e2c3ed63109a0412b9ab.md) | 280 | `result-track:86e2e2c3ed63109a0412b9abed82c747d23c993224e62bc2a4d73e928a4a6f0e` |
| 33 | `lemma` | [normal_iff_forall_map_le](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/normal-iff-forall-map-le--7c56f2ea431b53a58fa4582b.md) | 283 | `result-track:7c56f2ea431b53a58fa4582bd52348d49c81ca030f0ff5fe42f150bb374bba87` |
| 34 | `lemma` | [normal_iff_forall_map_le'](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/normal-iff-forall-map-le--4da17f24852a271d79051ce7.md) | 286 | `result-track:4da17f24852a271d79051ce78eb1b941352f9f3ece03293ad19fee28eb44fa08` |
| 35 | `lemma` | [normal_iff_forall_fieldRange_eq](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/normal-iff-forall-fieldrange-eq--f3c117f94af56e3070178565.md) | 292 | `result-track:f3c117f94af56e30701785652c3e45186b92dc53e75e74aa02f92a27d347f008` |
| 36 | `lemma` | [normal_iff_forall_map_eq](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/normal-iff-forall-map-eq--125c8e75575f2a1318f85193.md) | 295 | `result-track:125c8e75575f2a1318f851934f8480059b94a853a5d3c5a5a151a9bd02472abf` |
| 37 | `lemma` | [normal_iff_forall_map_eq'](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/normal-iff-forall-map-eq--af02ee39dc23ae9f13d01a56.md) | 299 | `result-track:af02ee39dc23ae9f13d01a5665ef6fdbc672623211d8c2ea7404dc33d81a64d8` |
| 38 | `lemma` | [normalClosure_map_eq](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/normalclosure-map-eq--3d25b92f729a84e084415842.md) | 303 | `result-track:3d25b92f729a84e084415842797c0e8ff056f49acfa7c499a983822c2e612da6` |
| 39 | `theorem` | [normalClosure_le_iff_of_normal](../../../../mathematics/Algebra/Closure/Variant0dcfd45998aaf3453776d5feb07ff7ff5651a783ee0b266a2adce5bdbc41dff2.lean/declarations/normalclosure-le-iff-of-normal--fdc42f614d478e3357364323.md) | 311 | `result-track:fdc42f614d478e3357364323bb442a71f0d3903e0a6b7d7f2c347f31f087a854` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
