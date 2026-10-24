# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fab2cb8c8c6f42d0ec5b40fff11fd2a255b69bf",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fab2cb8c8c6f42d0ec5b40fff11fd2a255b69bf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorAlgebra.ToTensorPower` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [induction_lon](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/induction-lon--c65749422a15577ba4cb574a.md) | 50 | `result-track:c65749422a15577ba4cb574a9ec0a0b2125d1887e199f6ef230a8725a0989056` |
| 2 | `def` | [algEquivQuotAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/algequivquotalgequiv--0db75ccab30e587d8b9b9014.md) | 72 | `declaration-track:0db75ccab30e587d8b9b901470f15e6652f697daa7e8bab883388b1dc7da213f` |
| 3 | `def` | [equivQuotEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/equivquotequiv--3fc3ac0ddbf75d0fbd972e69.md) | 94 | `declaration-track:3fc3ac0ddbf75d0fbd972e693a1c94e3b5ea0e589b7a5c89d4355cae52e17bf7` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/instance--cf575d844798436a33829336.md) | 114 | `declaration-track:cf575d844798436a3382933695cd01bcb59d61a8f314de423218a7ba26411920` |
| 5 | `abbrev` | [FreeTensorAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/freetensoralgebra--1da2dd2bfda36b4a71d5b6c1.md) | 118 | `declaration-track:1da2dd2bfda36b4a71d5b6c1a8abc931a8927ced2dbceac134b688fead201cc3` |
| 6 | `abbrev` | [PowerAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/poweralgebra--61117c5daafc0e3c58eafe53.md) | 122 | `declaration-track:61117c5daafc0e3c58eafe53b9ed686d4f4985fb9b7aaeb84c1e715a8550582a` |
| 7 | `def` | [powerAlgebraEquivFreeTensorAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/poweralgebraequivfreetensoralgebra--da2f983371b969954ebb2d01.md) | 126 | `declaration-track:da2f983371b969954ebb2d014d646714b7da1ffa280718f4b2b319874daefe35` |
| 8 | `inductive` | [rel](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/rel--81c4cbaef77dee4c4655b055.md) | 135 | `declaration-track:81c4cbaef77dee4c4655b055d0a4cc6078509f53c2357a5362bb1ecd0a1b4c28` |
| 9 | `def` | [rel'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/rel--e101b7b467504f5334715d2f.md) | 146 | `declaration-track:e101b7b467504f5334715d2f4fe6f574481696bd758a80e291fd7ef7cff447c3` |
| 10 | `theorem` | [rel_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/rel-id--1dc1b7ae1d7d6236b792cb82.md) | 148 | `result-track:1dc1b7ae1d7d6236b792cb82b3ded0943f31b604507c42c6b517d0651d6104e4` |
| 11 | `def` | [_root_.LinearAlgebra.FreeProduct](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/root-linearalgebra-freeproduct--4daeddecbb23126177437b13.md) | 153 | `declaration-track:4daeddecbb23126177437b131dc03f52302457cccfb573d7402b072adf3489f9` |
| 12 | `def` | [asPowers](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/aspowers--e24f518a64848743f8964246.md) | 157 | `declaration-track:e24f518a64848743f89642466416726426679bdd06681983dde729db58e0fb97` |
| 13 | `def` | [asPowersEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/aspowersequiv--07aa96f02d547a96056bccb9.md) | 165 | `declaration-track:07aa96f02d547a96056bccb96fb216804c44d8d57b691fe8667603f2ae4f97df` |
| 14 | `instance` | [instSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/instsemiring--08d4cd3f4f4ecb2bce9cc496.md) | 177 | `declaration-track:08d4cd3f4f4ecb2bce9cc4964dd090ed3ffab7911ff985c4069e4624a2acf292` |
| 15 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/instalgebra--e308e91cae77ba8d27472e30.md) | 178 | `declaration-track:e308e91cae77ba8d27472e3096ea1446d67220ad1864f04c5337c5e1698f8783` |
| 16 | `abbrev` | [mkAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/mkalghom--7246eb98d384e56377380660.md) | 182 | `declaration-track:7246eb98d384e5637738066085b8940985c48227baf73f1c52cf015995ae5d41` |
| 17 | `abbrev` | [ι'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/anonymous--4ea31caa40281278e5b14e22.md) | 186 | `declaration-track:4ea31caa40281278e5b14e229511dcac13fc9f8f01538a1b93aa7d3b4635394f` |
| 18 | `theorem` | [ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/apply--dcb2753f5d2d3413257d0dae.md) | 189 | `result-track:dcb2753f5d2d3413257d0dae116cbce8227c1adb5d2433ea6a8790f5c0da55b7` |
| 19 | `theorem` | [identify_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/identify-one--25f3f258818ed6938c850554.md) | 194 | `result-track:25f3f258818ed6938c8505549b35f8cd308dfa48e539408ef08ca880a8af066b` |
| 20 | `theorem` | [mul_injections](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/mul-injections--e6dbe4a7a00062cb22156d14.md) | 200 | `result-track:e6dbe4a7a00062cb22156d14cd35a3d419003f8d8e9b9d9a456856de2e320749` |
| 21 | `abbrev` | [lof](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/lof--4df8587ffb4e0e62a5e374fa.md) | 208 | `declaration-track:4df8587ffb4e0e62a5e374fae78798af404aebc78ddfe495e49f5d0fc90423cf` |
| 22 | `theorem` | [lof_map_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/lof-map-one--eb78ac584d46331861041142.md) | 212 | `result-track:eb78ac584d4633186104114227707108c5686916794ad7fa4d0927fc4e585230` |
| 23 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/lift--baa9c60adde46ce150a56dd6.md) | 227 | `declaration-track:baa9c60adde46ce150a56dd6748a2b29efe7d9b78105fd46a65a2ca48ed0405c` |
| 24 | `theorem` | [lift_comp_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/lift-comp--08d3440e3447da5154eeb2d5.md) | 248 | `result-track:08d3440e3447da5154eeb2d5b888ab99cfb09392b04cf7ed0d0cd57efce498df` |
| 25 | `theorem` | [lift_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/lift-algebramap--0c7665afd6cef93e72a65c8f.md) | 252 | `result-track:0c7665afd6cef93e72a65c8f4efa3d7c41df668de61cb0e2f7b5efb30e084937` |
| 26 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant362a1f5d2ca629d88fe0cf74b52e0cc61bc822d7ac194fc6f4956e5004b0c094.lean/declarations/lift-unique--76621c68f1b8bdd9c7faa4f6.md) | 255 | `result-track:76621c68f1b8bdd9c7faa4f637acfb53ffc37c00e0981ea624649809011e3062` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
