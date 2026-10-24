# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Basic.Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a015240f6817eea89d66de973a7ede1a805ac677",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a015240f6817eea89d66de973a7ede1a805ac677`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean.json)

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
| 1 | `theorem` | [posTangentConeAt_mono](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/postangentconeat-mono--71bce5ff00dc52ee5b410704.md) | 84 | `result-track:71bce5ff00dc52ee5b410704b6d84eea1802ac6f8725e38746643525cb14f083` |
| 2 | `theorem` | [mem_posTangentConeAt_of_frequently_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/mem-postangentconeat-of-frequently-mem--706be7a8c293f219575e39cb.md) | 88 | `result-track:706be7a8c293f219575e39cbe196af4f076f2b75955c3ac5b77eca21b148af43` |
| 3 | `theorem` | [sub_mem_posTangentConeAt_of_segment_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/sub-mem-postangentconeat-of-segment-subset--647681dfe0e915b3b4214841.md) | 95 | `result-track:647681dfe0e915b3b4214841de7e4832f0e902977819bc87c8d493077ea46cd9` |
| 4 | `theorem` | [mem_posTangentConeAt_of_segment_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/mem-postangentconeat-of-segment-subset--667f795d6c4c399d0702a4af.md) | 100 | `result-track:667f795d6c4c399d0702a4af16011d86809492b7de4b1c03ecf7734af569565f` |
| 5 | `theorem` | [posTangentConeAt_univ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/postangentconeat-univ--f2882ec9d08d2b47b1332104.md) | 104 | `result-track:f2882ec9d08d2b47b1332104852098ac1c3637224c5ab9c4f49f5f6986413e5d` |
| 6 | `theorem` | [IsLocalMaxOn.hasFDerivWithinAt_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/islocalmaxon-hasfderivwithinat-nonpos--97330340c995ff0d0f127465.md) | 112 | `result-track:97330340c995ff0d0f12746569fc8847935c2c3be338662b26e3254c42bf2cf4` |
| 7 | `theorem` | [IsLocalMaxOn.fderivWithin_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/islocalmaxon-fderivwithin-nonpos--ac0ae969ba81c0f66a1ea3ad.md) | 125 | `result-track:ac0ae969ba81c0f66a1ea3ad8c3c53b7c2e870fd0465f9081abeb81c35226cd9` |
| 8 | `theorem` | [IsLocalMaxOn.hasFDerivWithinAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/islocalmaxon-hasfderivwithinat-eq-zero--a8a4382dd1ce32de91de7131.md) | 134 | `result-track:a8a4382dd1ce32de91de7131899bd3f07c48871cd063273c1697cf09e1aa763a` |
| 9 | `theorem` | [IsLocalMaxOn.fderivWithin_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/islocalmaxon-fderivwithin-eq-zero--f29332dedea015ca13842e3d.md) | 141 | `result-track:f29332dedea015ca13842e3d7146dd3e5365b63629507118b8340cf259f388e9` |
| 10 | `theorem` | [IsLocalMinOn.hasFDerivWithinAt_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/islocalminon-hasfderivwithinat-nonneg--b7c9546ac49e08f97267af1a.md) | 151 | `result-track:b7c9546ac49e08f97267af1aede9031ea46f8964febf2b78f4ab36c5b21db095` |
| 11 | `theorem` | [IsLocalMinOn.fderivWithin_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/islocalminon-fderivwithin-nonneg--1f36353f91dfcbd2915524b1.md) | 157 | `result-track:1f36353f91dfcbd2915524b183ef4381688c7adbfe2c044a0712593e83a02892` |
| 12 | `theorem` | [IsLocalMinOn.hasFDerivWithinAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/islocalminon-hasfderivwithinat-eq-zero--39feddb0cf808fe7485d09ff.md) | 166 | `result-track:39feddb0cf808fe7485d09ffc63d97e1f89190f6d2cbeec03b3cf1d069e54909` |
| 13 | `theorem` | [IsLocalMinOn.fderivWithin_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/islocalminon-fderivwithin-eq-zero--ecce3ff3f5ceb8d5c32289a2.md) | 173 | `result-track:ecce3ff3f5ceb8d5c32289a21fd47910f39897d7aa5d4efbc5d128a1e3a4b907` |
| 14 | `theorem` | [IsLocalMin.hasFDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/islocalmin-hasfderivat-eq-zero--01de358121d5f2e432fb6ad0.md) | 182 | `result-track:01de358121d5f2e432fb6ad04824320137bfc81232ac7fa3571825b74c940071` |
| 15 | `theorem` | [IsLocalMin.fderiv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/islocalmin-fderiv-eq-zero--8c87ae32a787e7cbd54d6c1f.md) | 189 | `result-track:8c87ae32a787e7cbd54d6c1f12727b49f6fcd0af06ab3a1bebb784671440d951` |
| 16 | `theorem` | [IsLocalMax.hasFDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/islocalmax-hasfderivat-eq-zero--3140d74fe23c9d5177379d6f.md) | 195 | `result-track:3140d74fe23c9d5177379d6f3be9577e32c1e1ae4629891a07f9c7eb496cf922` |
| 17 | `theorem` | [IsLocalMax.fderiv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/islocalmax-fderiv-eq-zero--ef71aab92c46c8cf065e6ba9.md) | 199 | `result-track:ef71aab92c46c8cf065e6ba955f1d068f4ddcf1b92dbf1bc7a3fbe6065d0a629` |
| 18 | `theorem` | [IsLocalExtr.hasFDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/islocalextr-hasfderivat-eq-zero--619a874ea3918cd1daa8e5c0.md) | 205 | `result-track:619a874ea3918cd1daa8e5c099260d4e56213b77acb10fbb82cd9067df988ed2` |
| 19 | `theorem` | [IsLocalExtr.fderiv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/islocalextr-fderiv-eq-zero--b41147d14193ceef4a77783c.md) | 209 | `result-track:b41147d14193ceef4a77783c4d71af440cf48bb9f45d83e9db41c699dac0855a` |
| 20 | `lemma` | [one_mem_posTangentConeAt_iff_mem_closure](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/one-mem-postangentconeat-iff-mem-closure--4aa95728e6b3446c44ab620a.md) | 222 | `result-track:4aa95728e6b3446c44ab620a52226b8e34578441c991e29ccd5c76b27a8c5a97` |
| 21 | `lemma` | [one_mem_posTangentConeAt_iff_frequently](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/one-mem-postangentconeat-iff-frequently--289ef6fc60c8401261d0b577.md) | 238 | `result-track:289ef6fc60c8401261d0b5775ad2552bbe4a038061bca66cefc8eae54c443861` |
| 22 | `theorem` | [IsLocalMin.hasDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/islocalmin-hasderivat-eq-zero--9f2107e057a1bec6114529f5.md) | 245 | `result-track:9f2107e057a1bec6114529f502edd189bae2068abc21528213a4b97260bc342c` |
| 23 | `theorem` | [IsLocalMin.deriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/islocalmin-deriv-eq-zero--172412c2c11f056d77c5913d.md) | 249 | `result-track:172412c2c11f056d77c5913dbc87d756d15325fdde167e312629a44e5c564c7e` |
| 24 | `theorem` | [IsLocalMax.hasDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/islocalmax-hasderivat-eq-zero--fa2f3f31c5cd2eeba6a4ec6e.md) | 255 | `result-track:fa2f3f31c5cd2eeba6a4ec6e4b4b068d6b8f7fabdb9ba2efe16b607a0ec62cfd` |
| 25 | `theorem` | [IsLocalMax.deriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/islocalmax-deriv-eq-zero--4b6a7cf1472b49597a2df96f.md) | 259 | `result-track:4b6a7cf1472b49597a2df96f305c3f042f25fb2ade99467dbfb5045c31426b21` |
| 26 | `theorem` | [IsLocalExtr.hasDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/islocalextr-hasderivat-eq-zero--b7c40567cec58ebdcae02189.md) | 265 | `result-track:b7c40567cec58ebdcae02189a65b5a7dca6c52ec7319f5956900e13a9bc59f7a` |
| 27 | `theorem` | [IsLocalExtr.deriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant4a630b3fab96d88358da1e90933c31d9ed2987f8ce9b40dee032d5c2460df9ce.lean/declarations/islocalextr-deriv-eq-zero--a4b7df9684b1f34ac317a5b4.md) | 269 | `result-track:a4b7df9684b1f34ac317a5b47ef6351ff4becda3e645c093ab1fc82616c821a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
