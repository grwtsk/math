# Verification target: GRWTSK.Algebra.LinearAlgebra.Reflection.Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cff81c83f403b676b46f212076a4ce259658f421",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cff81c83f403b676b46f212076a4ce259658f421`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Notation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.Reflection` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Forall](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/forall--4a5864a1589f625a4012ffce.md) | 49 | `declaration-track:4a5864a1589f625a4012ffcecd5ff434fe86313d97e0bb2a21dfe37f9b9992da` |
| 2 | `theorem` | [forall_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/forall-iff--ba3b05d79308bd04ddfc84b6.md) | 60 | `result-track:ba3b05d79308bd04ddfc84b698a6dd03cd78e720aa173f10c390fb402101a9b8` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/example--1f90a1f1543914afc17defb9.md) | 66 | `declaration-track:1f90a1f1543914afc17defb9cbfcbfe4d938eceb2afdc987411a54ae2baee43c` |
| 4 | `def` | [Exists](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/exists--9c07f1e462b9d7777b796aab.md) | 71 | `declaration-track:9c07f1e462b9d7777b796aab84d07bc2630cd9f5268cb3f176db2b5e6acb1ed1` |
| 5 | `theorem` | [exists_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/exists-iff--b7f06795e28f3c10b3627000.md) | 82 | `result-track:b7f06795e28f3c10b3627000be8fafd3006c08d69ee7c722cf977c7895aac7a1` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/example--5847b45a63e1271cd168de32.md) | 88 | `declaration-track:5847b45a63e1271cd168de32dbea512c70f9f99ff3d593afca7934da6fadd064` |
| 7 | `def` | [transposeᵣ](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/transpose--a3fa1ff6d72eb15df23cbe5f.md) | 93 | `declaration-track:a3fa1ff6d72eb15df23cbe5feb45bc65f387bb9a48081ff0bff1953507157ea5` |
| 8 | `theorem` | [transposeᵣ_eq](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/transpose-eq--328984c368a717569fb274ff.md) | 104 | `result-track:328984c368a717569fb274ff24330acc02ea50b716d2d595934f7e3f6739d96f` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/example--3487a1131396bdc55c72a394.md) | 115 | `declaration-track:3487a1131396bdc55c72a394b28123e7b81924cff4e6feb325f9f7dcd9effc60` |
| 10 | `def` | [dotProductᵣ](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/dotproduct--1d303937bd8ee0bdb7efe75f.md) | 119 | `declaration-track:1d303937bd8ee0bdb7efe75f981636098dc183b4897e9734f9a711335354c868` |
| 11 | `theorem` | [dotProductᵣ_eq](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/dotproduct-eq--fc2322a4b7af16b10dc38ac6.md) | 130 | `result-track:fc2322a4b7af16b10dc38ac624d2bec758c897d00d3b94ef05e9aedbd0856043` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/example--48d356347e7a1e89c9adbb3f.md) | 135 | `declaration-track:48d356347e7a1e89c9adbb3fca63ceb56b703151d5e251d88f289ae6069a1be3` |
| 13 | `def` | [mulᵣ](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/mul--f56fa02a6f0465c59ddf0fcc.md) | 139 | `declaration-track:f56fa02a6f0465c59ddf0fcc62b5b119977dfccc278ca91942c99cef56601d43` |
| 14 | `theorem` | [mulᵣ_eq](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/mul-eq--2f69a487aa33d1f8e945d657.md) | 155 | `result-track:2f69a487aa33d1f8e945d657dba29f28548f6a5ea9584a71b273c3d34be163e8` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/example--cde7987c56931bb820ca4f3f.md) | 160 | `declaration-track:cde7987c56931bb820ca4f3f178bdca889caeff5e13689432232d78afa36e542` |
| 16 | `def` | [mulVecᵣ](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/mulvec--0291642295d170d3172f962a.md) | 167 | `declaration-track:0291642295d170d3172f962af2e6eaaa16470011c8e82bbc2be987a42927f4b0` |
| 17 | `theorem` | [mulVecᵣ_eq](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/mulvec-eq--106da9aab42d20612008b619.md) | 179 | `result-track:106da9aab42d20612008b6196c1c18ddf2cd45808d0a97c9598084f27646e946` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/example--c8181095f2c0be70bedd078a.md) | 184 | `declaration-track:c8181095f2c0be70bedd078a25923618c450f92c0de42ecdb02274f5a5992d19` |
| 19 | `def` | [vecMulᵣ](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/vecmul--8c54a6be9019ad472d128f80.md) | 189 | `declaration-track:8c54a6be9019ad472d128f8096f674c9c45757c9397b2c23350e83b8cd253400` |
| 20 | `theorem` | [vecMulᵣ_eq](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/vecmul-eq--8c4a2d7597315f7217392c87.md) | 201 | `result-track:8c4a2d7597315f7217392c87a594a573fa1e6df28fe146f28bded70623920baa` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/example--435227ea5986889e04dcff1d.md) | 206 | `declaration-track:435227ea5986889e04dcff1dd9320b03efe266215b7a1398b4bb6da9428408f6` |
| 22 | `def` | [etaExpand](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/etaexpand--ca27d0c86a5817bec1bbb060.md) | 211 | `declaration-track:ca27d0c86a5817bec1bbb0605f8c381f52d0ad5be807d3417184c2637c9946f4` |
| 23 | `theorem` | [etaExpand_eq](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/etaexpand-eq--925eb086adc5fef1f530650f.md) | 222 | `result-track:925eb086adc5fef1f530650f8666f07a578b2f9b4ada46c704bae0d84a60b793` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/declarations/example--a47f71a3b1df5d0d0c6d4059.md) | 227 | `declaration-track:a47f71a3b1df5d0d0c6d4059c13c4c2331b9f57c026533704d66736c5484cbc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
