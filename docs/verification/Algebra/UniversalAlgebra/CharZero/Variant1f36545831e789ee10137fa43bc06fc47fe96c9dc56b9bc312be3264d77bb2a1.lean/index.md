# Verification target: GRWTSK.Algebra.UniversalAlgebra.CharZero.Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df932d3b65eadc366e20bb0df602a5f7343f607e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df932d3b65eadc366e20bb0df602a5f7343f607e`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Units.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cast_injective](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/cast-injective--5d402bb8bdfcfa4a4f2df7fd.md) | 29 | `result-track:5d402bb8bdfcfa4a4f2df7fdb547309de7717ad0bb158db7448fd6462ab281ae` |
| 2 | `lemma` | [cast_inj](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/cast-inj--abb2c453042e62347cfec8f3.md) | 40 | `result-track:abb2c453042e62347cfec8f32c280ce2269334d890315109e7d027de7706745a` |
| 3 | `lemma` | [cast_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/cast-eq-zero--44f6e80b17be1696405fedc0.md) | 42 | `result-track:44f6e80b17be1696405fedc08255e3a230b42ccf767e04c8066139876a5dec45` |
| 4 | `lemma` | [cast_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/cast-ne-zero--7069c80d03af6f5b1f91f331.md) | 43 | `result-track:7069c80d03af6f5b1f91f331cdfdd7a161c9db6900431bdeec4e3b48b61147b6` |
| 5 | `lemma` | [cast_add](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/cast-add--60a30c2e2c27ea3d6ffb6252.md) | 45 | `result-track:60a30c2e2c27ea3d6ffb62528c1c42265c755103e9604503114ad2facce3e762` |
| 6 | `lemma` | [cast_sub](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/cast-sub--f1b1f5828cfa361461861220.md) | 48 | `result-track:f1b1f5828cfa3614618612209b785986f43ed3cc52d98d9929821415e5d3f209` |
| 7 | `lemma` | [cast_mul](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/cast-mul--dd5fffd39578b914bfc2b6fe.md) | 51 | `result-track:dd5fffd39578b914bfc2b6fe88feb764f3a0b26403efe433f5eda47b7d26b34b` |
| 8 | `def` | [castHom](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/casthom--2b0a8e8db34612bf22ca2387.md) | 56 | `declaration-track:2b0a8e8db34612bf22ca238754205d4de5949183dc8c61973a86819e327b36f3` |
| 9 | `lemma` | [coe_castHom](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/coe-casthom--1b8bf85a0b54201a48d42699.md) | 63 | `result-track:1b8bf85a0b54201a48d42699ea5fd458a78d4bb1f33cacd6dba8b7bbf6ab897d` |
| 10 | `lemma` | [cast_inv](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/cast-inv--398d468c026b8beb86a884ae.md) | 65 | `result-track:398d468c026b8beb86a884ae59deff5a1b38a3d74a78319332f02fb266056390` |
| 11 | `lemma` | [cast_div](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/cast-div--74d35d07588defa1e040f488.md) | 66 | `result-track:74d35d07588defa1e040f488687ac332769c79514628c680ba6cf67d03ccfb88` |
| 12 | `lemma` | [cast_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/cast-zpow--7aa236441b5d9db10e9d29a8.md) | 69 | `result-track:7aa236441b5d9db10e9d29a86e0b629ccee3f2c07904dddf1e5b8c61adc175ba` |
| 13 | `theorem` | [cast_mk](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/cast-mk--7a76b5648b892af04f81cd2d.md) | 72 | `result-track:7a76b5648b892af04f81cd2d0fc6048c541a83d60edc6a56c12951d938dfe8f8` |
| 14 | `lemma` | [cast_injective](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/cast-injective--4a369f582ea8b302b97fbc06.md) | 80 | `result-track:4a369f582ea8b302b97fbc06980247c0e2362fc1df28d5e67b5b68b4e3c38498` |
| 15 | `lemma` | [cast_inj](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/cast-inj--f56515ac457052deaafbd428.md) | 89 | `result-track:f56515ac457052deaafbd4287e055d8f644a1337227969b63b2f9a9f5e9c6609` |
| 16 | `lemma` | [cast_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/cast-eq-zero--98607e7465d8e3b211489571.md) | 91 | `result-track:98607e7465d8e3b21148957103547f0a06368006d509343810d04e7726d7f88b` |
| 17 | `lemma` | [cast_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/cast-ne-zero--b09ea1a4beb27c12b424b4f6.md) | 92 | `result-track:b09ea1a4beb27c12b424b4f6b376c4b91aa58181275ec80630a69166579df06f` |
| 18 | `lemma` | [cast_add](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/cast-add--6e72f68df9fbf9c26a6750da.md) | 94 | `result-track:6e72f68df9fbf9c26a6750daace036dc536ac6ff629577a07a9f6a771f00c1c0` |
| 19 | `lemma` | [cast_mul](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/cast-mul--74c935020b8e633d260ed15d.md) | 97 | `result-track:74c935020b8e633d260ed15d51b73400a5e49306de7d6e7698d747665aba4cfe` |
| 20 | `def` | [castHom](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/casthom--ecfcf8385156745d5ff8d9e7.md) | 102 | `declaration-track:ecfcf8385156745d5ff8d9e7f96afc6c03decf74eab50d37e445e95659a2b7db` |
| 21 | `lemma` | [coe_castHom](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/coe-casthom--9e1cd23cf95127e4d94a8e84.md) | 109 | `result-track:9e1cd23cf95127e4d94a8e842094a6d6325dafe8c714e5a5d0942d5b28c13cb4` |
| 22 | `lemma` | [cast_inv](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/cast-inv--689b068e6c5b6a52eab5e888.md) | 111 | `result-track:689b068e6c5b6a52eab5e8887610c4d452c0bdf086639ee4101037242ff5d3dd` |
| 23 | `lemma` | [cast_div](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/cast-div--e7d88d839dcfe5b413de7eb5.md) | 112 | `result-track:e7d88d839dcfe5b413de7eb5fbdc08e2ee2956dba1e6c028f4fc3eed2c3f4505` |
| 24 | `lemma` | [cast_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/cast-zpow--30196af31d192c73c09635e6.md) | 115 | `result-track:30196af31d192c73c09635e60381d3db17c53fd9374b4f2327e86a43cae83945` |
| 25 | `lemma` | [cast_divNat](../../../../../mathematics/Algebra/UniversalAlgebra/CharZero/Variant1f36545831e789ee10137fa43bc06fc47fe96c9dc56b9bc312be3264d77bb2a1.lean/declarations/cast-divnat--444b22e4dcf5979254d4c45c.md) | 118 | `result-track:444b22e4dcf5979254d4c45cef9c559d989f6fdd0a01ac65ddbcb34ac00970d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
