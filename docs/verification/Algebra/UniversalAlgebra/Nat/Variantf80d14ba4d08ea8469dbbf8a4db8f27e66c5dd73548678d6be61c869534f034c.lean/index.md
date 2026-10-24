# Verification target: GRWTSK.Algebra.UniversalAlgebra.Nat.Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdaf888719b5a8a691dd35744152c7507ebd0d4f",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdaf888719b5a8a691dd35744152c7507ebd0d4f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Int` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Units` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Nat` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/instance--35e3d45cac9a07861d001098.md) | 37 | `declaration-track:35e3d45cac9a07861d00109833b15a2ad378776a5b36a1338e6e3d8d9d78a168` |
| 2 | `theorem` | [gcd_eq_nat_gcd](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/gcd-eq-nat-gcd--08968729e41112708ed4d1bf.md) | 47 | `result-track:08968729e41112708ed4d1bf685f75abef24a338e48ce2e5f61868a32f51ed7a` |
| 3 | `theorem` | [lcm_eq_nat_lcm](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/lcm-eq-nat-lcm--dbf89ef360b5a4c0aa68fb93.md) | 50 | `result-track:dbf89ef360b5a4c0aa68fb93c3314b2c58fc468a534e41fdcd642776e8f927a5` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/instance--7af7a0659af60d393fba5111.md) | 53 | `declaration-track:7af7a0659af60d393fba511135ef69eb1b8b9aceca9d88cde0f80881c78c9c8e` |
| 5 | `instance` | [normalizationMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/normalizationmonoid--19cb44880b18a2e208e193f5.md) | 63 | `declaration-track:19cb44880b18a2e208e193f5fabf003d03aecce9f9c4a56b07389f845264f900` |
| 6 | `theorem` | [normUnit_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/normunit-eq--5926cabf1e0bc13bd6a11c85.md) | 73 | `result-track:5926cabf1e0bc13bd6a11c859c36a3fdcf77a0877dc9a01d08c3c49d56ae8634` |
| 7 | `theorem` | [normalize_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/normalize-of-nonneg--d8b2ce753b1570b41426d558.md) | 75 | `result-track:d8b2ce753b1570b41426d558b1f1110957e984c0742a7aad3a0f4b0c3a8058b1` |
| 8 | `theorem` | [normalize_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/normalize-of-nonpos--0fcc4356407489c755cb0d78.md) | 78 | `result-track:0fcc4356407489c755cb0d788ce2503e161fdb2316eb000352076d4a72219523` |
| 9 | `theorem` | [normalize_coe_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/normalize-coe-nat--da55419b7dd58ffbdbe1644d.md) | 84 | `result-track:da55419b7dd58ffbdbe1644d4fc47b15591c5aafb3292f7389d71c3ffcf3de58` |
| 10 | `theorem` | [abs_eq_normalize](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/abs-eq-normalize--0f0467d9777b1ee38b9771f1.md) | 87 | `result-track:0f0467d9777b1ee38b9771f1e3522dcdf17bd26b0d5a6df371c8f5794d6502e5` |
| 11 | `theorem` | [nonneg_of_normalize_eq_self](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/nonneg-of-normalize-eq-self--1fb7cc9ee6be58529e4d168c.md) | 91 | `result-track:1fb7cc9ee6be58529e4d168c76c763e53fa22a075bcacd38e86e061311261d4a` |
| 12 | `theorem` | [nonneg_iff_normalize_eq_self](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/nonneg-iff-normalize-eq-self--35c6530eb464f087eb3b0984.md) | 97 | `result-track:35c6530eb464f087eb3b09844343b902617af98a5bc4f231f3ddf345ee7954c8` |
| 13 | `theorem` | [eq_of_associated_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/eq-of-associated-of-nonneg--2a22d14f22380b600bbdf7a6.md) | 100 | `result-track:2a22d14f22380b600bbdf7a6ffdaa2031397313c8ddb2482c0bf35fe97291e72` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/instance--38fa49d2860afab946b3c905.md) | 108 | `declaration-track:38fa49d2860afab946b3c905ecee3428af3d42d252ffc5d2b3f5d4b3c6f79222` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/instance--46517a53e5b2523f6308ab33.md) | 120 | `declaration-track:46517a53e5b2523f6308ab331a90cb187300be472b0b0578bed13b45c7c806bc` |
| 16 | `theorem` | [coe_gcd](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/coe-gcd--e26f9de220c83b64c4428a50.md) | 126 | `result-track:e26f9de220c83b64c4428a500e1ec6615768406f248ae63fe8a3a342469a439a` |
| 17 | `theorem` | [coe_lcm](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/coe-lcm--51d69680f5e927855accb9c6.md) | 129 | `result-track:51d69680f5e927855accb9c6ce00555a6fd5857494f1369d4ee1f71683616b00` |
| 18 | `theorem` | [natAbs_gcd](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/natabs-gcd--c1c62ad69fa0e361dcff00ca.md) | 132 | `result-track:c1c62ad69fa0e361dcff00ca673e900d1b9fb20f35e1693ccbc7db7129062cde` |
| 19 | `theorem` | [natAbs_lcm](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/natabs-lcm--ab4ef1d704869626d621fee1.md) | 135 | `result-track:ab4ef1d704869626d621fee1493c8b744e2ae3d7574489f600134c78cd7dcd8e` |
| 20 | `theorem` | [exists_unit_of_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/exists-unit-of-abs--61c1343e4df331491d3e2dfa.md) | 140 | `result-track:61c1343e4df331491d3e2dfa1c0b2c1741bff87088e89930d744cd22f1a6341f` |
| 21 | `theorem` | [gcd_eq_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/gcd-eq-natabs--1f6ed94176ba39a5f69b469d.md) | 148 | `result-track:1f6ed94176ba39a5f69b469d04f77b331fad6b515556ab2948ad05403546300b` |
| 22 | `def` | [associatesIntEquivNat](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/associatesintequivnat--ca40c3d5d639dcfaf5c0ace9.md) | 153 | `declaration-track:ca40c3d5d639dcfaf5c0ace94452f607873ec7a05a345fe437dab1b3a7c9accb` |
| 23 | `theorem` | [Int.associated_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/int-associated-natabs--09d051d474abef642493fa27.md) | 161 | `result-track:09d051d474abef642493fa27a44f3f997c82fb9c4db4b274fa503723730f91b8` |
| 24 | `theorem` | [Int.associated_iff_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/int-associated-iff-natabs--fd287f18d0778d2f7ce19d81.md) | 164 | `result-track:fd287f18d0778d2f7ce19d8184aba53d54176f4e3029cb076715d1e429624136` |
| 25 | `theorem` | [Int.associated_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantf80d14ba4d08ea8469dbbf8a4db8f27e66c5dd73548678d6be61c869534f034c.lean/declarations/int-associated-iff--2f91edd3bb3106c50e0d412f.md) | 169 | `result-track:2f91edd3bb3106c50e0d412f68f0d4472b829ccf675f0578e61bff90f9afeb5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
