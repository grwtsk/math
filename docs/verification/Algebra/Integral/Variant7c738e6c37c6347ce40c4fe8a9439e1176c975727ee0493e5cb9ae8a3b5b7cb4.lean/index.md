# Verification target: GRWTSK.Algebra.Integral.Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1db7410022c05a5b2008f5dcb351677e0954944f",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1db7410022c05a5b2008f5dcb351677e0954944f`.

Source path: `GRWTSK/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.NonZeroDivisors` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Lifts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Integral` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.Algebra.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integer` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coeffIntegerNormalization](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/coeffintegernormalization--4e2607e9a711e54dc5d5da3c.md) | 43 | `declaration-track:4e2607e9a711e54dc5d5da3ceede44ea432907b9310ba8a796a2e4f284343fc9` |
| 2 | `theorem` | [coeffIntegerNormalization_of_coeff_zero](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/coeffintegernormalization-of-coeff-zero--a904d9c21f21c51775e0efe7.md) | 50 | `result-track:a904d9c21f21c51775e0efe7fe5f50220352feae42009ee2819c375d7fbebfa6` |
| 3 | `theorem` | [coeffIntegerNormalization_mem_support](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/coeffintegernormalization-mem-support--0c2c8ed3d795b625a8d598dd.md) | 58 | `result-track:0c2c8ed3d795b625a8d598dd35627086597ac39e2472aa29feaade0a3674e652` |
| 4 | `def` | [integerNormalization](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/integernormalization--85b2e4529a13e05b848da81f.md) | 65 | `declaration-track:85b2e4529a13e05b848da81f3e39151957642a1ec9bc5853aee910fbf8dc688f` |
| 5 | `theorem` | [integerNormalization_coeff](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/integernormalization-coeff--8a0f6ad1a109fdeba5154511.md) | 69 | `result-track:8a0f6ad1a109fdeba5154511b57e6e8a8591d56d338b506a9067d25975a98599` |
| 6 | `theorem` | [integerNormalization_spec](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/integernormalization-spec--7d8370d161819aa21850c098.md) | 74 | `result-track:7d8370d161819aa21850c09865c9d77c82cd79c4adce150d7a132f3a4f358dcf` |
| 7 | `theorem` | [integerNormalization_map_to_map](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/integernormalization-map-to-map--e8a499b8f1188a7dd92fa4b3.md) | 88 | `result-track:e8a499b8f1188a7dd92fa4b3d49f342519b7dfc2442be99cee7577f370943e96` |
| 8 | `theorem` | [integerNormalization_eval₂_eq_zero](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/integernormalization-eval-eq-zero--ea9eaa3eb3718da33503a148.md) | 98 | `result-track:ea9eaa3eb3718da33503a1488dd20c44d1f6581bafe94871b91159bf4db770e0` |
| 9 | `theorem` | [integerNormalization_aeval_eq_zero](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/integernormalization-aeval-eq-zero--d55d43ce315f5074a28b48ab.md) | 104 | `result-track:d55d43ce315f5074a28b48ab84363eb7b9ee51f6562f2b92fa493c0bb2964490` |
| 10 | `theorem` | [integerNormalization_eq_zero_iff](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/integernormalization-eq-zero-iff--31500765ae79b3c12399304a.md) | 120 | `result-track:31500765ae79b3c12399304a869677e7db5a301bc2355c1ff419c44d4418115f` |
| 11 | `theorem` | [isAlgebraic_iff](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/isalgebraic-iff--ae8b7b3c66a6e9509e775d6b.md) | 139 | `result-track:ae8b7b3c66a6e9509e775d6b0bce3cd323692705a5fa207c7e1117d4e1016405` |
| 12 | `theorem` | [comap_isAlgebraic_iff](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/comap-isalgebraic-iff--812ad2b9ea85b5a0f04f860b.md) | 155 | `result-track:812ad2b9ea85b5a0f04f860b6ba5177edb8da5d7223a7ccd60834dcb0596fbd8` |
| 13 | `theorem` | [RingHom.isIntegralElem_localization_at_leadingCoeff](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/ringhom-isintegralelem-localization-at-leadingcoeff--5b04fc0b0048987176de4b28.md) | 173 | `result-track:5b04fc0b0048987176de4b28815ba008e8afe62e689df3a781792d37f5bb14d9` |
| 14 | `theorem` | [is_integral_localization_at_leadingCoeff](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/is-integral-localization-at-leadingcoeff--3920036334c14c6c112d2a20.md) | 194 | `result-track:3920036334c14c6c112d2a20cd6f63f910bde2c99ff5ec2efd6ddae54a675bb7` |
| 15 | `theorem` | [isIntegral_localization](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/isintegral-localization--3964b21104319b306e7ecd95.md) | 209 | `result-track:3964b21104319b306e7ecd9547d55e54bc06ef671f851fcfce433e9a9bae414f` |
| 16 | `theorem` | [isIntegral_localization'](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/isintegral-localization--8f4446b81b0985860fe44340.md) | 227 | `result-track:8f4446b81b0985860fe44340cfa6514c5ab0cf4b3e2d5c875e92e2d50cc08123` |
| 17 | `theorem` | [IsLocalization.scaleRoots_commonDenom_mem_lifts](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/islocalization-scaleroots-commondenom-mem-lifts--4d63334e9328db4dcea98c3f.md) | 241 | `result-track:4d63334e9328db4dcea98c3f52f3be5163287a30be3697fd2089d2014a691891` |
| 18 | `theorem` | [IsIntegral.exists_multiple_integral_of_isLocalization](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/isintegral-exists-multiple-integral-of-islocalization--9d090f3bbfb250426376196c.md) | 263 | `result-track:9d090f3bbfb250426376196c6eb4a2eb01e55f76788b86b506bd006d72149814` |
| 19 | `theorem` | [isFractionRing_of_algebraic](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/isfractionring-of-algebraic--98531006e0495158b5d88a25.md) | 296 | `result-track:98531006e0495158b5d88a25f96383ff4fd0f64ef05f65e3c66d4185f187ac75` |
| 20 | `theorem` | [isFractionRing_of_finite_extension](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/isfractionring-of-finite-extension--20abaadd0f2e4d529ba330de.md) | 314 | `result-track:20abaadd0f2e4d529ba330decd6d375757d2776339420dfc71550aad54b0a186` |
| 21 | `theorem` | [isFractionRing_of_algebraic](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/isfractionring-of-algebraic--957ed939b27842341da767c5.md) | 333 | `result-track:957ed939b27842341da767c538699fc342cf189a87f43d21e7dd573ae2ebf628` |
| 22 | `theorem` | [isFractionRing_of_finite_extension](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/isfractionring-of-finite-extension--31f2bb844d97822254c71ad8.md) | 341 | `result-track:31f2bb844d97822254c71ad816a14857d675e62eda65bc6944ce78bdd70c3ba3` |
| 23 | `theorem` | [isAlgebraic_iff'](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/isalgebraic-iff--b11111b9bf8e3b68cb80ea90.md) | 352 | `result-track:b11111b9bf8e3b68cb80ea90001162dc852dbc169210430a5c0681c364830aee` |
| 24 | `theorem` | [ideal_span_singleton_map_subset](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/ideal-span-singleton-map-subset--7a4d19e38940659e0efa2d0c.md) | 401 | `result-track:7a4d19e38940659e0efa2d0c43fee56c00068d7a3ca2dedf2fa8f24a2614a2bd` |
| 25 | `lemma` | [isAlgebraic_of_isFractionRing](../../../../mathematics/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/declarations/isalgebraic-of-isfractionring--613619ed62c2c01b721415db.md) | 438 | `result-track:613619ed62c2c01b721415db4bcb0116a6ee86885919c68fa5d16f5f504a703c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
