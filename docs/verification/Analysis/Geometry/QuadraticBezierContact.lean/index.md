# Verification target: GRWTSK.Analysis.Geometry.QuadraticBezierContact

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acc35fb6f22980fd7246dec104df7ab9b1a9157c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Geometry/QuadraticBezierContact.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/index.md) · [Full source](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acc35fb6f22980fd7246dec104df7ab9b1a9157c`.

Source path: `GRWTSK/Analysis/Geometry/QuadraticBezierContact.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Geometry/QuadraticBezierContact.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Point](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/point--6713c6d372f1ba1bbe38b973.md) | 30 | `declaration-track:6713c6d372f1ba1bbe38b973103c1b9743510af1e6cb8e3ad02f64f2c7a86102` |
| 2 | `def` | [lerp](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/lerp--6d8ce3ea2c5e428eda264133.md) | 33 | `declaration-track:6d8ce3ea2c5e428eda26413369536dada9ab5176c40ab106aa92842a74c87e13` |
| 3 | `structure` | [Segment](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/segment--74a74ac656956f3a6727290b.md) | 37 | `declaration-track:74a74ac656956f3a6727290b878d785630583989a1b75868b2010f05daca76b2` |
| 4 | `def` | [eval](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/eval--4cbd936913623528a6c44fcf.md) | 47 | `declaration-track:4cbd936913623528a6c44fcfc2b1c48612af2f3e45a907b89f46cf33726fb980` |
| 5 | `def` | [velocity](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/velocity--80d38c532aa82ae22ea5f9db.md) | 54 | `declaration-track:80d38c532aa82ae22ea5f9dbc188eb316605165355d0ab40acae8f2e84a2b48d` |
| 6 | `def` | [curvatureDefect](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/curvaturedefect--ed4ada4938464c4b1f6e38da.md) | 60 | `declaration-track:ed4ada4938464c4b1f6e38da6c107445d27ff988cf2a5398bb1a13823d380be0` |
| 7 | `def` | [splitPoint](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/splitpoint--33de24217b9afbf27ccd945c.md) | 65 | `declaration-track:33de24217b9afbf27ccd945c9ee9b052ac264353088d460a1c1740b06f108b36` |
| 8 | `def` | [left](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/left--8e39b11976326be88ebeffa8.md) | 69 | `declaration-track:8e39b11976326be88ebeffa8721d09b4b9fbd1f1b33b6474492899c5b0cd4f17` |
| 9 | `def` | [right](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/right--234e6ab94a15c3434f93c3d2.md) | 75 | `declaration-track:234e6ab94a15c3434f93c3d2ae0cad784600c6feb3a163f61d67a7d1ac175e0b` |
| 10 | `theorem` | [eval_zero](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/eval-zero--8ddcc6df511bf541704f1b1d.md) | 81 | `result-track:8ddcc6df511bf541704f1b1d1032956113644374e54ada64ac0df17c26627e7c` |
| 11 | `theorem` | [eval_one](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/eval-one--fe7adf076a11383cc15a6dc7.md) | 86 | `result-track:fe7adf076a11383cc15a6dc78b5268b0d116da5db28cb86ee23ab048554bd257` |
| 12 | `theorem` | [splitPoint_eq_eval](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/splitpoint-eq-eval--aa449e13b35293080b517bd8.md) | 91 | `result-track:aa449e13b35293080b517bd8ab50965f1f94e5b4ba73dd40633754ead66b8cab` |
| 13 | `theorem` | [left_eval](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/left-eval--40a4728bc282cfdfd9572ac1.md) | 98 | `result-track:40a4728bc282cfdfd9572ac155de7b872b48311f68e7ba8ee4ea6d5eb15f5136` |
| 14 | `theorem` | [right_eval](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/right-eval--a89c01be2ea713f3825cc595.md) | 105 | `result-track:a89c01be2ea713f3825cc5951b57461c300b0ed24b1ed55c5114e8d38da8412d` |
| 15 | `theorem` | [left_join_point](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/left-join-point--16b81dc43b05c05ea75725a0.md) | 112 | `result-track:16b81dc43b05c05ea75725a04f8bf049d5d7bdbd185aecf8b5784e4417c924a6` |
| 16 | `theorem` | [right_join_point](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/right-join-point--273c3ee8128b925c87e02c42.md) | 118 | `result-track:273c3ee8128b925c87e02c42c7e9a0e49225bf9cd6d5ef9bb78d2fe95e8bfeb1` |
| 17 | `theorem` | [join_point](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/join-point--2d3ce1a70d825e77e9c81ce7.md) | 124 | `result-track:2d3ce1a70d825e77e9c81ce7a8ee1a56db4cb7cc9b2733fbe6255439c549f4ca` |
| 18 | `theorem` | [left_velocity_one_scaled](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/left-velocity-one-scaled--8101186b268d8346abe8c814.md) | 129 | `result-track:8101186b268d8346abe8c8146ff24a69708b487843d285d27506442797a016c3` |
| 19 | `theorem` | [right_velocity_zero_scaled](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/right-velocity-zero-scaled--a25dc44574547e1b69dff3bb.md) | 136 | `result-track:a25dc44574547e1b69dff3bbd6a67c099174016dc48890a82625b7c5650e397e` |
| 20 | `theorem` | [symmetric_difference_eq_velocity](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/symmetric-difference-eq-velocity--0019a8c639e9dac1f38a65ba.md) | 144 | `result-track:0019a8c639e9dac1f38a65bab020c785317bf3cc9e8fbfd5e0c93a85afa6a1b8` |
| 21 | `theorem` | [left_curvatureDefect](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/left-curvaturedefect--cdfeac7b6b069d88099e662c.md) | 151 | `result-track:cdfeac7b6b069d88099e662cc49d4749f015183fb37b878d1cc469d2759de459` |
| 22 | `theorem` | [right_curvatureDefect](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/right-curvaturedefect--4fa9c061f228e848bb641be7.md) | 158 | `result-track:4fa9c061f228e848bb641be71c056856943c235b5ef057b369fe422d59488a4a` |
| 23 | `theorem` | [midpoint_deviation](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/midpoint-deviation--8fc1b313838c1b7afbeb02d6.md) | 166 | `result-track:8fc1b313838c1b7afbeb02d6f46c66ba43d3c964d7e9448b37a07f333b93a88f` |
| 24 | `structure` | [HermiteJet](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/hermitejet--3e2f75efe90c6f63e6a5682e.md) | 174 | `declaration-track:3e2f75efe90c6f63e6a5682eb33ed46c901f7c35d7562d9f5488ca69c03881bf` |
| 25 | `def` | [jet](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/jet--af72549a72573e3cd70f0706.md) | 179 | `declaration-track:af72549a72573e3cd70f07060c2cd760f6444971e65013f4c5837940d0577e5b` |
| 26 | `structure` | [ScaledHermiteContact](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/scaledhermitecontact--e3ad6aff9e92417db4018d63.md) | 184 | `declaration-track:e3ad6aff9e92417db4018d6353bed4d2c49cdf8f6b93e7cc32bcb808bac04b47` |
| 27 | `def` | [ScaledHermiteContact.Positive](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/scaledhermitecontact-positive--322e40b5ce75e6ee2d2a3814.md) | 194 | `declaration-track:322e40b5ce75e6ee2d2a3814ed8e5ded8456bb06bce5873bf578a08dae3b843d` |
| 28 | `def` | [splitContact](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/splitcontact--fbab0d00955248459c27e065.md) | 199 | `declaration-track:fbab0d00955248459c27e065ae6bf030c7348c7db4c6eb64abb1b5f831cf3e7f` |
| 29 | `theorem` | [splitContact_positive](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/declarations/splitcontact-positive--f519d94fc66ff25f83e31b56.md) | 210 | `result-track:f519d94fc66ff25f83e31b56569d48fabebc84ac890c548590da05c48ed3ae9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
