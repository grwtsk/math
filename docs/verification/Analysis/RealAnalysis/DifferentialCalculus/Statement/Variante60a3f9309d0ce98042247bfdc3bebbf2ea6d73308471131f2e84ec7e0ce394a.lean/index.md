# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Statement.Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1339c09f5e7b9f07de9a533850183e905d8c138",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1339c09f5e7b9f07de9a533850183e905d8c138`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Defs` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.Hypotheses` — import line 29; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideTemp` — import line 30; external provider; requires a separately pinned dependency.
- `Zeta23.LinAlg` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 32; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 33; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [xi_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/xi-differentiable--ced3b1ef6518d1bace9d3e7b.md) | 46 | `result-track:ced3b1ef6518d1bace9d3e7b63decb3be22e44830293bcf23d6ca77259e88878` |
| 2 | `theorem` | [xi_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/xi-eq--1c342a3a97b1725ab856e64b.md) | 53 | `result-track:1c342a3a97b1725ab856e64bb550dbdc9c4b894d16b2b943078424e580aaa8b7` |
| 3 | `theorem` | [xi_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/xi-one-sub--137e43cc63ae7ba8b37a7e2f.md) | 62 | `result-track:137e43cc63ae7ba8b37a7e2fdf7d0aa35be1f93ba9acfdee2c18213bea433415` |
| 4 | `theorem` | [xiDeriv_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/xideriv-differentiable--15f553911116973c4867737a.md) | 68 | `result-track:15f553911116973c4867737a790db48822e2839c8ff48dbb178140aed7bba4b2` |
| 5 | `def` | [XiZerosAreZetaZeros](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/xizerosarezetazeros--7277712b2288992727166022.md) | 73 | `declaration-track:7277712b2288992727166022e80c0344cb4cd0ad071cae9541a34c499e5a108e` |
| 6 | `def` | [XiDerivZerosInStrip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/xiderivzerosinstrip--62ac97e94d64b2cd3f4d5906.md) | 84 | `declaration-track:62ac97e94d64b2cd3f4d59064d60a6d89a4169f76a580b87abe969dd2fd0ae4f` |
| 7 | `structure` | [XiDerivSeam](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/xiderivseam--8b710bdf3b56e6fca7bd21b1.md) | 93 | `declaration-track:8b710bdf3b56e6fca7bd21b1e5e9507503c0c8f22261f04e6ef7ea9123a332c6` |
| 8 | `def` | [xiDerivZeros](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/xiderivzeros--2e47565c5a6878a4b4aa8ec4.md) | 102 | `declaration-track:2e47565c5a6878a4b4aa8ec4d521d57e646f2dad47cdb0764d32f1f3092a1ee4` |
| 9 | `lemma` | [xiDerivZeros_carrier](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/xiderivzeros-carrier--cb4702e00400484d90a02a22.md) | 114 | `result-track:cb4702e00400484d90a02a22b5d63d4c43cd2beab0e702323cee8db3b30e5b97` |
| 10 | `lemma` | [xiDerivZeros_mult](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/xiderivzeros-mult--ed124ac3a84ad0c964200b0e.md) | 115 | `result-track:ed124ac3a84ad0c964200b0e120dd573322d63d6d7478d915479872763eff958` |
| 11 | `lemma` | [xiDerivZeros_simple](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/xiderivzeros-simple--3fad9002debb94c43ccdce21.md) | 116 | `result-track:3fad9002debb94c43ccdce21cb8da2928ca94a7126c7b369730407b8630c91e7` |
| 12 | `lemma` | [xiDerivZeros_window](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/xiderivzeros-window--cb95c38618023c578d0a6d7b.md) | 118 | `result-track:cb95c38618023c578d0a6d7b6f17b67a6f3fea08176e7effd0d17a2a7cdf8c92` |
| 13 | `lemma` | [xiDerivZeros_N](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/xiderivzeros-n--361cb19c8fde67f5c0684386.md) | 121 | `result-track:361cb19c8fde67f5c068438622d82f176f78fe30236d1465472b1bb03e7ecbe2` |
| 14 | `lemma` | [xiDerivZeros_Nd](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/xiderivzeros-nd--124d2ffc161da1ffbc3766e1.md) | 123 | `result-track:124d2ffc161da1ffbc3766e1b52648d2867736273b9bbada2502a28d1590942a` |
| 15 | `lemma` | [xiDerivZeros_N0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/xiderivzeros-n0--c695945525311969f75c369d.md) | 125 | `result-track:c695945525311969f75c369d5305139ba15b540033603aed6c33efb53d153b40` |
| 16 | `lemma` | [xiDerivZeros_N0s](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/xiderivzeros-n0s--d76386bfe1f61a4b589f9132.md) | 127 | `result-track:d76386bfe1f61a4b589f9132a04291a0eb9a1d2bda74debd11219b68205d562d` |
| 17 | `def` | [XiDerivRvM](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/xiderivrvm--d8eaf804b74853134f6b4044.md) | 137 | `declaration-track:d8eaf804b74853134f6b4044b149ba8a2c7573fd4042a953b77eb312a6c52e9e` |
| 18 | `structure` | [CoeffFamily](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/coefffamily--9e044f08eef88f873cfa9a50.md) | 145 | `declaration-track:9e044f08eef88f873cfa9a50efc73785cbda5d675088a1dba44ba278f169cd20` |
| 19 | `structure` | [CoeffFamily.Hyps](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/coefffamily-hyps--41596d3b87988a1f322a587b.md) | 158 | `declaration-track:41596d3b87988a1f322a587bb324c333befd31046739085731766136170b5aba` |
| 20 | `def` | [xiCoeffFamily](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/xicoefffamily--6f275a0945cc5df8a8297a8b.md) | 175 | `declaration-track:6f275a0945cc5df8a8297a8b609c0532d99321379f9c71b9ae995368e31de758` |
| 21 | `def` | [wCoeffFamily](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/wcoefffamily--c0e6ba5e35239a7864b57d3d.md) | 178 | `declaration-track:c0e6ba5e35239a7864b57d3d12226e50badf281a4dcc4a39be0f2fa8ea45e2c6` |
| 22 | `def` | [D1Summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/d1summable--45e6ebd3fbc4ebb12a6bd0e9.md) | 182 | `declaration-track:45e6ebd3fbc4ebb12a6bd0e91b3fbb2397cee58c1b2a854599ca2a57b1db654d` |
| 23 | `def` | [XiEF](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/xief--beaa4f9fc974335ca2089021.md) | 204 | `declaration-track:beaa4f9fc974335ca20890211424532fe84ab39c6035bb9fede7b3e746104c2e` |
| 24 | `def` | [XiTraceTransfer](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/xitracetransfer--39ef8ed052fa4926c0a34a5d.md) | 217 | `declaration-track:39ef8ed052fa4926c0a34a5d32f576bd51cd0e237bec75d3dacfb7e7a47ee95b` |
| 25 | `def` | [CoeffMoments](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/coeffmoments--d563b3b2b68bc1fd732c7d99.md) | 236 | `declaration-track:d563b3b2b68bc1fd732c7d99693be211a0cf168058e12ce2661a64a1f94590a9` |
| 26 | `def` | [GzMoments](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/gzmoments--240f9b3b78ea3421d2f596a9.md) | 246 | `declaration-track:240f9b3b78ea3421d2f596a9e522a634fb53c5fede2464173a7c72bc59cdba50` |
| 27 | `structure` | [WindowProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/windowprofile--39654ced258fbe1d01d87fe5.md) | 252 | `declaration-track:39654ced258fbe1d01d87fe58fea267906038bb61bc077584591627aabb3de7e` |
| 28 | `def` | [CertFlat](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/certflat--754c43140efdf326ad78c803.md) | 266 | `declaration-track:754c43140efdf326ad78c803ff6c95d5de5929488ba72e1c73c9cb1936128505` |
| 29 | `def` | [CertQuartic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/certquartic--68ebf1695c33ecac093f67a8.md) | 272 | `declaration-track:68ebf1695c33ecac093f67a8ca248624b7c0803e73e0f1a4ad17baad062546c0` |
| 30 | `def` | [FixedLamBounds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/fixedlambounds--eaa14ca22eba61b121e7d788.md) | 287 | `declaration-track:eaa14ca22eba61b121e7d7886b2f4c6888cd05625a49193db01a79236ed18415` |
| 31 | `def` | [HeadlineFlat](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/headlineflat--64874eaf788e12ae233155fa.md) | 297 | `declaration-track:64874eaf788e12ae233155fa8bed17f59e1190076ae3d478e0dec047572e6256` |
| 32 | `def` | [HeadlineQuartic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/headlinequartic--9584735376135e4846774ab9.md) | 304 | `declaration-track:9584735376135e4846774ab96efdc471e9ba35b7d0ec8d2ad2f83a6f400688da` |
| 33 | `def` | [HeadlineCumulative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/headlinecumulative--a5be3a7369d7ef889602ade5.md) | 311 | `declaration-track:a5be3a7369d7ef889602ade54bbf1168451217e20b71876d40152574653ed71f` |
| 34 | `def` | [WZerosInStrip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/wzerosinstrip--c62d4459d93c0d94458bf0a0.md) | 335 | `declaration-track:c62d4459d93c0d94458bf0a05aa2e903514f80f2a6758af713ba2aef24678f33` |
| 35 | `structure` | [WSeam](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/wseam--7fc3e000e9e39673b9aeba7a.md) | 338 | `declaration-track:7fc3e000e9e39673b9aeba7ac7f722bdf5a95c273491403af062388fc7c7755a` |
| 36 | `lemma` | [reflect_im](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/reflect-im--8254f923111105b483f720d0.md) | 345 | `result-track:8254f923111105b483f720d07aa3f77228d49f474e8dba8515a604cf9c0bab17` |
| 37 | `def` | [wZeros](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/wzeros--ff4646c649863b8b3dfa6893.md) | 349 | `declaration-track:ff4646c649863b8b3dfa6893dbaeacbcb3ea50f0cf3fa0872d16827612154fa3` |
| 38 | `lemma` | [wZeros_window](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/wzeros-window--f3777f5e7b3ed489d263cfdc.md) | 362 | `result-track:f3777f5e7b3ed489d263cfdc914b6101abc7ab8e81ef6d2a2ece4c6cce13aacf` |
| 39 | `lemma` | [wZeros_N](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/wzeros-n--c91ed63981793468ef0de114.md) | 373 | `result-track:c91ed63981793468ef0de114e13e15e9ee0bac329a385417366a62a295b47769` |
| 40 | `lemma` | [wZeros_Nd](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/wzeros-nd--f7b43bb89fbd62fcf717319b.md) | 375 | `result-track:f7b43bb89fbd62fcf717319baf4d9dea6fadf69a58751f7586f19a17e05485cb` |
| 41 | `lemma` | [wZeros_N0s](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/wzeros-n0s--1f0434a3afcc0c489c807648.md) | 377 | `result-track:1f0434a3afcc0c489c80764845a4112d4bd917e731c7da80a9f0e158ea0d8b37` |
| 42 | `def` | [wPoleWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/wpoleweight--f3c5f8ff72bafbbc31f26a42.md) | 386 | `declaration-track:f3c5f8ff72bafbbc31f26a42cf6fda57b5983ab63dcb21fbad2ae2c8899b88bc` |
| 43 | `def` | [HeadlineW](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/declarations/headlinew--c79e18ff4e353bd68aae5604.md) | 392 | `declaration-track:c79e18ff4e353bd68aae5604caefd2a01fc1a42c75bf4eeb7166bbba19b41e27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
