# Verification target: GRWTSK.Topology.GeneralTopology.Lattice.Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2fbd0433939d2e0793acddfdfe07902d870eaa6",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2fbd0433939d2e0793acddfdfe07902d870eaa6`.

Source path: `GRWTSK/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.LatticeGroup` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasSolidNorm](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/hassolidnorm--424cd05aa34e41a21948d48b.md) | 56 | `declaration-track:424cd05aa34e41a21948d48bece5b96ba2879a5f85cc38f7f942924238c567b3` |
| 2 | `theorem` | [norm_le_norm_of_abs_le_abs](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/norm-le-norm-of-abs-le-abs--e5198ede00d28ae5f3d8ce30.md) | 62 | `result-track:e5198ede00d28ae5f3d8ce30b4653eb7e8cb0ba877cf5050e171ec9fe3905586` |
| 3 | `theorem` | [LatticeOrderedAddCommGroup.isSolid_ball](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/latticeorderedaddcommgroup-issolid-ball--59ec321d393f273120dba557.md) | 67 | `result-track:59ec321d393f273120dba55795576598b449d60504a48254edaf381f3ad37ead` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/instance--811f73e956617466cc578232.md) | 72 | `declaration-track:811f73e956617466cc5782328d57f9780b2a2a03381b71ad05395aadb3f75a8d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/instance--ec3f4c61c4be2a9f261f6455.md) | 74 | `declaration-track:ec3f4c61c4be2a9f261f6455ac98c30e5e79ba198d36bcb655db30239421f7e7` |
| 6 | `class` | [NormedLatticeAddCommGroup](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/normedlatticeaddcommgroup--4ff51b9e70634bc8feb78f23.md) | 84 | `declaration-track:4ff51b9e70634bc8feb78f23a325b3a6b36381229208edc8a1a79466b39175de` |
| 7 | `instance` | [Real.normedLatticeAddCommGroup](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/real-normedlatticeaddcommgroup--8e9110327cf1437aca0d5946.md) | 89 | `declaration-track:8e9110327cf1437aca0d5946f93865cf361f27fd611519416d3cae05345b931f` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/instance--61675fdd35d2eefabed8a90e.md) | 95 | `declaration-track:61675fdd35d2eefabed8a90ec89e0ce4f225147d0140f965b53aa4c7058d6a73` |
| 9 | `theorem` | [dual_solid](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/dual-solid--e75fd8073b6c10fb7ae25a15.md) | 104 | `result-track:e75fd8073b6c10fb7ae25a1503da1685463fb341dab00f46c037d81df62ab4b9` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/instance--6412d54dd6de70b4a412664b.md) | 118 | `declaration-track:6412d54dd6de70b4a412664b009a9f0aee71a6fa13c038c3c394288c89ffc938` |
| 11 | `theorem` | [norm_abs_eq_norm](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/norm-abs-eq-norm--dd8e3a66a94e91a24646e078.md) | 122 | `result-track:dd8e3a66a94e91a24646e078dacd9ddfa6c010a859dfee0fcacccac6a16947f0` |
| 12 | `theorem` | [norm_inf_sub_inf_le_add_norm](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/norm-inf-sub-inf-le-add-norm--bfcbda0f50cf8f4cf8c8d6c2.md) | 126 | `result-track:bfcbda0f50cf8f4cf8c8d6c2d153b8a8e65468f5c9f145cd1b171dee8e74afcc` |
| 13 | `theorem` | [norm_sup_sub_sup_le_add_norm](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/norm-sup-sub-sup-le-add-norm--a6dac030388d21b5bf194018.md) | 140 | `result-track:a6dac030388d21b5bf194018130d041e916a2a29c3c1c51fe97c13c356f0f7a8` |
| 14 | `theorem` | [norm_inf_le_add](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/norm-inf-le-add--2938cce1c7c4a530b0e731f8.md) | 154 | `result-track:2938cce1c7c4a530b0e731f82c18aaa8b720d858505e697459d319b2d442a4f6` |
| 15 | `theorem` | [norm_sup_le_add](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/norm-sup-le-add--7798a883b938f9f74c39b699.md) | 159 | `result-track:7798a883b938f9f74c39b6996282bad5ca40b29c08c3f81d490c6920306d3682` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/instance--c539ae6825c7233a4d56caa1.md) | 167 | `declaration-track:c539ae6825c7233a4d56caa148d508a077e82e60db03ed88a8950b1a7383e5be` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/instance--99369edff94c481ee3e6f85c.md) | 178 | `declaration-track:99369edff94c481ee3e6f85c443a54eee07d1e48f9832fb8ff7b71fd10807f18` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/instance--78e21e4687c026c930f11d4f.md) | 187 | `declaration-track:78e21e4687c026c930f11d4f03eac31ec67ce04795780512de901130186fe9d4` |
| 19 | `theorem` | [norm_abs_sub_abs](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/norm-abs-sub-abs--ec3e7ef43830085f11f12125.md) | 191 | `result-track:ec3e7ef43830085f11f12125949a26178b038ec40848663e5cc3fb3c5404b76f` |
| 20 | `theorem` | [norm_sup_sub_sup_le_norm](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/norm-sup-sub-sup-le-norm--dc7af75689c2d934c2b9a79b.md) | 195 | `result-track:dc7af75689c2d934c2b9a79b44defdeedc6b0749779c56e1c949c94f29603457` |
| 21 | `theorem` | [norm_inf_sub_inf_le_norm](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/norm-inf-sub-inf-le-norm--f552d94b53d5cda89da36166.md) | 199 | `result-track:f552d94b53d5cda89da361668e654d3fdb31684b3b3ffeb031defb04b81559d3` |
| 22 | `theorem` | [lipschitzWith_sup_right](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/lipschitzwith-sup-right--57c9555517bcb3349bed6e48.md) | 203 | `result-track:57c9555517bcb3349bed6e48b5ff4c57cefeff5d4ade39b5c59a99c70679cb9f` |
| 23 | `theorem` | [lipschitzWith_pos](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/lipschitzwith-pos--47563eef0f67801c25b9d765.md) | 209 | `result-track:47563eef0f67801c25b9d765b7a1175a9b5eb850ea624fbaf49d5cf8c3d13d16` |
| 24 | `theorem` | [continuous_pos](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/continuous-pos--53b3f920248fb8720a4e007d.md) | 213 | `result-track:53b3f920248fb8720a4e007d05bce1499724b927e6c2d75108241648166e9667` |
| 25 | `theorem` | [continuous_neg'](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/continuous-neg--e2f89412ff2281294cdae3de.md) | 217 | `result-track:e2f89412ff2281294cdae3def669dfc7e6d40d47225d36756c51099d31194f34` |
| 26 | `theorem` | [isClosed_nonneg](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/isclosed-nonneg--8f32d933ee251c9a3aaedbff.md) | 222 | `result-track:8f32d933ee251c9a3aaedbffdd364d6f20c47bc6558db74a2c218f04ec191650` |
| 27 | `theorem` | [isClosed_le_of_isClosed_nonneg](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/isclosed-le-of-isclosed-nonneg--91d1b7be2aa5f1c2a73c2385.md) | 233 | `result-track:91d1b7be2aa5f1c2a73c2385334a12b9a0228d487fc7efc608d605e6a18c52ea` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/declarations/instance--4fd96fc74a8aeef641385570.md) | 243 | `declaration-track:4fd96fc74a8aeef641385570a4314662eccbf9498c18dd10eccfe1f57a2d6987` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
