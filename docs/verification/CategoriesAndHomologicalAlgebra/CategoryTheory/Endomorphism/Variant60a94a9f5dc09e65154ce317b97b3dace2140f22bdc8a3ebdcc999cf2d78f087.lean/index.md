# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Endomorphism.Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1d202af632b9cce29890f5b752ca12a782ff300",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1d202af632b9cce29890f5b752ca12a782ff300`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Hom` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [End](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/end--ff9c684b1d0ce0c8b3f60148.md) | 36 | `declaration-track:ff9c684b1d0ce0c8b3f601486c535118e52f496b49ef9bb6c0e889c456f9a80d` |
| 2 | `instance` | [one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/one--63aa082ff2f44742b7f7e725.md) | 44 | `declaration-track:63aa082ff2f44742b7f7e7259d03d1dd4b7e7edcbf8e3d02c4098e9d0271aa3b` |
| 3 | `instance` | [inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/inhabited--2aa6daab8ad4f50787abc3a8.md) | 46 | `declaration-track:2aa6daab8ad4f50787abc3a8aba8853a24ea0f7b49cd5249d7666ebea29999db` |
| 4 | `instance` | [mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/mul--4ef2c48445031e3c4efc62ef.md) | 50 | `declaration-track:4ef2c48445031e3c4efc62ef192178a9b20f20afd8ffb44896f8cb4b09b9ec62` |
| 5 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/of--d71bfa127e033acf93b772fb.md) | 55 | `declaration-track:d71bfa127e033acf93b772fb3519440a98dc3353d292f4be6505f15939ae9464` |
| 6 | `def` | [asHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/ashom--3a6b627e3a96456490a2dc5d.md) | 59 | `declaration-track:3a6b627e3a96456490a2dc5d7ff097d2e794538e2873297623a3fa8d8b7a6ef6` |
| 7 | `theorem` | [one_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/one-def--ce8daa6a44a03fcfa8e91ee7.md) | 62 | `result-track:ce8daa6a44a03fcfa8e91ee702b88de2302e0c258191985150b9c953d6f945c9` |
| 8 | `theorem` | [mul_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/mul-def--f3ef0926f403ca0c1e6eb023.md) | 65 | `result-track:f3ef0926f403ca0c1e6eb02349867931ea5d455882090a29f53dce70f1201336` |
| 9 | `instance` | [monoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/monoid--2d4637aa543b9d971c5b88f5.md) | 70 | `declaration-track:2d4637aa543b9d971c5b88f5cd7d24885e193b62e8493a8d75526c025ee2324b` |
| 10 | `instance` | [mulActionRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/mulactionright--735f4223d6e531d40b293e44.md) | 81 | `declaration-track:735f4223d6e531d40b293e4418246776fc7580c98093d9b01ae21db1133b4433` |
| 11 | `instance` | [mulActionLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/mulactionleft--9efde036065cdca458a954c6.md) | 86 | `declaration-track:9efde036065cdca458a954c651f78da69844280722bbdac462b8d0616d812b64` |
| 12 | `theorem` | [smul_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/smul-right--eed152106b01b5c17d299ec1.md) | 91 | `result-track:eed152106b01b5c17d299ec1988df92c09ad776ac892bc9266fdf1f2df927555` |
| 13 | `theorem` | [smul_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/smul-left--05036ef55d592178508887a9.md) | 94 | `result-track:05036ef55d592178508887a9cfe15e1c3563743c222a62b13053c52ed911e3a4` |
| 14 | `instance` | [group](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/group--8ea56d2a7a8265848281bd53.md) | 100 | `declaration-track:8ea56d2a7a8265848281bd534c269f599bd7c951812a7dfbc87770bba5e76b6b` |
| 15 | `theorem` | [isUnit_iff_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/isunit-iff-isiso--99d21a48c0ef55625175084e.md) | 106 | `result-track:99d21a48c0ef55625175084ed1320b585016fd804525de1241db4c77b9c3406a` |
| 16 | `def` | [Aut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/aut--fef2579ef65575c8bc0a9d7e.md) | 118 | `declaration-track:fef2579ef65575c8bc0a9d7e7490332e4004dfb422824bffee3a5f3cdeaf1950` |
| 17 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/ext--b2baa09d26c355859bc76a18.md) | 123 | `result-track:b2baa09d26c355859bc76a18da95eaad4b0a59041dc35c40a9270297e14bcf70` |
| 18 | `instance` | [inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/inhabited--4e179f1bdf9dfa8d392fc353.md) | 126 | `declaration-track:4e179f1bdf9dfa8d392fc353e7bb496dcceb6e75dc47fb96e5c661907390443b` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/instance--28ebc6820a2b45060e01b959.md) | 128 | `declaration-track:28ebc6820a2b45060e01b9596c1a9e3bf3c84371197cc89ba714733db6de985b` |
| 20 | `theorem` | [Aut_mul_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/aut-mul-def--2ebfc2e058285209eabe9413.md) | 137 | `result-track:2ebfc2e058285209eabe9413fc027831ca70e886b741ca246590965576e83b3d` |
| 21 | `theorem` | [Aut_inv_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/aut-inv-def--deec61a0218ece26d37e4212.md) | 139 | `result-track:deec61a0218ece26d37e421205c1a31d27fc2f69ff4834505fe4be85d4195198` |
| 22 | `def` | [unitsEndEquivAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/unitsendequivaut--389721db0e8d02e182b4ae13.md) | 144 | `declaration-track:389721db0e8d02e182b4ae13a18f12964a24f46b327213bae158d44a87f9c2a7` |
| 23 | `def` | [toEnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/toend--006d82d40b79a3cf33e01a28.md) | 153 | `declaration-track:006d82d40b79a3cf33e01a28c80366e103775c746cc73ffb148abf9887977e08` |
| 24 | `def` | [autMulEquivOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/autmulequivofiso--74e97daa59e985ad7a6a8ea1.md) | 156 | `declaration-track:74e97daa59e985ad7a6a8ea17ef8754d51d4385aad255e283fc1d551a14e496a` |
| 25 | `def` | [mapEnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/mapend--cb60dbd44e094fe25f500567.md) | 171 | `declaration-track:cb60dbd44e094fe25f5005678b9fc229b42e4e051562fc6d9c9398420abcec3b` |
| 26 | `def` | [mapAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/mapaut--0c634f503ed6f67102bba03c.md) | 177 | `declaration-track:0c634f503ed6f67102bba03c8fe471f3a31a672c7ebbc152de92d75537dfca9e` |
| 27 | `def` | [mulEquivEnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/mulequivend--63072b59e9478ad89f00a56f.md) | 189 | `declaration-track:63072b59e9478ad89f00a56f7706d803c0e2f30019f017c8c80414c4bab6302c` |
| 28 | `def` | [autMulEquivOfFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant60a94a9f5dc09e65154ce317b97b3dace2140f22bdc8a3ebdcc999cf2d78f087.lean/declarations/autmulequivoffullyfaithful--2a61c0e4cd36e27f85e3bcd4.md) | 196 | `declaration-track:2a61c0e4cd36e27f85e3bcd4ac25671c2a9776572731fc42d8024b0dc4218a00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
