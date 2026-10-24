# Verification target: GRWTSK.Algebra.Finite.Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28adee7e5db9dcd300c45eae7b65133c0dd3b3fb",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28adee7e5db9dcd300c45eae7b65133c0dd3b3fb`.

Source path: `GRWTSK/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.AbsoluteValue` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ClassNumber.AdmissibleAbsoluteValue` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.ClassGroup` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.IntegralClosure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normBound](../../../../mathematics/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/declarations/normbound--50bb032bb9ead87f47d5d091.md) | 45 | `declaration-track:50bb032bb9ead87f47d5d0919efe83afe0f3fd76743708bb053b27b12c26e833` |
| 2 | `theorem` | [normBound_pos](../../../../mathematics/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/declarations/normbound-pos--5f03b8f40f6853c6bde3996d.md) | 55 | `result-track:5f03b8f40f6853c6bde3996dab9332f1b9e158700e910d44612331b4b24ef0fe` |
| 3 | `theorem` | [norm_le](../../../../mathematics/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/declarations/norm-le--bc71e6b676d06605a4c9191c.md) | 72 | `result-track:bc71e6b676d06605a4c9191ce391d5ff68298c14377f71c249fcde940ed7faa8` |
| 4 | `theorem` | [norm_lt](../../../../mathematics/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/declarations/norm-lt--a037d197f66363703d35ed8c.md) | 86 | `result-track:a037d197f66363703d35ed8c372a75384baca377a4de5ee476113511f48fa858` |
| 5 | `theorem` | [exists_min](../../../../mathematics/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/declarations/exists-min--095249fd84e6b7b277e6eabd.md) | 113 | `result-track:095249fd84e6b7b277e6eabdfea59f52e74933d8ce1bbdcf59f73b47fd5b13b2` |
| 6 | `def` | [cardM](../../../../mathematics/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/declarations/cardm--b754a0e89728aafbc244bf5e.md) | 143 | `declaration-track:b754a0e89728aafbc244bf5ed8f35c867369a6d31c624f53c18e8a27bb78932d` |
| 7 | `def` | [distinctElems](../../../../mathematics/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/declarations/distinctelems--86583597193f10b29ce59c0f.md) | 149 | `declaration-track:86583597193f10b29ce59c0f2581276c0900975ecb5e237106d844036a2befd3` |
| 8 | `def` | [finsetApprox](../../../../mathematics/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/declarations/finsetapprox--67dcc4388ba09ab438729e0e.md) | 156 | `declaration-track:67dcc4388ba09ab438729e0e8efd582c1145cea9f05559915ccd5cc24e05b3f9` |
| 9 | `theorem` | [finsetApprox.zero_notMem](../../../../mathematics/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/declarations/finsetapprox-zero-notmem--08022a1338ab6f2b6facfa04.md) | 160 | `result-track:08022a1338ab6f2b6facfa0478e8ff62f9665c31d09654372e4a3938b343c2ff` |
| 10 | `theorem` | [mem_finsetApprox](../../../../mathematics/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/declarations/mem-finsetapprox--7141a356d9424afd11f79de6.md) | 166 | `result-track:7141a356d9424afd11f79de6d8a01935402910ccdef99c07ed6ece75a44f2d7f` |
| 11 | `theorem` | [exists_mem_finsetApprox](../../../../mathematics/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/declarations/exists-mem-finsetapprox--5b5e64bc8777ad0ffdb1a87a.md) | 187 | `result-track:5b5e64bc8777ad0ffdb1a87a4bbfbb6ea6df3858635abd0ceafb3419ae36ca11` |
| 12 | `theorem` | [exists_mem_finset_approx'](../../../../mathematics/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/declarations/exists-mem-finset-approx--0ac5e344bb14a45723dafaef.md) | 239 | `result-track:0ac5e344bb14a45723dafaefb6bb8678edf565e52ecc7ded8b4066bdc690e4f2` |
| 13 | `theorem` | [prod_finsetApprox_ne_zero](../../../../mathematics/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/declarations/prod-finsetapprox-ne-zero--3f14e34db2560fcd142289a5.md) | 257 | `result-track:3f14e34db2560fcd142289a55dc45a1357b03fd3d0ded873ebddfac07b025ec2` |
| 14 | `theorem` | [ne_bot_of_prod_finsetApprox_mem](../../../../mathematics/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/declarations/ne-bot-of-prod-finsetapprox-mem--326785da1588e02ead98f7aa.md) | 263 | `result-track:326785da1588e02ead98f7aaa7cb3f3b8f1ccee26e49c2802d5c889412192798` |
| 15 | `theorem` | [exists_mk0_eq_mk0](../../../../mathematics/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/declarations/exists-mk0-eq-mk0--8aa39be8cc5a6abdbe64d01d.md) | 269 | `result-track:8aa39be8cc5a6abdbe64d01d8ca0b3ea778e9e60268d90e4a2a4a92cab19cf9c` |
| 16 | `def` | [mkMMem](../../../../mathematics/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/declarations/mkmmem--6722f12aac90c39f146add75.md) | 306 | `declaration-track:6722f12aac90c39f146add754f94e6419b8641c274a496337b3e4ca2174afe0b` |
| 17 | `theorem` | [mkMMem_surjective](../../../../mathematics/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/declarations/mkmmem-surjective--d10c93b5bacff30ce28b5e94.md) | 311 | `result-track:d10c93b5bacff30ce28b5e94bf58737ede7844fb92fb86cc65aa86d2d31abdba` |
| 18 | `def` | [fintypeOfAdmissibleOfAlgebraic](../../../../mathematics/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/declarations/fintypeofadmissibleofalgebraic--027d9c23fca1c49340d5a69f.md) | 325 | `declaration-track:027d9c23fca1c49340d5a69f296cd03c2deaffe9c9dfc35c85d492ab9a1f1303` |
| 19 | `def` | [fintypeOfAdmissibleOfFinite](../../../../mathematics/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/declarations/fintypeofadmissibleoffinite--99b07f6d420be002853b05ba.md) | 346 | `declaration-track:99b07f6d420be002853b05badb382ac1a864f0ccec04780b8245cb16344dd602` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
