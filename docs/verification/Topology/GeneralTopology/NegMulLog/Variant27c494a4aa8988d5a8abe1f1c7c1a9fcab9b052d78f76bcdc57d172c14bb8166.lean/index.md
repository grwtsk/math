# Verification target: GRWTSK.Topology.GeneralTopology.NegMulLog.Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22cfb270646646d61913c5b6caf2fbaa9e98152a",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22cfb270646646d61913c5b6caf2fbaa9e98152a`.

Source path: `GRWTSK/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Deriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [continuous_mul_log](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/continuous-mul-log--f2c6706229d15d38519d1b10.md) | 27 | `result-track:f2c6706229d15d38519d1b107cd64c2f376f5b970ee38bd7060ee1d2ca136124` |
| 2 | `lemma` | [Continuous.mul_log](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/continuous-mul-log--69deb7fab1c76b77c7caac66.md) | 44 | `result-track:69deb7fab1c76b77c7caac6663bbc18caf7e5e719228202baf4d12520c598b28` |
| 3 | `lemma` | [differentiableOn_mul_log](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/differentiableon-mul-log--f6ea731b94725593c91559ba.md) | 47 | `result-track:f6ea731b94725593c91559bab36391e2ea6433016228145a562c6fc8d58ccc0c` |
| 4 | `lemma` | [deriv_mul_log](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/deriv-mul-log--6d756a5a877dd185a5e77815.md) | 50 | `result-track:6d756a5a877dd185a5e778154b6b37cdd604856bbcb7491fec571ff29cf970ad` |
| 5 | `lemma` | [hasDerivAt_mul_log](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/hasderivat-mul-log--078dde9b44da965a6290a333.md) | 53 | `result-track:078dde9b44da965a6290a33358bdc8af01d4891c9295d8f807c7eded9b52eedb` |
| 6 | `lemma` | [rightDeriv_mul_log](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/rightderiv-mul-log--d1572face595f15966f99502.md) | 59 | `result-track:d1572face595f15966f995025892a0ab74151703a520e2c31d9a100bdcd65c4b` |
| 7 | `lemma` | [leftDeriv_mul_log](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/leftderiv-mul-log--1742194f48ef4dd1e110972e.md) | 64 | `result-track:1742194f48ef4dd1e110972e57d80b099c4f4e247741e8a74772109e392ceb02` |
| 8 | `lemma` | [tendsto_deriv_mul_log_nhdsWithin_zero](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/tendsto-deriv-mul-log-nhdswithin-zero--823843d6723c6ee564bea977.md) | 69 | `result-track:823843d6723c6ee564bea97765a6bdaacc80d98e571f4e8a12c0ef9fd0e7c7c1` |
| 9 | `lemma` | [tendsto_deriv_mul_log_atTop](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/tendsto-deriv-mul-log-attop--d22f2cc18f43821a84d49934.md) | 79 | `result-track:d22f2cc18f43821a84d499341927398053f4799a013a3f3d8b6cca7b652edf7b` |
| 10 | `lemma` | [tendsto_rightDeriv_mul_log_atTop](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/tendsto-rightderiv-mul-log-attop--830f0bf1ab2710f454ed3d18.md) | 86 | `result-track:830f0bf1ab2710f454ed3d18369ec62053c920e69f0a79391661bd032684b8c8` |
| 11 | `lemma` | [not_DifferentiableAt_log_mul_zero](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/not-differentiableat-log-mul-zero--f1b6c7a501b5ec913701fb56.md) | 94 | `result-track:f1b6c7a501b5ec913701fb56ee851372173653e22283ec20fb42a9fa245a7ffd` |
| 12 | `lemma` | [deriv_mul_log_zero](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/deriv-mul-log-zero--d7df555e1284407dca88b5bd.md) | 101 | `result-track:d7df555e1284407dca88b5bdfa8156fa208af3fbdceadcc7041db715de5c2ad5` |
| 13 | `lemma` | [not_continuousAt_deriv_mul_log_zero](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/not-continuousat-deriv-mul-log-zero--ded559065401349baa7b79f5.md) | 104 | `result-track:ded559065401349baa7b79f53651a5304df3beb1922d58ec39cf5925cbb76b9d` |
| 14 | `lemma` | [deriv2_mul_log](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/deriv2-mul-log--b2316c6e78c1000fe9c687a2.md) | 108 | `result-track:b2316c6e78c1000fe9c687a24a5dc462c45c2542d762596424c7f5b06c0b9079` |
| 15 | `lemma` | [strictConvexOn_mul_log](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/strictconvexon-mul-log--54729750ba0bab85d2c2a043.md) | 119 | `result-track:54729750ba0bab85d2c2a0431e8251a3ef02fb85cce3b2233502550f9e49afa2` |
| 16 | `lemma` | [convexOn_mul_log](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/convexon-mul-log--cca8a5c999b473de2dfbcc53.md) | 126 | `result-track:cca8a5c999b473de2dfbcc53409477595963d416c2da697eed92a4085eb023c0` |
| 17 | `lemma` | [mul_log_nonneg](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/mul-log-nonneg--5597d5ee857ef7578be9aa64.md) | 129 | `result-track:5597d5ee857ef7578be9aa644e885fb2361c3cf41c723d4c5c50168e9de7e133` |
| 18 | `lemma` | [mul_log_nonpos](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/mul-log-nonpos--cd436637ccb3166bc0fe92e6.md) | 132 | `result-track:cd436637ccb3166bc0fe92e67fe515bfd2cbdca67625c1b6f7068826270fadbd` |
| 19 | `def` | [negMulLog](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/negmullog--ed9c3f39a8ac844ed5d50684.md) | 138 | `declaration-track:ed9c3f39a8ac844ed5d5068423f760cba1c25f3185f4092caca7b69ad88c6675` |
| 20 | `lemma` | [negMulLog_def](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/negmullog-def--e37c302868e123e63cf18ac0.md) | 140 | `result-track:e37c302868e123e63cf18ac000a5c79e36bae32786133bb1e316275a787dd819` |
| 21 | `lemma` | [negMulLog_eq_neg](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/negmullog-eq-neg--9f2844d1a80b907fe1a12614.md) | 142 | `result-track:9f2844d1a80b907fe1a1261400e8ffe14186f68bf2720bb44113f4cff2d242e3` |
| 22 | `lemma` | [negMulLog_zero](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/negmullog-zero--a402a8255ffa0d9edfa5074f.md) | 144 | `result-track:a402a8255ffa0d9edfa5074f11e075dd17df075cce228c9d3493b2b889fe3011` |
| 23 | `lemma` | [negMulLog_one](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/negmullog-one--2981e4f960c346c6fbdd3a72.md) | 146 | `result-track:2981e4f960c346c6fbdd3a720000abfa295bbc23a1773e5db3d756d7efe00e9b` |
| 24 | `lemma` | [negMulLog_nonneg](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/negmullog-nonneg--a4052f4818ee6e02e9a96b21.md) | 148 | `result-track:a4052f4818ee6e02e9a96b21f153ce136107da959d582112c7b51176620b2d18` |
| 25 | `lemma` | [negMulLog_mul](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/negmullog-mul--e7aed7ffe5210e0f1c11b91b.md) | 151 | `result-track:e7aed7ffe5210e0f1c11b91b87fe3363607f8eae91c993879c0906b837d2011b` |
| 26 | `lemma` | [continuous_negMulLog](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/continuous-negmullog--34d4b3eaa890b2e7829892e1.md) | 160 | `result-track:34d4b3eaa890b2e7829892e1e53e7a3f9901f74a40870e0420a5e7ab38baf3a1` |
| 27 | `lemma` | [differentiableOn_negMulLog](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/differentiableon-negmullog--6a17b63c0d78424a54f32c26.md) | 163 | `result-track:6a17b63c0d78424a54f32c26bdc884e9afca10f264fb94b52235b188e929fb97` |
| 28 | `lemma` | [differentiableAt_negMulLog_iff](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/differentiableat-negmullog-iff--61d6d2b2b974f8239c573261.md) | 166 | `result-track:61d6d2b2b974f8239c5732618861bdb37a09cd25b5e0449c5469a80993dbb5f7` |
| 29 | `lemma` | [deriv_negMulLog](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/deriv-negmullog--b2c731b3f41165b9301b571f.md) | 182 | `result-track:b2c731b3f41165b9301b571f8cd8ffad3324141b2b4bbed463d1f0c0a076f08a` |
| 30 | `lemma` | [hasDerivAt_negMulLog](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/hasderivat-negmullog--d463c00f5fe252220a741f1e.md) | 186 | `result-track:d463c00f5fe252220a741f1ea9a610d2fd34eac1773fc005f2f20dd8674b5fbc` |
| 31 | `lemma` | [deriv2_negMulLog](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/deriv2-negmullog--edf7a32503b29ce164ad455e.md) | 191 | `result-track:edf7a32503b29ce164ad455ee3aef4a9d6e0f9d627b118f465fe7d576602a607` |
| 32 | `lemma` | [strictConcaveOn_negMulLog](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/strictconcaveon-negmullog--295281d6a3f24b07f792934a.md) | 198 | `result-track:295281d6a3f24b07f792934a16101f59282ab4482da35404b9e084f3b29bb42d` |
| 33 | `lemma` | [concaveOn_negMulLog](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/declarations/concaveon-negmullog--2b01487c9332c9e8e8e42078.md) | 201 | `result-track:2b01487c9332c9e8e8e4207822eab87cbc52c99ab480d1f996274da93079dc22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
