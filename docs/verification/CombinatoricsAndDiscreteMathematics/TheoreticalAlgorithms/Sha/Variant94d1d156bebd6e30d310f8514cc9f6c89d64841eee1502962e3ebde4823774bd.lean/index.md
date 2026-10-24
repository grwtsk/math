# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sha.Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7cdaccfe3301a1e850a0b5b32399377e081fa94",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7cdaccfe3301a1e850a0b5b32399377e081fa94`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.BSD.Statement` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TateShafarevichData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/tateshafarevichdata--0dbacd2f3837aa94e2341887.md) | 35 | `declaration-track:0dbacd2f3837aa94e234188750993e0d8f08993481c78ff145c4c5b84b83407f` |
| 2 | `def` | [additiveStructure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/additivestructure--11d362a81f770de01f1886f9.md) | 88 | `declaration-track:11d362a81f770de01f1886f93c30afa454f1652c85e52d436e51c35c6bcaa37c` |
| 3 | `def` | [locallyTrivial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/locallytrivial--863dc54d509cc521f79dea1d.md) | 98 | `declaration-track:863dc54d509cc521f79dea1dff508421ed06d3d6dbe578761c1305cb65fbd7cf` |
| 4 | `def` | [finiteRestrictionKernel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/finiterestrictionkernel--a23498a907512875d8e42079.md) | 112 | `declaration-track:a23498a907512875d8e420793afdd9b0b9c2342d418756aee514a0f828b7463a` |
| 5 | `theorem` | [locallyTrivial_iff_finiteRestrictionKernel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/locallytrivial-iff-finiterestrictionkernel--ab216071a4f8fcc94bcb458f.md) | 126 | `result-track:ab216071a4f8fcc94bcb458f45990a3e41d25bf0b8c585a7b4ed808f023d70cf` |
| 6 | `theorem` | [locallyTrivial_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/locallytrivial-zero--69b6da606a0d4475766eb48e.md) | 134 | `result-track:69b6da606a0d4475766eb48e0e65afb5e9198bf67f0addb7d27eb45872aef91c` |
| 7 | `theorem` | [finiteRestrictionKernel_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/finiterestrictionkernel-zero--16c8623fa9dd1ba3ef5855e5.md) | 141 | `result-track:16c8623fa9dd1ba3ef5855e56fd3a7f097160fe0476d52a268fcc83cb4c3555d` |
| 8 | `theorem` | [locallyTrivial_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/locallytrivial-add--277a03682aedcc1aa0b511e1.md) | 149 | `result-track:277a03682aedcc1aa0b511e152172474a2e34c2e00c4de86228f54c2e6459562` |
| 9 | `theorem` | [finiteRestrictionKernel_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/finiterestrictionkernel-add--79f22d0b9fd0830779a0d1bb.md) | 159 | `result-track:79f22d0b9fd0830779a0d1bbbd8a52a9202b8a0bbb9665e362ef8a25913ac365` |
| 10 | `theorem` | [locallyTrivial_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/locallytrivial-neg--78a364173bc16afcfdeafbf2.md) | 173 | `result-track:78a364173bc16afcfdeafbf20168f76e7bf2f9c10a7fdc6f27fd2e37781bec1b` |
| 11 | `theorem` | [finiteRestrictionKernel_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/finiterestrictionkernel-neg--8bf90084bda64c8012ca052f.md) | 182 | `result-track:8bf90084bda64c8012ca052f1d5cc4ef787955f8643320459a733f85cb9b6355` |
| 12 | `structure` | [TateShafarevichGroupInterface](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/tateshafarevichgroupinterface--ac4fd037a8995cf509a53561.md) | 203 | `declaration-track:ac4fd037a8995cf509a5356159be2f64c1761e94e84247bd8c3378df5d8d640c` |
| 13 | `def` | [TateShafarevichGroupInterface.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/tateshafarevichgroupinterface-certifiedforbsd--193f1019830831ace9bef8fd.md) | 212 | `declaration-track:193f1019830831ace9bef8fd493c177c6285a2c37356a95013d359d469e3ce58` |
| 14 | `theorem` | [TateShafarevichGroupInterface.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/tateshafarevichgroupinterface-certifiedforbsd-of-fields--ccfa322e9d1dc6a9bd71928d.md) | 241 | `result-track:ccfa322e9d1dc6a9bd71928dfc3cfa0eed280b2e66d974efd108c04d8d41762f` |
| 15 | `theorem` | [TateShafarevichGroupInterface.locallyTrivial_iff_finiteRestrictionZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/tateshafarevichgroupinterface-locallytrivial-iff-finiterestrictionzero--06cdbba4df8682ed8bfc23f3.md) | 269 | `result-track:06cdbba4df8682ed8bfc23f35baf934aeee315dfee7f9f1206bc72671cfd6944` |
| 16 | `theorem` | [TateShafarevichGroupInterface.locallyTrivial_iff_finiteRestrictionKernel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/tateshafarevichgroupinterface-locallytrivial-iff-finiterestrictionkernel--fae379194111dc3f6df0d1e4.md) | 285 | `result-track:fae379194111dc3f6df0d1e42aa7575c6abe82fe19e7c43bd8111527c3794182` |
| 17 | `structure` | [FiniteSelmerShaExactnessBridge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/finiteselmershaexactnessbridge--cb1e6918b81c0ee524e68553.md) | 304 | `declaration-track:cb1e6918b81c0ee524e685536865c74f36a74ca494161e5f31677db15411a9f9` |
| 18 | `theorem` | [kernel_iff_globalKummerImage_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/kernel-iff-globalkummerimage-of-fields--2bc361dec58f7a735eb9c3ac.md) | 335 | `result-track:2bc361dec58f7a735eb9c3ac5719cb127538896be759e0586616c46f8dff0fff` |
| 19 | `theorem` | [finiteRestrictionKernel_iff_globalKummerImage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/finiterestrictionkernel-iff-globalkummerimage--47b134e682be39498eaa4868.md) | 353 | `result-track:47b134e682be39498eaa4868a404918b93f913b567089375d992213920e04013` |
| 20 | `structure` | [TateShafarevichSelmerBridgeCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/tateshafarevichselmerbridgecertificate--1a24585b3330e852fdc74bd2.md) | 383 | `declaration-track:1a24585b3330e852fdc74bd22dcfd37d7a690cb02dc0d9222190feee7a6daee9` |
| 21 | `def` | [TateShafarevichSelmerBridgeCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/tateshafarevichselmerbridgecertificate-certifiedforbsd--25ada77de2649d1bbd74e932.md) | 397 | `declaration-track:25ada77de2649d1bbd74e932c3747f948511759a7c1bdcf6f133482dbb3ff2d4` |
| 22 | `theorem` | [TateShafarevichSelmerBridgeCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/tateshafarevichselmerbridgecertificate-certifiedforbsd-of-fields--c12cf41f8bbec5c94ed54102.md) | 412 | `result-track:c12cf41f8bbec5c94ed54102bddba63598c10adacb3ccdc30126c735c2411a43` |
| 23 | `theorem` | [TateShafarevichSelmerBridgeCertificate.finiteRestrictionKernel_iff_globalKummerImage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/tateshafarevichselmerbridgecertificate-finiterestrictionkernel-iff-globa--d001f34e869da256acc8ce0c.md) | 431 | `result-track:d001f34e869da256acc8ce0c19002f8b72a37283f03d4a7af8c71b1a37c4e14e` |
| 24 | `structure` | [TateShafarevichOrderData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/tateshafarevichorderdata--dfa6fd8e56bdca5da3425459.md) | 455 | `declaration-track:dfa6fd8e56bdca5da3425459897b9499b28e83995e4ff863f3273341275a47b4` |
| 25 | `structure` | [TateShafarevichFinitenessCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/tateshafarevichfinitenesscertificate--5b9d6656459a3a0884bc0b90.md) | 468 | `declaration-track:5b9d6656459a3a0884bc0b907dd89e46fb4006bd756650aec27123101384bc8d` |
| 26 | `def` | [TateShafarevichFinitenessCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/tateshafarevichfinitenesscertificate-certifiedforbsd--022ccf4c1f35dbf964692d00.md) | 489 | `declaration-track:022ccf4c1f35dbf964692d004b1c7fa70638fc18a85dd83fa880477e1aeccce6` |
| 27 | `theorem` | [TateShafarevichFinitenessCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/tateshafarevichfinitenesscertificate-certifiedforbsd-of-fields--5dc3b68320c74363a2119ed5.md) | 502 | `result-track:5dc3b68320c74363a2119ed533fd37d6431f14eb5edd5743bfbbf92adca7449d` |
| 28 | `structure` | [TateShafarevichComponentCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/tateshafarevichcomponentcertificate--05eba1c26b45fcf8891e8d06.md) | 529 | `declaration-track:05eba1c26b45fcf8891e8d06e3a92adb2ace9ba63df3bef2866522e23f59d57a` |
| 29 | `def` | [TateShafarevichComponentCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/tateshafarevichcomponentcertificate-certifiedforbsd--8d30253a13cb14c7732596e0.md) | 557 | `declaration-track:8d30253a13cb14c7732596e0f21c9054df9e5902393aa365f5568c8e02d831d1` |
| 30 | `theorem` | [TateShafarevichComponentCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/tateshafarevichcomponentcertificate-certifiedforbsd-of-fields--14ad21d36ede5543b9090786.md) | 575 | `result-track:14ad21d36ede5543b90907861dcdb1d4e14b2426c851ecc202775af7d146092b` |
| 31 | `theorem` | [TateShafarevichComponentCertificate.finiteSelmerShaBridge_certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/tateshafarevichcomponentcertificate-finiteselmershabridge-certifiedforbs--31a8d232aeb92ec098cf01d4.md) | 601 | `result-track:31a8d232aeb92ec098cf01d4219610d702656b0c9768d983806f5ae1a011153b` |
| 32 | `theorem` | [TateShafarevichComponentCertificate.certifiedForBSD_has_finiteSelmerShaBridge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/tateshafarevichcomponentcertificate-certifiedforbsd-has-finiteselmershab--e415c59fae4446790cc00c65.md) | 618 | `result-track:e415c59fae4446790cc00c65d7dcdfcd4c863b741941960b70426a820a48b30f` |
| 33 | `theorem` | [TateShafarevichComponentCertificate.certifiedForBSD_has_finiteRestrictionKernelBridge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/declarations/tateshafarevichcomponentcertificate-certifiedforbsd-has-finiterestrictio--c4ba7269bb50968501fdc5cb.md) | 631 | `result-track:c4ba7269bb50968501fdc5cb48d4bfa24de62db56eb233db85ecf96bd1277a13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
