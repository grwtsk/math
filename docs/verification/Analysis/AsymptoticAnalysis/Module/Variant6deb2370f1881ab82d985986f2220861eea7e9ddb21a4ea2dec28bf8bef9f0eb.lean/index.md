# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Module.Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70290f1d0ffa852f4c23ff1fb0df2781a45b9d27",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70290f1d0ffa852f4c23ff1fb0df2781a45b9d27`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.InfiniteSum.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Equiv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasSum.const_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/hassum-const-smul--42401e789ae41a06a7770915.md) | 20 | `result-track:42401e789ae41a06a777091538715c537e73bf82f5b9f3ccf877e95692391923` |
| 2 | `theorem` | [Summable.const_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/summable-const-smul--1de87f5767c7fd10efb7ea54.md) | 23 | `result-track:1de87f5767c7fd10efb7ea54bfd1821744ec3753c98c4dee5f8128e7315e22a2` |
| 3 | `theorem` | [Summable.tsum_const_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/summable-tsum-const-smul--8ce5e1313bbf4d4c41d789b8.md) | 28 | `result-track:8ce5e1313bbf4d4c41d789b82850b13187d3f764fff738285beecc9435a6e947` |
| 4 | `lemma` | [tsum_const_smul'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/tsum-const-smul--33f6803dff5a49a9b2c71740.md) | 36 | `result-track:33f6803dff5a49a9b2c71740999aadfdf0321c31d1443266b20e2a10c5429032` |
| 5 | `lemma` | [tsum_const_smul''](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/tsum-const-smul--9878d3dbe48c47f8a9df4b93.md) | 52 | `result-track:9878d3dbe48c47f8a9df4b935b3efd7043a17c2c9e0d439c69f5dca2d2d6cd24` |
| 6 | `theorem` | [HasSum.smul_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/hassum-smul-const--fdb29430e6adfa0419b67b8f.md) | 69 | `result-track:fdb29430e6adfa0419b67b8faca3dc7b648a9e71af745563209d6c2cf1f2c736` |
| 7 | `theorem` | [Summable.smul_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/summable-smul-const--b9b0b0a68249baa048630aa7.md) | 72 | `result-track:b9b0b0a68249baa048630aa7c0b68ceff41e3c621ab75f00ab634a171c6aae38` |
| 8 | `theorem` | [Summable.tsum_smul_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/summable-tsum-smul-const--d636bf43a7556357558166fb.md) | 75 | `result-track:d636bf43a7556357558166fb3625ff817abb48c15d12ea88d49324f200966687` |
| 9 | `theorem` | [HasSum.smul_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/hassum-smul-eq--68136c071734bd0ef2f90271.md) | 94 | `result-track:68136c071734bd0ef2f90271531bc1c443afe453f12fdf30ef4bf609d7bfc394` |
| 10 | `theorem` | [HasSum.smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/hassum-smul--126bb5a7f52019f51b2a72f8.md) | 101 | `result-track:126bb5a7f52019f51b2a72f8ff72d5aa0eabee4a0f68400761c7849c441fe8bf` |
| 11 | `theorem` | [tsum_smul_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/tsum-smul-tsum--b486393ee8b0dedf590bc800.md) | 108 | `result-track:b486393ee8b0dedf590bc800dfc44db11e957767a059939b6aa5c3794246c880` |
| 12 | `theorem` | [ContinuousLinearMap.hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/continuouslinearmap-hassum--7cd366d2230546d87b634160.md) | 124 | `result-track:7cd366d2230546d87b634160b2c89d4c058692469de3f4ee5506e61be1058434` |
| 13 | `theorem` | [ContinuousLinearMap.summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/continuouslinearmap-summable--9fed6567eae4ed3335355598.md) | 130 | `result-track:9fed6567eae4ed33353555986bcf42d3cd65a00cb0dd8d381f3916fa0bb92720` |
| 14 | `theorem` | [ContinuousLinearMap.map_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/continuouslinearmap-map-tsum--ced0626b9131593a0003cfe6.md) | 136 | `result-track:ced0626b9131593a0003cfe6dce0a506a7fad99d67225ec7cd3e80e1a366a8b7` |
| 15 | `theorem` | [ContinuousLinearEquiv.hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/continuouslinearequiv-hassum--0b8477f0ad7473cd910aa046.md) | 141 | `result-track:0b8477f0ad7473cd910aa0464377e537e0bfc6160de05183193108c8bfe27a15` |
| 16 | `theorem` | [ContinuousLinearEquiv.hasSum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/continuouslinearequiv-hassum--878fe28d93fb60547ff358d4.md) | 147 | `result-track:878fe28d93fb60547ff358d4c6a934f95b6ca01f46322b113d29ebbfc1fc26b1` |
| 17 | `theorem` | [ContinuousLinearEquiv.summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/continuouslinearequiv-summable--24379c6e7f2e1cb91b0d7370.md) | 151 | `result-track:24379c6e7f2e1cb91b0d7370d23a75f8ec4408bcfb2fa163228ca698968831cd` |
| 18 | `theorem` | [ContinuousLinearEquiv.tsum_eq_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/continuouslinearequiv-tsum-eq-iff--45a98585f4e969ba2a72cc6f.md) | 155 | `result-track:45a98585f4e969ba2a72cc6fa1994c75d509ad8a8385e7f044b4a105d54d343f` |
| 19 | `theorem` | [ContinuousLinearEquiv.map_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/continuouslinearequiv-map-tsum--b8813764e53334e902eb73c4.md) | 168 | `result-track:b8813764e53334e902eb73c4b8610bc095b2e12a00e04cd4da883350040e3cde` |
| 20 | `def` | [MulAction.automorphize](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/mulaction-automorphize--5225db4b15706e48d6b47566.md) | 187 | `declaration-track:5225db4b15706e48d6b4756682a5f19a00b65337e5673edbc5d8de39315e2528` |
| 21 | `lemma` | [MulAction.automorphize_smul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/mulaction-automorphize-smul-left--be8056c19b2bcf24dfeabf3a.md) | 204 | `result-track:be8056c19b2bcf24dfeabf3a073144bd869ee77041ac33bd01d4008802ab017e` |
| 22 | `lemma` | [AddAction.automorphize_smul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/addaction-automorphize-smul-left--b1c4b8566e4ce07ff39c0fe9.md) | 223 | `result-track:b1c4b8566e4ce07ff39c0fe9dc908378cac58d19cc8c5001f270bed7f63307f6` |
| 23 | `def` | [QuotientGroup.automorphize](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/quotientgroup-automorphize--447f9e3964d9ba9ef1d8bb7d.md) | 249 | `declaration-track:447f9e3964d9ba9ef1d8bb7d88e93823bdc0d9bc971fd981f9317462419b7653` |
| 24 | `lemma` | [QuotientGroup.automorphize_smul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/quotientgroup-automorphize-smul-left--528e92538f937383a5e04b0a.md) | 253 | `result-track:528e92538f937383a5e04b0a90758378da85955f263164216c82c95c9b551074` |
| 25 | `lemma` | [QuotientAddGroup.automorphize_smul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant6deb2370f1881ab82d985986f2220861eea7e9ddb21a4ea2dec28bf8bef9f0eb.lean/declarations/quotientaddgroup-automorphize-smul-left--525843520bbf2173d1428102.md) | 266 | `result-track:525843520bbf2173d1428102c6785e9d6c4f69d1f24a1e85a926fbda8eeef30a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
