# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Pow.Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c0d8c917a913baa2e3beeb593e122d797219f15",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c0d8c917a913baa2e3beeb593e122d797219f15`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasStrictDerivAt.fun_pow'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/hasstrictderivat-fun-pow--129d92c3a26d17f57f9f4bb6.md) | 42 | `result-track:129d92c3a26d17f57f9f4bb6fb7bb3ddf87a8264b04d6d3a0f9909a812bc8715` |
| 2 | `theorem` | [HasStrictDerivAt.pow'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/hasstrictderivat-pow--4c7b734499800a162365fae2.md) | 47 | `result-track:4c7b734499800a162365fae20a66dfbb65ae3c37af3e461eb4dc48fa27436d31` |
| 3 | `theorem` | [HasDerivWithinAt.fun_pow'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/hasderivwithinat-fun-pow--f7ea9905eff02d1d60bc53e0.md) | 52 | `result-track:f7ea9905eff02d1d60bc53e0217b563026b5a70f978e77f9c8ae430294beff96` |
| 4 | `theorem` | [HasDerivWithinAt.pow'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/hasderivwithinat-pow--bd81f08a2a77b88c6c23475c.md) | 57 | `result-track:bd81f08a2a77b88c6c23475cf0ac2586ab98b77ac9f4075dd798bb79bfdf5d23` |
| 5 | `theorem` | [HasDerivAt.fun_pow'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/hasderivat-fun-pow--25827a5df3de49c8751307e9.md) | 61 | `result-track:25827a5df3de49c8751307e97753253ea683abf11d33b8ad425488a2a0f729b0` |
| 6 | `theorem` | [HasDerivAt.pow'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/hasderivat-pow--9d96c569e457b40fa48ab9ea.md) | 66 | `result-track:9d96c569e457b40fa48ab9ea93626ae853610fe5b37ee7050ae00251fb8d3b5c` |
| 7 | `theorem` | [derivWithin_fun_pow'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/derivwithin-fun-pow--16931a47871b65ab34207c6b.md) | 71 | `result-track:16931a47871b65ab34207c6b7b63d54674eba0cfd6c6ff318c95f6eb442fcc07` |
| 8 | `theorem` | [derivWithin_pow'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/derivwithin-pow--8c952c9ec54faf9f3a1a3533.md) | 79 | `result-track:8c952c9ec54faf9f3a1a3533c9285f27b81952658af722e021b000a00dcd2e84` |
| 9 | `theorem` | [deriv_fun_pow'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/deriv-fun-pow--e40f745e8a527da21b770dd3.md) | 85 | `result-track:e40f745e8a527da21b770dd3a5d550439e87a0b14458c9f64245b015afb63fd2` |
| 10 | `theorem` | [deriv_pow'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/deriv-pow--cddc2f2f72651d89af9e6d8a.md) | 90 | `result-track:cddc2f2f72651d89af9e6d8a3072c460a0901db092e6be0b849871d98ff33951` |
| 11 | `theorem` | [HasStrictDerivAt.fun_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/hasstrictderivat-fun-pow--580b26a5ef701f6825a6e1d4.md) | 102 | `result-track:580b26a5ef701f6825a6e1d48dc58133b69782a63a156c6f2663d01ce70cde0c` |
| 12 | `theorem` | [HasStrictDerivAt.pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/hasstrictderivat-pow--19644b280550b3d1c53626d1.md) | 106 | `result-track:19644b280550b3d1c53626d1beae6fa4fc1ffd45ed5e44d155f1b5a9c7e831b3` |
| 13 | `theorem` | [HasDerivWithinAt.fun_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/hasderivwithinat-fun-pow--0f55e4b76e227ce568a2879c.md) | 109 | `result-track:0f55e4b76e227ce568a2879c4fc42d9cfdb026aec7c1f3d4aaf2d0ba06f58048` |
| 14 | `theorem` | [HasDerivWithinAt.pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/hasderivwithinat-pow--fe454a144f374d36dcf22514.md) | 113 | `result-track:fe454a144f374d36dcf2251433d1a9fe617065a95c847a0df2c254df20097679` |
| 15 | `theorem` | [HasDerivAt.pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/hasderivat-pow--ac03f4bf32bf270d72b29640.md) | 117 | `result-track:ac03f4bf32bf270d72b29640f0a2d453cd63558bc95928df2bf857c1051dabfb` |
| 16 | `theorem` | [derivWithin_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/derivwithin-pow--19ff5b616b53f07fad8cb8b4.md) | 122 | `result-track:19ff5b616b53f07fad8cb8b4cebdf3ce58ac15e7dc6bed98982d3e889cd9e2a0` |
| 17 | `theorem` | [deriv_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/deriv-pow--efda1b32c292fc306755830f.md) | 129 | `result-track:efda1b32c292fc306755830ff5092c567b9ea4e7045f6e36a85b131896174a53` |
| 18 | `theorem` | [hasStrictDerivAt_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/hasstrictderivat-pow--44c23c06b3d40b08bf98cf00.md) | 137 | `result-track:44c23c06b3d40b08bf98cf00c492543703a4508cdc59a2eee60a5f635c8d8cd3` |
| 19 | `theorem` | [hasDerivWithinAt_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/hasderivwithinat-pow--b070621004085114d024e0f5.md) | 141 | `result-track:b070621004085114d024e0f505834fbb42ba33d8f6be72251cd06f1c3ec2cc3e` |
| 20 | `theorem` | [hasDerivAt_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/hasderivat-pow--a5e77f06f006643f30acc183.md) | 145 | `result-track:a5e77f06f006643f30acc1834c79df180bf41d1167bc573e2d2da47273b40b7a` |
| 21 | `theorem` | [derivWithin_pow_field](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/derivwithin-pow-field--644237e3b328d0a894a0aa4e.md) | 149 | `result-track:644237e3b328d0a894a0aa4e4b91e7e860c539397cecd5c3db5793e4cfba1be9` |
| 22 | `theorem` | [deriv_pow_field](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantbcc4829ca9bb2acf9be48f94e0f805d43d430147fbabba3048498068c0ccd22d.lean/declarations/deriv-pow-field--1bd7e22363b40765943ca738.md) | 153 | `result-track:1bd7e22363b40765943ca7385869de06eb9b370a129e730cf5ea2e3bf0a1cdb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
