# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42849e5cd72dfc5a9b1bf1a564000ed5c02877a8",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42849e5cd72dfc5a9b1bf1a564000ed5c02877a8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fg_bot](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/fg-bot--5ccbdf58e53fa1b4ec0397ae.md) | 29 | `result-track:5ccbdf58e53fa1b4ec0397aea39f26dbaaf2c7ff9b16db2dc8a70e3c609aab85` |
| 2 | `theorem` | [fg_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/fg-span--19f8806272661a7c39535437.md) | 32 | `result-track:19f8806272661a7c39535437b10d73f1a8e691f52ec89e9638f171ea31fb272a` |
| 3 | `theorem` | [fg_span_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/fg-span-singleton--076e3e47faadb350ba3a0004.md) | 35 | `result-track:076e3e47faadb350ba3a0004d31435918130f302a7a3593527e385a33e49d209` |
| 4 | `theorem` | [FG.sup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/fg-sup--d17ad22d4f591cf4e08481b1.md) | 38 | `result-track:d17ad22d4f591cf4e08481b1fd6dfb740ba6be8be992009d7315077a63827651` |
| 5 | `theorem` | [fg_finset_sup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/fg-finset-sup--2d29800e39c3efea4a1285f5.md) | 43 | `result-track:2d29800e39c3efea4a1285f5a362b072c0ac96089e8889e7808979623f9d2697` |
| 6 | `theorem` | [fg_biSup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/fg-bisup--2e7800f8733c4d18d1e352ef.md) | 47 | `result-track:2e7800f8733c4d18d1e352ef0bc8815725ee5c7e8b276a49c0220307a8f575cf` |
| 7 | `theorem` | [fg_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/fg-isup--c6b29da7904fcc04feb392b4.md) | 50 | `result-track:c6b29da7904fcc04feb392b426f4ada888dcdc91907890892488d2f85f79acb3` |
| 8 | `theorem` | [fg_pi](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/fg-pi--71f5c609342ed45cb5192bbf.md) | 60 | `result-track:71f5c609342ed45cb5192bbf7ee3c488f463cf581007dad91a71396eff459663` |
| 9 | `theorem` | [FG.map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/fg-map--a9a8eb0fb16c97f8046ec0af.md) | 71 | `result-track:a9a8eb0fb16c97f8046ec0af81c78990db276c4b0f80dbe592346d3fadeda991` |
| 10 | `theorem` | [fg_of_fg_map_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/fg-of-fg-map-injective--514fe9378f4261a08007f532.md) | 75 | `result-track:514fe9378f4261a08007f532a0cd8d9fa541852796519223bd1ba19334e3e33f` |
| 11 | `theorem` | [fg_of_fg_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/fg-of-fg-map--7c3dd98e039a46b61bf8ff4c.md) | 90 | `result-track:7c3dd98e039a46b61bf8ff4cf69e607e25d1878bb0a15eb02df6956e972ed85e` |
| 12 | `theorem` | [fg_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/fg-top--3bbfe0b8b03db91724918a89.md) | 96 | `result-track:3bbfe0b8b03db91724918a8900a19ccd67ff18b03f90ef5f09058193a251be54` |
| 13 | `theorem` | [fg_of_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/fg-of-linearequiv--0ba8be7aba365623af1bfa2d.md) | 100 | `result-track:0ba8be7aba365623af1bfa2d74d6273f4e784a698523fa396c74ddb8b7c4cca0` |
| 14 | `theorem` | [fg_induction](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/fg-induction--130a87c72ed3fd6679914e47.md) | 103 | `result-track:130a87c72ed3fd6679914e4739fa3658bc8eab8122d794e6ebca3d3dd069ddbf` |
| 15 | `theorem` | [fg_restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/fg-restrictscalars--f143422fd158806ac0ae389a.md) | 116 | `result-track:f143422fd158806ac0ae389abe9430aa9659a0ce8b8ed597974e2cf34d0090cb` |
| 16 | `lemma` | [FG.of_restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/fg-of-restrictscalars--83343723465146734c2873bb.md) | 124 | `result-track:83343723465146734c2873bbb7bfe294af6b89fa740046f19628c2401fbac57c` |
| 17 | `theorem` | [FG.stabilizes_of_iSup_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/fg-stabilizes-of-isup-eq--ef00f600be1d2577ee367cd7.md) | 135 | `result-track:ef00f600be1d2577ee367cd7a030953eac672cab3182c097418fe47f27e2ecd0` |
| 18 | `theorem` | [fg_iff_compact](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/fg-iff-compact--44a588c45acd071584a2b21c.md) | 154 | `result-track:44a588c45acd071584a2b21cef173ea0f47c8fbf9a6aa06b52dd6c0900ed8435` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/instance--00b676be4499b1ca4858b42d.md) | 196 | `declaration-track:00b676be4499b1ca4858b42dc5dc64c79ccc3880be435f3e9afb6d1c7d915685` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/instance--b95e179b34ece35f65d8a4d8.md) | 200 | `declaration-track:b95e179b34ece35f65d8a4d89c28b78a2a0c2e0391e766a3c30c3a5da8066ed9` |
| 21 | `theorem` | [of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/of-surjective--a34f3c6c92ed170724af35a2.md) | 210 | `result-track:a34f3c6c92ed170724af35a2e5f7b102b50e2c40a79b0ffd77de938a831e6d7d` |
| 22 | `theorem` | [_root_.LinearMap.finite_iff_of_bijective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/root-linearmap-finite-iff-of-bijective--776d8467c9c501fe80d6bd08.md) | 216 | `result-track:776d8467c9c501fe80d6bd080066cd88c16086bd1886802d94817d643740fad6` |
| 23 | `instance` | [quotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/quotient--3fa2ab1e138a395ea8c2f7ab.md) | 223 | `declaration-track:3fa2ab1e138a395ea8c2f7aba95f87fe779d97f068bf60433aa97a38aa33b0bf` |
| 24 | `instance` | [range](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/range--84bed5633896b3ab37363be8.md) | 229 | `declaration-track:84bed5633896b3ab37363be8af21d9d71a4731bffcbfd24da2741552a371bbde` |
| 25 | `instance` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/map--7528f82a1482c82a6ad09f7b.md) | 235 | `declaration-track:7528f82a1482c82a6ad09f7bc5f014104b56fa83b40ab7275c9f53e1c91dd271` |
| 26 | `instance` | [pi](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/pi--10352a7c7d897c6c32539a10.md) | 239 | `declaration-track:10352a7c7d897c6c32539a107d49ba0d67cec24d1117ce0d75790b8b852a224f` |
| 27 | `instance` | [self](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/self--25ff954fde2984fbdebb0796.md) | 247 | `declaration-track:25ff954fde2984fbdebb07960dc7b5ca723798bfbf3f7a66c47c1ae352d96380` |
| 28 | `theorem` | [of_restrictScalars_finite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/of-restrictscalars-finite--849e231ea687c9b6fc8b1b29.md) | 252 | `result-track:849e231ea687c9b6fc8b1b29dc6759b6bde1e2b9224bab2424df01407ef2327d` |
| 29 | `theorem` | [equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/equiv--6e7d02a6922faf520e282bdb.md) | 264 | `result-track:6e7d02a6922faf520e282bdb54ca1a8e17ffb74dbf019a505e3e7e0f1a34c40e` |
| 30 | `theorem` | [equiv_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/equiv-iff--81840be3899085aa1d10b4fe.md) | 267 | `result-track:81840be3899085aa1d10b4febab4c6ad768fc5caff8fb3c400ab91040d2e3b3c` |
| 31 | `instance` | [ulift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/ulift--2f3a754c79e31b612b568fbf.md) | 270 | `declaration-track:2f3a754c79e31b612b568fbf80d53a77678458f83caf635a3a1dcde695e36b39` |
| 32 | `theorem` | [iff_fg](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/iff-fg--a7b9e17ce246f8105eb92e24.md) | 272 | `result-track:a7b9e17ce246f8105eb92e245a061ba711e26218d7423385ed01b9c5350b22c1` |
| 33 | `instance` | [bot](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/bot--d3bf222a89e9fd9a679033fd.md) | 276 | `declaration-track:d3bf222a89e9fd9a679033fd85f10c9d87fd778f5404c219a5b020b595b5fa8a` |
| 34 | `instance` | [top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/top--423d7212ec6aaf51e81478a3.md) | 278 | `declaration-track:423d7212ec6aaf51e81478a3f18f2f16196b41ad83a4c082078613392c490c53` |
| 35 | `theorem` | [span_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/span-of-finite--c7cab84833086c395557ca2c.md) | 283 | `result-track:c7cab84833086c395557ca2ce3b86fa26cf424b4250eb9879cda80a433e87748` |
| 36 | `instance` | [span_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/span-singleton--3620122684139e5214f99bfc.md) | 288 | `declaration-track:3620122684139e5214f99bfc4dba537c6c0e40e938df2d7480f8a93de5522b9b` |
| 37 | `instance` | [span_finset](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/span-finset--61097704081f6d55a2782119.md) | 292 | `declaration-track:61097704081f6d55a27821196af1dac9dd9912733e308bc34eb70345da6d7861` |
| 38 | `theorem` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/trans--b73aa4ba8d4df4f44cb8ed20.md) | 299 | `result-track:b73aa4ba8d4df4f44cb8ed20f7c4565c90fa5f5e9fbba024d921631f25dcc5ec` |
| 39 | `lemma` | [of_equiv_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/of-equiv-equiv--a3a4d174fb1a4dca85afc17a.md) | 309 | `result-track:a3a4d174fb1a4dca85afc17a0d3117efe4683f059bd96fe991d0460358939601` |
| 40 | `instance` | [finite_sup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/finite-sup--7af06819501ef4daaddbead3.md) | 340 | `declaration-track:7af06819501ef4daaddbead3ce5830c64b6421bc770857f10854dc94e43d3dff` |
| 41 | `instance` | [finite_finset_sup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/finite-finset-sup--81f441fa265280b89455934b.md) | 350 | `declaration-track:81f441fa265280b89455934b8815b51922a47616148db920fbc42f59e8de44e5` |
| 42 | `theorem` | [id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/id--ffb569b5ba60574e27f36f6a.md) | 367 | `result-track:ffb569b5ba60574e27f36f6a47fe463dcb344b612c7d405a093884a6c75e4a8f` |
| 43 | `theorem` | [of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/of-surjective--747c4b9c8142d1ddd9536100.md) | 370 | `result-track:747c4b9c8142d1ddd9536100cb6328eae9e3a0f0318a1b7ddd56cdd7f0c4385a` |
| 44 | `theorem` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/comp--a76a6b1e89622353cc88dd5a.md) | 374 | `result-track:a76a6b1e89622353cc88dd5a39d16e66116661998414fed61ad06e6db1cd6cfd` |
| 45 | `theorem` | [of_comp_finite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/of-comp-finite--51fc6773dd51fed9259e9f16.md) | 378 | `result-track:51fc6773dd51fed9259e9f161adfc7e9792ab9aa32d3d48846222793a0b4f6b1` |
| 46 | `theorem` | [id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/id--05801a90d39ef4278612f61a.md) | 396 | `result-track:05801a90d39ef4278612f61ac22129a2ccad9a52c8e9c95f8ce18dfa44f7863a` |
| 47 | `theorem` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/comp--d124c84f1f7adcd6e5e7094f.md) | 401 | `result-track:d124c84f1f7adcd6e5e7094fa3b9c172aaf2ebfc8966473be70ce8b3dee5df08` |
| 48 | `theorem` | [of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/of-surjective--f43dc5fc48fe5e8370ce00f0.md) | 404 | `result-track:f43dc5fc48fe5e8370ce00f02b241cd73baaa077e0137671f4433f1e16da4302` |
| 49 | `theorem` | [of_comp_finite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/declarations/of-comp-finite--6f4cb532a67558a218e6f44c.md) | 407 | `result-track:6f4cb532a67558a218e6f44c7fdf8204d6dfd8525b38cec4a9c30609fbdc4848` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
