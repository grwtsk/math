# Verification target: GRWTSK.Algebra.LinearAlgebra.Pi.Variant6a21c1e84f5018b6312846f2188c4d7b769aa2206b0a559e2b5de25bfb3c0f89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44af62c88aaacde336a4d22ffcf8cac2cd134ba3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant6a21c1e84f5018b6312846f2188c4d7b769aa2206b0a559e2b5de25bfb3c0f89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant6a21c1e84f5018b6312846f2188c4d7b769aa2206b0a559e2b5de25bfb3c0f89.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant6a21c1e84f5018b6312846f2188c4d7b769aa2206b0a559e2b5de25bfb3c0f89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44af62c88aaacde336a4d22ffcf8cac2cd134ba3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pi/Variant6a21c1e84f5018b6312846f2188c4d7b769aa2206b0a559e2b5de25bfb3c0f89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pi/Variant6a21c1e84f5018b6312846f2188c4d7b769aa2206b0a559e2b5de25bfb3c0f89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pi_ext](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant6a21c1e84f5018b6312846f2188c4d7b769aa2206b0a559e2b5de25bfb3c0f89.lean/declarations/pi-ext--46fa15c78bd98521b49b2d09.md) | 48 | `result-track:46fa15c78bd98521b49b2d0945bc9fbf975cb68e503bfba3a10299717e7a30bc` |
| 2 | `def` | [piFamily](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant6a21c1e84f5018b6312846f2188c4d7b769aa2206b0a559e2b5de25bfb3c0f89.lean/declarations/pifamily--07ab462d76800ebb1e3003bb.md) | 81 | `declaration-track:07ab462d76800ebb1e3003bb33f4135c33eb76cbc2742659ffd796f2562a564b` |
| 3 | `theorem` | [piFamily_single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant6a21c1e84f5018b6312846f2188c4d7b769aa2206b0a559e2b5de25bfb3c0f89.lean/declarations/pifamily-single--fd04255bfb912607da20c758.md) | 95 | `result-track:fd04255bfb912607da20c7581acaf4b81c3d64d69e6a46baf9196f36dd4f80ec` |
| 4 | `theorem` | [piFamily_single_left_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant6a21c1e84f5018b6312846f2188c4d7b769aa2206b0a559e2b5de25bfb3c0f89.lean/declarations/pifamily-single-left-apply--c9b4895bbe1b4e4ae97c9faa.md) | 111 | `result-track:c9b4895bbe1b4e4ae97c9faad5cbbf9b48a44e6d6285267ca48c896c2695550e` |
| 5 | `theorem` | [piFamily_single_left](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant6a21c1e84f5018b6312846f2188c4d7b769aa2206b0a559e2b5de25bfb3c0f89.lean/declarations/pifamily-single-left--e07f34c5b0328bebdf265f3d.md) | 119 | `result-track:e07f34c5b0328bebdf265f3db08b85c3cc6c3f941581f4c6fc59eb6dbba98989` |
| 6 | `theorem` | [piFamily_compLinearMap_lsingle](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant6a21c1e84f5018b6312846f2188c4d7b769aa2206b0a559e2b5de25bfb3c0f89.lean/declarations/pifamily-complinearmap-lsingle--256a5e0da3f96c075e228a33.md) | 126 | `result-track:256a5e0da3f96c075e228a33c2641929a685ebd3a0b3e7a7e87be68137c97db5` |
| 7 | `theorem` | [piFamily_zero](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant6a21c1e84f5018b6312846f2188c4d7b769aa2206b0a559e2b5de25bfb3c0f89.lean/declarations/pifamily-zero--a748d98cf6cc4ac28dda0044.md) | 133 | `result-track:a748d98cf6cc4ac28dda0044b56b6028f0c4f93a88e1a7fd0a303b8f50c590c6` |
| 8 | `theorem` | [piFamily_add](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant6a21c1e84f5018b6312846f2188c4d7b769aa2206b0a559e2b5de25bfb3c0f89.lean/declarations/pifamily-add--e2fce4bf1fba242ef83323ec.md) | 138 | `result-track:e2fce4bf1fba242ef83323ecb37c36d875b03c37515979933aad34a953e822d5` |
| 9 | `theorem` | [piFamily_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant6a21c1e84f5018b6312846f2188c4d7b769aa2206b0a559e2b5de25bfb3c0f89.lean/declarations/pifamily-smul--a5dda79592ec99f935bdec4a.md) | 143 | `result-track:a5dda79592ec99f935bdec4a7c00f4c81d7229223755ab8d120d18315aaeeecf` |
| 10 | `def` | [piFamilyₗ](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant6a21c1e84f5018b6312846f2188c4d7b769aa2206b0a559e2b5de25bfb3c0f89.lean/declarations/pifamily--46946639a8480319b88cdf65.md) | 159 | `declaration-track:46946639a8480319b88cdf65cf1e80858cedaf8ab646b3a43a6aebdf3d56ca03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
