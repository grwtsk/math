# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6a81feaca0285d837fd110a7b47361db20f1c31",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6a81feaca0285d837fd110a7b47361db20f1c31`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subsemigroup.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice.Image` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/instance--75a61865fdb43ebd2d0e8a29.md) | 65 | `declaration-track:75a61865fdb43ebd2d0e8a29be1bf31fa1c5848c85c9243492e6b8c693e6e20e` |
| 2 | `theorem` | [coe_sInf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/coe-sinf--26191e2ed68b31ba71626466.md) | 73 | `result-track:26191e2ed68b31ba71626466ff908621b75f123b47d33ea9f51034cd4f64b62b` |
| 3 | `theorem` | [mem_sInf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/mem-sinf--f6b13924789169b8cbdba2e8.md) | 77 | `result-track:f6b13924789169b8cbdba2e8a7c28613d4b7cd0da1472e035bb40d107e74266a` |
| 4 | `theorem` | [mem_iInf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/mem-iinf--ce16f382e862c7101a38c9a9.md) | 81 | `result-track:ce16f382e862c7101a38c9a98589f70121d5750dd7c45b3cdd4c344514551b80` |
| 5 | `theorem` | [coe_iInf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/coe-iinf--aaac4dae45616fa2c92c546b.md) | 85 | `result-track:aaac4dae45616fa2c92c546b5e2dc0648dd8e6e73d4ffca26c2b54de83f69a50` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/instance--a2e2abeb050471b4b52f5af6.md) | 90 | `declaration-track:a2e2abeb050471b4b52f5af6b283bf2af9b2dab2ae67f2cfb764a09f2a892e68` |
| 7 | `def` | [closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/closure--81faa5e29bc6a32282efef06.md) | 107 | `declaration-track:81faa5e29bc6a32282efef064aa7982b19980f54b509b0b388f74098ca9d0abf` |
| 8 | `theorem` | [mem_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/mem-closure--eba2d1773aeb8657c03ad21e.md) | 111 | `result-track:eba2d1773aeb8657c03ad21e414e3350068dda763bb1b2de2b23871ece8bb3f3` |
| 9 | `theorem` | [subset_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/subset-closure--34a92b211c927f154f87053e.md) | 117 | `result-track:34a92b211c927f154f87053e24f941473895d7239be62e2a48a877e120ec1338` |
| 10 | `theorem` | [notMem_of_notMem_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/notmem-of-notmem-closure--62d9b3ee22eb9722b977ce75.md) | 120 | `result-track:62d9b3ee22eb9722b977ce7538f7c582b88d570f8981bd078e5bee23bbca321f` |
| 11 | `theorem` | [closure_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/closure-le--4d66aa991c597bf227351470.md) | 136 | `result-track:4d66aa991c597bf2273514703eea6af51a63182303d75509cbde0cb8b09dbcfc` |
| 12 | `theorem` | [closure_mono](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/closure-mono--8424656357cc9c81393521e6.md) | 143 | `result-track:8424656357cc9c81393521e613a891beabaac59ae1e93aa4e5f947ee569e64cb` |
| 13 | `theorem` | [closure_eq_of_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/closure-eq-of-le--5fde104756f7bc89b32f7bd2.md) | 147 | `result-track:5fde104756f7bc89b32f7bd223db471c0736180fcd31ca2e2842e822dbf2986c` |
| 14 | `theorem` | [closure_induction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/closure-induction--a4614bc8d11088ada1374eaf.md) | 157 | `result-track:a4614bc8d11088ada1374eaf545cac48c4c7061a1ae60e122ee44264a72ec069` |
| 15 | `theorem` | [closure_induction₂](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/closure-induction--7c518b6df05731008a5cf250.md) | 169 | `result-track:7c518b6df05731008a5cf250100030d09cc3ab2771c767a03dc332aa32e0178d` |
| 16 | `theorem` | [dense_induction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/dense-induction--d70e62bc940ab154f661cbaf.md) | 187 | `result-track:d70e62bc940ab154f661cbaf4ed919d38a43af8c5f2ff174670d2251d36564d3` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/example--086bc533fb40e24325558077.md) | 198 | `declaration-track:086bc533fb40e2432555807772ecc326dcdaa26383528743ba4d81bc59a65a76` |
| 18 | `def` | [gi](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/gi--a77aca3d518d48d9376579cc.md) | 210 | `declaration-track:a77aca3d518d48d9376579cc3934a13814c54f4239c75b5e5f94a89302ecfbe1` |
| 19 | `theorem` | [closure_eq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/closure-eq--d28f2a79bc7c6216d504ed50.md) | 217 | `result-track:d28f2a79bc7c6216d504ed50dc8c8b5ce57607326a31dcfb4cafd3aed85366eb` |
| 20 | `theorem` | [closure_empty](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/closure-empty--64c0cad4da8d6585a5768fe1.md) | 221 | `result-track:64c0cad4da8d6585a5768fe16959a9ad0f9460f117c6c9f810e8af2e7f7852f7` |
| 21 | `theorem` | [closure_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/closure-univ--29e4d3a76a6356b2e6d34ce4.md) | 225 | `result-track:29e4d3a76a6356b2e6d34ce436d52dc36795f0798961f4ad1521dcca64981cfb` |
| 22 | `theorem` | [closure_union](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/closure-union--3b0e420becd888ddff684449.md) | 229 | `result-track:3b0e420becd888ddff684449968fd6dc37f44cb1e07c34b2735c11cf8ec8970c` |
| 23 | `theorem` | [closure_iUnion](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/closure-iunion--f4c0f358a6955f74d87fae28.md) | 233 | `result-track:f4c0f358a6955f74d87fae286ce8ac3d65c391492d2a04bebd08adb4739fd744` |
| 24 | `theorem` | [closure_singleton_le_iff_mem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/closure-singleton-le-iff-mem--b11f6561b5c62cb18786b2da.md) | 237 | `result-track:b11f6561b5c62cb18786b2da2ae4fa765b03839c59fa10765142f56b0fc6c8da` |
| 25 | `theorem` | [mem_iSup](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/mem-isup--26b37f2be385bf75c384df61.md) | 241 | `result-track:26b37f2be385bf75c384df61f091ac200fdf5b42128c65c03698770702ab039b` |
| 26 | `theorem` | [iSup_eq_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/isup-eq-closure--63568f029645dfa2d23b0167.md) | 247 | `result-track:63568f029645dfa2d23b016707fcf24bc7e63cb856872ac3b35b3f952b30a090` |
| 27 | `theorem` | [eqOn_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/eqon-closure--330a0b3db325f541be153d83.md) | 262 | `result-track:330a0b3db325f541be153d83201938cfcce66e0a70bfdc62144b6aa4ad18ba89` |
| 28 | `theorem` | [eq_of_eqOn_dense](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/eq-of-eqon-dense--91643bcd4dd11b712792e865.md) | 267 | `result-track:91643bcd4dd11b712792e8656a7ce91c9e71b1845ff736bfba776a1694d29a4d` |
| 29 | `def` | [ofDense](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/ofdense--b77e056913f6785869c41dc2.md) | 285 | `declaration-track:b77e056913f6785869c41dc2c4370db1a79ef25bf792b2677a2ffec4b58ab4b2` |
| 30 | `theorem` | [coe_ofDense](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8f50fe4c279adae8f853345a9907f14765b15c4098bfae904f6d9404f2271bb3.lean/declarations/coe-ofdense--454d4a6ae95e6fad1f6c76bf.md) | 299 | `result-track:454d4a6ae95e6fad1f6c76bf1a4f7217875e0c586116c378e49432f4a9176c1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
