# Verification target: GRWTSK.Topology.GeneralTopology.Lattice.Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba381912d373a0adff583e22fbb8241233a01855",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba381912d373a0adff583e22fbb8241233a01855`.

Source path: `GRWTSK/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.LatticeGroup` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasSolidNorm](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/hassolidnorm--83bdba4ddf2e58d65d8fafa9.md) | 48 | `declaration-track:83bdba4ddf2e58d65d8fafa90ff57748ded7af6369fcabcbb5accb93746b4387` |
| 2 | `theorem` | [norm_le_norm_of_abs_le_abs](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/norm-le-norm-of-abs-le-abs--59fbe5bafc4a98fff48cb5c0.md) | 54 | `result-track:59fbe5bafc4a98fff48cb5c078a89799b73e1a7bdf59d7d8bb2df9ece9c0fcee` |
| 3 | `theorem` | [LatticeOrderedAddCommGroup.isSolid_ball](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/latticeorderedaddcommgroup-issolid-ball--2ec3c17ee44a9f4dd6ccc616.md) | 59 | `result-track:2ec3c17ee44a9f4dd6ccc616f1c10ced15dca54815bcaf9f09960c02fc56d567` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/instance--d5e808dd2113a66803514677.md) | 64 | `declaration-track:d5e808dd2113a66803514677e9125c792837769cf912cf621edc788307db7083` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/instance--9585872b1dfcf39964aa0c76.md) | 66 | `declaration-track:9585872b1dfcf39964aa0c76e56ec42d22a6fdceaec88e4f6ee34e2611b6ed78` |
| 6 | `class` | [NormedLatticeAddCommGroup](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/normedlatticeaddcommgroup--b398789409355f9d5b314a11.md) | 76 | `declaration-track:b398789409355f9d5b314a116896786d25adedf338340afb96d350282118b617` |
| 7 | `instance` | [Real.normedLatticeAddCommGroup](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/real-normedlatticeaddcommgroup--fba97bc3beb36408826dff65.md) | 81 | `declaration-track:fba97bc3beb36408826dff659ee623fd249cf5d9d5760d1b62215194377bd58e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/instance--266f6a93699883da9ada9dbb.md) | 87 | `declaration-track:266f6a93699883da9ada9dbbb89d4114ba120602147cc0d30e624813677a2003` |
| 9 | `theorem` | [dual_solid](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/dual-solid--87af79cbd9e6f1b386cfd33f.md) | 96 | `result-track:87af79cbd9e6f1b386cfd33fc716818cfcbd3e45da577e051f0eb27460a20b9d` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/instance--92837c0f53768c306b72592a.md) | 110 | `declaration-track:92837c0f53768c306b72592a9b0690076aee88d8a0a110d71de2f4e9c94c5f4c` |
| 11 | `theorem` | [norm_abs_eq_norm](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/norm-abs-eq-norm--0525c14d05ec5d5cb012fa1f.md) | 114 | `result-track:0525c14d05ec5d5cb012fa1f28bc6d3d3fa8a3b1ecda44367908aa0224200848` |
| 12 | `theorem` | [norm_inf_sub_inf_le_add_norm](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/norm-inf-sub-inf-le-add-norm--43cfbf8d39448a2e9f9548e0.md) | 118 | `result-track:43cfbf8d39448a2e9f9548e081541352c40894ce0a0d9ccb05b6e8e47a8a7467` |
| 13 | `theorem` | [norm_sup_sub_sup_le_add_norm](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/norm-sup-sub-sup-le-add-norm--45f83f956137cf2baf981100.md) | 132 | `result-track:45f83f956137cf2baf9811000e324a636a2351545b4dd0279d729cc3902c2d43` |
| 14 | `theorem` | [norm_inf_le_add](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/norm-inf-le-add--46050b61117b3e4b6c7dbf27.md) | 146 | `result-track:46050b61117b3e4b6c7dbf277da356ff2d7000a545dcdcbb3bf0eb4c2218d976` |
| 15 | `theorem` | [norm_sup_le_add](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/norm-sup-le-add--59b95fe2e45437145f80c309.md) | 151 | `result-track:59b95fe2e45437145f80c309ae46050170b00f2c5c67f2c49972e9bfcff09a1d` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/instance--fe7d09d6e012be7192dbaf21.md) | 159 | `declaration-track:fe7d09d6e012be7192dbaf211f99ee2ae5f5a1211829d16f91ada5343e93f266` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/instance--c1c188324d3fce2971e1d61a.md) | 170 | `declaration-track:c1c188324d3fce2971e1d61aa2cf24f06f5fbf33bd6c0e032241803c5a195767` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/instance--fd9e45aa2d54d3e9c0a8e9e3.md) | 179 | `declaration-track:fd9e45aa2d54d3e9c0a8e9e34d517182cf0ea90220d13259a324ba8211c26370` |
| 19 | `theorem` | [norm_abs_sub_abs](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/norm-abs-sub-abs--ffc85c79898a5a6f718d6a05.md) | 183 | `result-track:ffc85c79898a5a6f718d6a05acfbb7f76f91f967e7cf2881ac5d302da0af2f53` |
| 20 | `theorem` | [norm_sup_sub_sup_le_norm](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/norm-sup-sub-sup-le-norm--abb0a982416131b1a2a8896f.md) | 187 | `result-track:abb0a982416131b1a2a8896f61db9d992850bf30d201bc726eed0d178905d816` |
| 21 | `theorem` | [norm_inf_sub_inf_le_norm](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/norm-inf-sub-inf-le-norm--0a495d1a695d991a1021048f.md) | 191 | `result-track:0a495d1a695d991a1021048f5a544193943847972705d424a228f3fb28d672b5` |
| 22 | `theorem` | [lipschitzWith_sup_right](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/lipschitzwith-sup-right--2d822751e6031a9be8041068.md) | 195 | `result-track:2d822751e6031a9be8041068b0b5c99c9c4209ed9915db41b9cb04c5353a3c29` |
| 23 | `theorem` | [lipschitzWith_pos](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/lipschitzwith-pos--a96e16fb5543fbf9a1cd609e.md) | 201 | `result-track:a96e16fb5543fbf9a1cd609e2f93bb953180439afedd4ea052ac95388085701f` |
| 24 | `theorem` | [continuous_pos](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/continuous-pos--a2bde22f40572a83fac676e7.md) | 205 | `result-track:a2bde22f40572a83fac676e705707696ab9d899340cfaade1298f93ba85040b8` |
| 25 | `theorem` | [continuous_neg'](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/continuous-neg--04180c32c460abfb3d3deda9.md) | 209 | `result-track:04180c32c460abfb3d3deda918359f66640e8767a6251645ba4a3d3665fcf633` |
| 26 | `theorem` | [isClosed_nonneg](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/isclosed-nonneg--6bfc785f2a19d3be8dc5d4a2.md) | 214 | `result-track:6bfc785f2a19d3be8dc5d4a2edcdc73b098c0c00cebc0d2637539afd20fefe91` |
| 27 | `theorem` | [isClosed_le_of_isClosed_nonneg](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/isclosed-le-of-isclosed-nonneg--5133718ed93f7412346e5456.md) | 225 | `result-track:5133718ed93f7412346e5456f00701e078b1820e63771ca64a702d1bd91403f3` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant0c935bd1e39e93fde88fcffedd21e0bacf9ac9ead9fba3ffa0cb490a361462ff.lean/declarations/instance--52a8bd638f87a634b5ecc118.md) | 235 | `declaration-track:52a8bd638f87a634b5ecc118d67632f29e1e0c669ee40d2130887475c70878c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
