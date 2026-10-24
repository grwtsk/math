# Verification target: GRWTSK.Algebra.LinearAlgebra.EvenEquiv.Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6b6f96aaa1ac702f25e0fa20678fe10725ac9d2",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6b6f96aaa1ac702f25e0fa20678fe10725ac9d2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Conjugation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Even` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Q'](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/q--43240c19b991e566dd3e1046.md) | 46 | `declaration-track:43240c19b991e566dd3e1046df4c85e920ad2f26823b3486b037abf361cb7969` |
| 2 | `theorem` | [Q'_apply](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/q-apply--c19c787ea9c8fffee4523c37.md) | 49 | `result-track:c19c787ea9c8fffee4523c37e1f50316856e635a9f64d9049ba5bb0cf113867b` |
| 3 | `def` | [e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/e0--1e5d789b9ef57c9bb61792bf.md) | 53 | `declaration-track:1e5d789b9ef57c9bb61792bf0ea49a2f131277c47e250c16c7cc8ec803cff30b` |
| 4 | `def` | [v](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/v--4464f7991f53731c90bf4be1.md) | 57 | `declaration-track:4464f7991f53731c90bf4be18c5a1fa44f2352901239ab9e13b5cb86d47dbedf` |
| 5 | `theorem` | [ι_eq_v_add_smul_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/eq-v-add-smul-e0--1b7320d074bb56a7c3444b34.md) | 60 | `result-track:1b7320d074bb56a7c3444b3433351c4cf33650b15b78f91123710c6dc26c7a29` |
| 6 | `theorem` | [e0_mul_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/e0-mul-e0--fc0334b57efc7c17da4264dc.md) | 64 | `result-track:fc0334b57efc7c17da4264dca6f75bea97a9bc5fddcd38dd12a2d9d647d609d0` |
| 7 | `theorem` | [v_sq_scalar](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/v-sq-scalar--7bf04c6f0dbf2748ef31ba4c.md) | 67 | `result-track:7bf04c6f0dbf2748ef31ba4ce06eb81e54590b320ab665bd9787efd2dc46b8cd` |
| 8 | `theorem` | [neg_e0_mul_v](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/neg-e0-mul-v--59d8d9fe30e2e5cd255eb13a.md) | 70 | `result-track:59d8d9fe30e2e5cd255eb13ad0f7b4c6eda8e1b4de64e831bf80fcc1088ddd13` |
| 9 | `theorem` | [neg_v_mul_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/neg-v-mul-e0--880849fa554adb1b1c2c9679.md) | 76 | `result-track:880849fa554adb1b1c2c96795410571a53de2bcef8367d4170d2601ac8e8be6c` |
| 10 | `theorem` | [e0_mul_v_mul_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/e0-mul-v-mul-e0--9535f5cdb68e5948201dc806.md) | 81 | `result-track:9535f5cdb68e5948201dc806251a667f1bcb3968ee5d5532a62adb3b06dd5ef4` |
| 11 | `theorem` | [reverse_v](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/reverse-v--8eefc4b8d9e7e716099b79c3.md) | 85 | `result-track:8eefc4b8d9e7e716099b79c3fd7a690ccdbd3c7b3a7a2e5c8ae446875c92adec` |
| 12 | `theorem` | [involute_v](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/involute-v--22b72e950228332db73b033c.md) | 89 | `result-track:22b72e950228332db73b033ca6aa5608f0bf73021aaae0fab0c557cd799135b8` |
| 13 | `theorem` | [reverse_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/reverse-e0--76b054e79b3706226c14579f.md) | 93 | `result-track:76b054e79b3706226c14579f67f5d5a22ce92a5e82d6769205419bedebc532c8` |
| 14 | `theorem` | [involute_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/involute-e0--b14c35a69662468cb238ad04.md) | 97 | `result-track:b14c35a69662468cb238ad041d3049ea532685c53fd90cbdafddfacf0b95d785` |
| 15 | `def` | [toEven](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/toeven--139de3946a4a559cee48c428.md) | 105 | `declaration-track:139de3946a4a559cee48c42892a46aaa942c1fdca878cad1ddbdf5eb2d3aa520` |
| 16 | `theorem` | [toEven_ι](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/toeven--96332bffe7a7b4954dfabb1e.md) | 117 | `result-track:96332bffe7a7b4954dfabb1e47b5299ae2dea9e26d209dad45384b0202cd476e` |
| 17 | `def` | [ofEven](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/ofeven--f6901daa0e80eb7e4759dc68.md) | 124 | `declaration-track:f6901daa0e80eb7e4759dc6851fefaba866c5a01be772c9945455e30fea64350` |
| 18 | `theorem` | [ofEven_ι](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/ofeven--370e56522a95e2be08ac1907.md) | 152 | `result-track:370e56522a95e2be08ac190700e72ce9f13f1cd8af6cc3d644dcf7d3a076b493` |
| 19 | `theorem` | [toEven_comp_ofEven](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/toeven-comp-ofeven--6080b3fe63513c539d193f74.md) | 157 | `result-track:6080b3fe63513c539d193f7496067627d60828b89e6324e3e6539d14d3755118` |
| 20 | `theorem` | [ofEven_comp_toEven](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/ofeven-comp-toeven--c54945c82e7b2cb3f8686da2.md) | 189 | `result-track:c54945c82e7b2cb3f8686da2cee403a494eda0665983dc4d49da2b7e11d049eb` |
| 21 | `def` | [equivEven](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/equiveven--013be8c47b22af5d5efb42cd.md) | 203 | `declaration-track:013be8c47b22af5d5efb42cddf6dcd0bd104dfa1c28bbac80dc4bbbaac557188` |
| 22 | `theorem` | [coe_toEven_reverse_involute](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/coe-toeven-reverse-involute--6527d854fca6d664222020ef.md) | 208 | `result-track:6527d854fca6d664222020ef5f8881234f4feca4a08aea43ce297f0bfbb0eba9` |
| 23 | `def` | [evenToNeg](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/eventoneg--9656afb081082967c46dae7f.md) | 222 | `declaration-track:9656afb081082967c46dae7fdc3d46d1067094e629e89358a7350d3254e06198` |
| 24 | `theorem` | [evenToNeg_ι](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/eventoneg--639868bf20cf587fb8ca7055.md) | 233 | `result-track:639868bf20cf587fb8ca7055c3da7c8b8fa6c60840e0e48199ca82adc7ed461c` |
| 25 | `theorem` | [evenToNeg_comp_evenToNeg](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/eventoneg-comp-eventoneg--764dabf5e28dfdef4badfd81.md) | 237 | `result-track:764dabf5e28dfdef4badfd81180e1857b5369cd4f516d9dca1bd6f5eafd3d1d1` |
| 26 | `def` | [evenEquivEvenNeg](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/declarations/evenequivevenneg--69bb133ab8b3c04a1e897164.md) | 246 | `declaration-track:69bb133ab8b3c04a1e897164d976615bfc95ce54c88d1e6b6d39a2b855c584d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
