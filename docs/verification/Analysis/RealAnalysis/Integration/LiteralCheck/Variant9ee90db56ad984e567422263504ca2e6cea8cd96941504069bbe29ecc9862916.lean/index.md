# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LiteralCheck.Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3002e56ad0dbc0f0eae50ccfd9e957786e9d1424",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3002e56ad0dbc0f0eae50ccfd9e957786e9d1424`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceConvolutionAE` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdjointExponential` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/instance--9faddad17c5918761d62d37f.md) | 20 | `declaration-track:9faddad17c5918761d62d37fc5990e2288b4f052ea97cf7bc4180c342105800d` |
| 2 | `def` | [controller](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/controller--a1e9bc729efcf06e017971e0.md) | 25 | `declaration-track:a1e9bc729efcf06e017971e0744c0b0b49df5d894ff9534e9ca33b175b5a9c39` |
| 3 | `def` | [response](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/response--fdf26f6a5121b2d73bc91839.md) | 29 | `declaration-track:fdf26f6a5121b2d73bc91839b014dd3067790993a077e6cd767d6a7e891a4244` |
| 4 | `theorem` | [controller_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/controller-ae--9fb34b60c38f1248670b5c06.md) | 32 | `result-track:9fb34b60c38f1248670b5c069f6958558f6611006a8b64bca429a2ba751953a9` |
| 5 | `theorem` | [controller_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/controller-inner--bb75400b26aae716a1d406d3.md) | 41 | `result-track:bb75400b26aae716a1d406d32b8fec29eb1787d91f6e5ed3f5542bb2c117f069` |
| 6 | `theorem` | [reference_inner_response](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/reference-inner-response--b257a0520ae0d60a6d167ee5.md) | 47 | `result-track:b257a0520ae0d60a6d167ee51b896c127912aaaf87db45df2beeff9628c0c8f9` |
| 7 | `theorem` | [response_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/response-ae--c0c6a36b4040459022b8975e.md) | 54 | `result-track:c0c6a36b4040459022b8975e3bae88e1c2ccec3f38649560c6996551bdaee9e0` |
| 8 | `def` | [signedCorrelation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/signedcorrelation--cb020d51a970d50e60a383be.md) | 66 | `declaration-track:cb020d51a970d50e60a383be869951dc876fcdda907d7123c9c9bf08dbe7f4af` |
| 9 | `def` | [signedCovariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/signedcovariance--62d7a177be69fa04c875a1df.md) | 70 | `declaration-track:62d7a177be69fa04c875a1df5957cb1204e1c91315dd317152858116503c3729` |
| 10 | `theorem` | [signedCorrelation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/signedcorrelation-integrable--73a25252f869be370e0dd910.md) | 74 | `result-track:73a25252f869be370e0dd910ad32cad1d7c78ae7ac50fe7605183d4a79caf2b1` |
| 11 | `theorem` | [shifted_kernel_norm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/shifted-kernel-norm-integral--b363b5926cf5012471b27250.md) | 81 | `result-track:b363b5926cf5012471b27250e53d998a04cdfa40d480c0907539fa2d0601e385` |
| 12 | `theorem` | [signed_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/signed-product-integrable--766f80173dc7968c61a3b182.md) | 86 | `result-track:766f80173dc7968c61a3b182ba472086d95fa5c8d877200e152110fd17d23c2f` |
| 13 | `theorem` | [weighted_signed_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/weighted-signed-product-integrable--7103b7073f5295b4a67d039c.md) | 109 | `result-track:7103b7073f5295b4a67d039cb7fecad42948110ae031eaa2c978deeb7f076405` |
| 14 | `theorem` | [signedCovariance_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/signedcovariance-integrable--791104d1209fa55bf28b7e2d.md) | 123 | `result-track:791104d1209fa55bf28b7e2d0eb0254892a020b54e0398f144ff7a0a76cfd2ba` |
| 15 | `theorem` | [signedCovariance_eq_reordered](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/signedcovariance-eq-reordered--203daf3510e6684e4b752bcf.md) | 129 | `result-track:203daf3510e6684e4b752bcfb848f34b53961d35bdb1fb25950dbd1af4b327c0` |
| 16 | `theorem` | [fullShift_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/fullshift-add--2edb421ac3fa41789a6dee2c.md) | 137 | `result-track:2edb421ac3fa41789a6dee2caa9650834c23f95ed7e72533fdc9033d6ddd0a91` |
| 17 | `def` | [overlap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/overlap--8574d42834ea504b6d9d67c9.md) | 150 | `declaration-track:8574d42834ea504b6d9d67c942479c244aec8d4df81cd9da897fa6eb997d39f6` |
| 18 | `theorem` | [shifted_controller_inner_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/shifted-controller-inner-of-le--893d8a16cb99af5e1f9fda07.md) | 155 | `result-track:893d8a16cb99af5e1f9fda07883511c8eeceb8b415dcbb872f0a90ba5ed16951` |
| 19 | `theorem` | [shifted_controller_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/shifted-controller-inner--f2eb1599d1eaebb94f771fcd.md) | 178 | `result-track:f2eb1599d1eaebb94f771fcd3d64ca9970b72893bde4ddb67918b1e8a2867f65` |
| 20 | `theorem` | [overlap_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/overlap-abs-le--f701cccacf114b42d97eb1aa.md) | 189 | `result-track:f701cccacf114b42d97eb1aa15e3a9e37052d7975621665536ac224430e18445` |
| 21 | `theorem` | [overlap_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/overlap-measurable--d0c7d737ebf2c1fca498b3f6.md) | 204 | `result-track:d0c7d737ebf2c1fca498b3f6bd7a0158ee4bfb93e95ab119cb94a2c7681edbde` |
| 22 | `def` | [gramIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/gramintegrand--339349eaf4658d90430cb948.md) | 210 | `declaration-track:339349eaf4658d90430cb948a44f568bbed96449c116aacccdd223f435cadc91` |
| 23 | `theorem` | [gramIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/gramintegrand-integrable--65e3a4ac7e2c01db3b1de61a.md) | 214 | `result-track:65e3a4ac7e2c01db3b1de61a3598b9bfa39efec1b754d9adaff5053c13f07037` |
| 24 | `theorem` | [integral_inner_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/integral-inner-first--a0891c134f50327bfde78242.md) | 226 | `result-track:a0891c134f50327bfde7824259e148bf439d589426200002ca910cbc624533a6` |
| 25 | `theorem` | [response_inner_full_double](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/response-inner-full-double--9fd7da1275ef2473463909af.md) | 238 | `result-track:9fd7da1275ef2473463909af2b8f9d23d79465673c5254e80d177adfe4b92c7d` |
| 26 | `theorem` | [response_inner_double](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/response-inner-double--32b44b01d7ffc02ca1ef77f9.md) | 261 | `result-track:32b44b01d7ffc02ca1ef77f949df597b21a83ad121b65e5beaf729704e94a2ad` |
| 27 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--cfe35e891caac0818993b1ee.md) | 289 | `declaration-track:cfe35e891caac0818993b1ee9fafc70552d3eb7dab5454a0e2ebe75a374f2a53` |
| 28 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--9e28185a630053bdc4dccedc.md) | 291 | `declaration-track:9e28185a630053bdc4dccedcc8a4223d8af69f5d6f53c0fd09ee2ba07ebb0ad2` |
| 29 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--ad2aa0b6354c0d629c283a34.md) | 292 | `declaration-track:ad2aa0b6354c0d629c283a34bf12524f0f6554092bbf399a2019eba5204bf210` |
| 30 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--1ce8654829c6101758105404.md) | 295 | `declaration-track:1ce8654829c6101758105404b019f673a0a0a5e5e2bcc88a9d451c4ee374b6d9` |
| 31 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--49058a660326b6013001e4cd.md) | 298 | `declaration-track:49058a660326b6013001e4cd17432c892312626205ee047fac9a152e115e1c78` |
| 32 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--74234f88962ed1b33f2259b2.md) | 301 | `declaration-track:74234f88962ed1b33f2259b236e3ab68acdd6cac1ee6eb7d97f643f97ff12097` |
| 33 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--c1b9448ca7425740323fb900.md) | 305 | `declaration-track:c1b9448ca7425740323fb900156d90ccfba115818b510cdb3c374ad66c10ed32` |
| 34 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--6a736a506ad5ef627f58021b.md) | 307 | `declaration-track:6a736a506ad5ef627f58021b05ed03d2b90b6bf935316f51ed3844e818c8d17d` |
| 35 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--b85dd00ad11dad968d7a73fc.md) | 309 | `declaration-track:b85dd00ad11dad968d7a73fc10ff307223ed218006f2f4067e47b03ca08e87c9` |
| 36 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--14e4ecbe64fabb49f5838e85.md) | 312 | `declaration-track:14e4ecbe64fabb49f5838e85c57614ab45c541d98ab4a40e9f0c6208f0090d51` |
| 37 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--3f70fe0286bb2e6f12ad31a9.md) | 314 | `declaration-track:3f70fe0286bb2e6f12ad31a94616e5220640c88fad702b2252e2f627556d5798` |
| 38 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--1dcbe20d062d474b02d9da3b.md) | 316 | `declaration-track:1dcbe20d062d474b02d9da3bc1e0971c3ac8ea2357d78a5d4e68211c0e2241b7` |
| 39 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--472f14ad1c929cd08f85ea47.md) | 320 | `declaration-track:472f14ad1c929cd08f85ea47e697afe78e63faab332fbfb0583baf42b76a4a51` |
| 40 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--7ba94eee24ded57f3d235bbd.md) | 323 | `declaration-track:7ba94eee24ded57f3d235bbd7f184cf6e8f9401ca252a506d88e83b7ad771e28` |
| 41 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--9d38f7143edf41acf2e3af61.md) | 327 | `declaration-track:9d38f7143edf41acf2e3af61c3ed46ef761e6f2ae1954c2fcb0e19acf195dc5f` |
| 42 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--6eb85ab60a6fe25081b96e75.md) | 329 | `declaration-track:6eb85ab60a6fe25081b96e7527ccb15279e8089745e0ce27ca7785e3dab4d28b` |
| 43 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--b62034c7aac68e3e28289aee.md) | 332 | `declaration-track:b62034c7aac68e3e28289aee70c28a8f4d54ae55195d5b93d64ba0efc6eaca91` |
| 44 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--9c5e8804468546bb9a4c960a.md) | 337 | `declaration-track:9c5e8804468546bb9a4c960aa09427ff4145806638b60e8f444fd1fd70651cc6` |
| 45 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--2173111a18b3bb0121dc9ccb.md) | 341 | `declaration-track:2173111a18b3bb0121dc9ccbad2757fd43a76ad909b52a41196b3f3326a441e4` |
| 46 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--551e275a4a64c952c90e6842.md) | 343 | `declaration-track:551e275a4a64c952c90e6842afa9c5e348d0da2eb190d5ba8acc479731d4538b` |
| 47 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--8c28ff4482c06aaaa08af562.md) | 345 | `declaration-track:8c28ff4482c06aaaa08af562f2cb3c216aab689301d2924c482bb2cbcd401b0b` |
| 48 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--dd14d687c5c4b4e339b97c65.md) | 347 | `declaration-track:dd14d687c5c4b4e339b97c6586287784cf4782f4d63457fe0e2f0b8b5f28a6f2` |
| 49 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--095f123454764e042f74d4a2.md) | 349 | `declaration-track:095f123454764e042f74d4a2f5e72011f9bbf235a7ef2d831e2ac966eaf39c78` |
| 50 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--64a1b418a5497ddef8746363.md) | 352 | `declaration-track:64a1b418a5497ddef874636312f1ab2521531c1c05835d8c30bc881d576d0c9b` |
| 51 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean/declarations/example--2061692a0c1f2b0816173e6d.md) | 356 | `declaration-track:2061692a0c1f2b0816173e6dd7d31eeb4650bf8c1048b10d59aaacc43ff5ceab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
