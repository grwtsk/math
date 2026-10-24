# Verification target: GRWTSK.Analysis.Kernels.Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6298046e4f2620c99fad0c242b020241906d42b4",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/index.md) · [Full source](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6298046e4f2620c99fad0c242b020241906d42b4`.

Source path: `GRWTSK/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.SemiNormedGroupCat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Quotient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cokernelCocone](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/cokernelcocone--da9d3e9f2fc35d84dcc95f30.md) | 38 | `declaration-track:da9d3e9f2fc35d84dcc95f303dc961ce1f4dcfc33fe43c4e363556c027da9aaf` |
| 2 | `def` | [cokernelLift](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/cokernellift--bf13ddfddd34c71e205e2dce.md) | 57 | `declaration-track:bf13ddfddd34c71e205e2dced2f67d2f13a6ef3728c326381b418bf57a0ea710` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/instance--7c94564501d79bdc12d7df42.md) | 70 | `declaration-track:7c94564501d79bdc12d7df4270824299e8e783fc6f4f1b0685a75f81c1b2f7bd` |
| 4 | `example` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/example--5e73abfcdd97e5362574c075.md) | 87 | `declaration-track:5e73abfcdd97e5362574c075c42b3704cf217f782f653409eac803b1ab2e107e` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/instance--c4cfc45e1f58efdd329d3d22.md) | 98 | `declaration-track:c4cfc45e1f58efdd329d3d2254ea55cc64cc400b81ec23812c7ccb3c7ff72ef8` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/instance--33f8a92cc1a659ee2d7be005.md) | 100 | `declaration-track:33f8a92cc1a659ee2d7be005fb790a7b67017f3e3f4b690441bdc9a0b8bf773b` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/instance--a7fff19b57480937dd7604ef.md) | 102 | `declaration-track:a7fff19b57480937dd7604ef5ea87f79b74a70963344ea00ce6dfb559b1519c4` |
| 8 | `def` | [fork](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/fork--0bb8e792b3e2d39e1ad87ce9.md) | 105 | `declaration-track:0bb8e792b3e2d39e1ad87ce96c66e429246dadadab75660207ed4516134695fc` |
| 9 | `instance` | [hasLimit_parallelPair](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/haslimit-parallelpair--d83e65b5e59f36bba45760aa.md) | 118 | `declaration-track:d83e65b5e59f36bba45760aa7923e87f65bbdcb787a65dc1ffba6b7f6c06d1de` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/instance--cff1d79a6e79138b79767f7a.md) | 135 | `declaration-track:cff1d79a6e79138b79767f7a71dfc4288af02f10090d0320cba52197c069294e` |
| 11 | `def` | [cokernelCocone](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/cokernelcocone--bc1790c839619cc97896bd05.md) | 147 | `declaration-track:bc1790c839619cc97896bd051fdff9f7e26295722f3229d3b660b50a1a6aaf42` |
| 12 | `def` | [cokernelLift](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/cokernellift--1a1939e27dd3b29cadc0f8c8.md) | 165 | `declaration-track:1a1939e27dd3b29cadc0f8c818669df2841e5d73c4756b63a783d3721b4f8fd3` |
| 13 | `def` | [isColimitCokernelCocone](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/iscolimitcokernelcocone--ffeb4bcdc27aec1d261909e7.md) | 177 | `declaration-track:ffeb4bcdc27aec1d261909e714e78f08b7c05b7869cd176093dd85fca0f7311a` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/instance--3097a5880d01484d48001d45.md) | 190 | `declaration-track:3097a5880d01484d48001d4592d30a1cd0cfbce22d901835f0a9e339473ddbfc` |
| 15 | `example` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/example--da89f1b8bf4b95f91ebf6bc5.md) | 197 | `declaration-track:da89f1b8bf4b95f91ebf6bc578b795d5964d85f9222c10fe7ee72b512e8c67e3` |
| 16 | `def` | [explicitCokernel](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcokernel--46791b012f1fe1663d254525.md) | 203 | `declaration-track:46791b012f1fe1663d2545255f18f47501ce42452d5ff83ac1c60e7e3b4aab04` |
| 17 | `def` | [explicitCokernelDesc](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcokerneldesc--d31d6578d12a84db93e368ea.md) | 210 | `declaration-track:d31d6578d12a84db93e368ea671371bedc5a94949d1d9f879c718e61e3973719` |
| 18 | `def` | [explicitCokernelπ](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcokernel--3168ef499e8bc647faa6da53.md) | 218 | `declaration-track:3168ef499e8bc647faa6da53bfdc30203469d4d03c31f4c759dbc17a8fba3480` |
| 19 | `theorem` | [explicitCokernelπ_surjective](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcokernel-surjective--8c6116abff01f5f0dac6067d.md) | 223 | `result-track:8c6116abff01f5f0dac6067d148e3d50fff55767e4d15f4620c5d4110d3291ad` |
| 20 | `theorem` | [comp_explicitCokernelπ](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/comp-explicitcokernel--5c5172fabaf99c7ede81b43c.md) | 230 | `result-track:5c5172fabaf99c7ede81b43caf03748664583eba3aa6b5743462502630e0198f` |
| 21 | `theorem` | [explicitCokernelπ_apply_dom_eq_zero](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcokernel-apply-dom-eq-zero--9d1b5be5aa31563e2068511e.md) | 241 | `result-track:9d1b5be5aa31563e2068511e79e7b2aae03bc0b25451e0f7853247e49e6b1276` |
| 22 | `theorem` | [explicitCokernelπ_desc](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcokernel-desc--858a36cfad138c1f0459bbd6.md) | 248 | `result-track:858a36cfad138c1f0459bbd6edc20eb810dc3994fae36e66b29b4a8f4e031c4a` |
| 23 | `theorem` | [explicitCokernelπ_desc_apply](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcokernel-desc-apply--dc3d018517f25bc81c7e68bf.md) | 255 | `result-track:dc3d018517f25bc81c7e68bf51b1af520ed8332f3326521854a91e9add2c7843` |
| 24 | `theorem` | [explicitCokernelDesc_unique](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcokerneldesc-unique--e41ed4f3948e55f17fa5b43b.md) | 261 | `result-track:e41ed4f3948e55f17fa5b43b8a1cad2c19423c3be13a3a4cc52889ecdd1b4ffa` |
| 25 | `theorem` | [explicitCokernelDesc_comp_eq_desc](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcokerneldesc-comp-eq-desc--420aaefb0c3d6f401adc0336.md) | 272 | `result-track:420aaefb0c3d6f401adc0336218374deb762bfd7c865c01a876c53d2182ff6df` |
| 26 | `theorem` | [explicitCokernelDesc_zero](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcokerneldesc-zero--4985fcb239fe9bfbfbfccb0b.md) | 285 | `result-track:4985fcb239fe9bfbfbfccb0b24988b2cab0b678cdf14d982de2c14c3809b171b` |
| 27 | `theorem` | [explicitCokernel_hom_ext](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcokernel-hom-ext--5d398928d34d8a5a841f57a7.md) | 292 | `result-track:5d398928d34d8a5a841f57a72c71935969ce51f9751418154626b26e0c8dbb9a` |
| 28 | `instance` | [explicitCokernelπ.epi](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcokernel-epi--d918483a24ae12c3df07e366.md) | 304 | `declaration-track:d918483a24ae12c3df07e366d38badd4643d349d9496c1aa8576bddec35fa202` |
| 29 | `theorem` | [isQuotient_explicitCokernelπ](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/isquotient-explicitcokernel--3222c37caf86293c22c3e70f.md) | 316 | `result-track:3222c37caf86293c22c3e70fb42ea5cd2f8a46ec8b35322b80a5f91dfd03830e` |
| 30 | `theorem` | [normNoninc_explicitCokernelπ](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/normnoninc-explicitcokernel--240c58fb0fa4be22f9c1af0d.md) | 322 | `result-track:240c58fb0fa4be22f9c1af0d60bbfed2fc4c06edd797c5233448fa712b1f67ff` |
| 31 | `theorem` | [explicitCokernelDesc_norm_le_of_norm_le](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcokerneldesc-norm-le-of-norm-le--27c37799ee5b49983cf769b4.md) | 330 | `result-track:27c37799ee5b49983cf769b48a2c94e8a9ded53d7ed52af29f8920c28ca01db2` |
| 32 | `theorem` | [explicitCokernelDesc_normNoninc](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcokerneldesc-normnoninc--5d960334f77c02fd84da00b2.md) | 336 | `result-track:5d960334f77c02fd84da00b2d7d58c841f42cd017ff8f99892e5c556be0b1d36` |
| 33 | `theorem` | [explicitCokernelDesc_comp_eq_zero](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcokerneldesc-comp-eq-zero--fb41a9b7f0acfc493b2a5c36.md) | 346 | `result-track:fb41a9b7f0acfc493b2a5c362f34ec6a0abf1b66f9a71f6099d25e968bc9ad37` |
| 34 | `theorem` | [explicitCokernelDesc_norm_le](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcokerneldesc-norm-le--b9aaa7e3045b9c467ed859e9.md) | 353 | `result-track:b9aaa7e3045b9c467ed859e9d7124b23e36e91ee422ce119622b95008e47b29e` |
| 35 | `def` | [explicitCokernelIso](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcokerneliso--f1092a80e9bb590f4367bfcb.md) | 361 | `declaration-track:f1092a80e9bb590f4367bfcbe4ead279298d78cf12c4c8281c0387053fa34e5b` |
| 36 | `theorem` | [explicitCokernelIso_hom_π](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcokerneliso-hom--a06c43a945cfc704c130e446.md) | 368 | `result-track:a06c43a945cfc704c130e4462a13dcfede070f963ef7fbc0f020b91f684147f8` |
| 37 | `theorem` | [explicitCokernelIso_inv_π](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcokerneliso-inv--9c1666dccd0dc4414fd22500.md) | 375 | `result-track:9c1666dccd0dc4414fd22500bc5ed8c3ffd02091499c7d290943f0e81a7d0507` |
| 38 | `theorem` | [explicitCokernelIso_hom_desc](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcokerneliso-hom-desc--be52b8b640c347c5c316106a.md) | 382 | `result-track:be52b8b640c347c5c316106a37e0bf05bacb1d4d2b4ca97e58e5abee889bb725` |
| 39 | `def` | [explicitCokernel.map](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcokernel-map--d84d213ab41ab91676ea38bb.md) | 392 | `declaration-track:d84d213ab41ab91676ea38bb0ae0f06d548f3778afc015717ba6ccc64bafb49e` |
| 40 | `theorem` | [ExplicitCoker.map_desc](../../../../mathematics/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/declarations/explicitcoker-map-desc--3a9e3e26754ecf7fb3287278.md) | 400 | `result-track:3a9e3e26754ecf7fb32872785a6d4d1b2d248cf5522522c0bc1a906fe1bde410` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
