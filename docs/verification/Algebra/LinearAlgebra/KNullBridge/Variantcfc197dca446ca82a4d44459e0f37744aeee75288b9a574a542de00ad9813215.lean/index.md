# Verification target: GRWTSK.Algebra.LinearAlgebra.KNullBridge.Variantcfc197dca446ca82a4d44459e0f37744aeee75288b9a574a542de00ad9813215

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96fc0f5584579f52e85142618a54b94f1aeef640",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/KNullBridge/Variantcfc197dca446ca82a4d44459e0f37744aeee75288b9a574a542de00ad9813215.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/KNullBridge/Variantcfc197dca446ca82a4d44459e0f37744aeee75288b9a574a542de00ad9813215.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/KNullBridge/Variantcfc197dca446ca82a4d44459e0f37744aeee75288b9a574a542de00ad9813215.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96fc0f5584579f52e85142618a54b94f1aeef640`.

Source path: `GRWTSK/Algebra/LinearAlgebra/KNullBridge/Variantcfc197dca446ca82a4d44459e0f37744aeee75288b9a574a542de00ad9813215.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/KNullBridge/Variantcfc197dca446ca82a4d44459e0f37744aeee75288b9a574a542de00ad9813215.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kakeya.ForceDensity.Matrix` — import line 6; external provider; requires a separately pinned dependency.
- `Init.Grind` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [KEqual128](../../../../../mathematics/Algebra/LinearAlgebra/KNullBridge/Variantcfc197dca446ca82a4d44459e0f37744aeee75288b9a574a542de00ad9813215.lean/declarations/kequal128--2bdd7b301881f50400860337.md) | 14 | `declaration-track:2bdd7b301881f504008603374314a2414ddcbbd83f327f6068468c547c22c154` |
| 2 | `def` | [KResidueHeat128](../../../../../mathematics/Algebra/LinearAlgebra/KNullBridge/Variantcfc197dca446ca82a4d44459e0f37744aeee75288b9a574a542de00ad9813215.lean/declarations/kresidueheat128--bcb018d86765c0edc7d9b019.md) | 17 | `declaration-track:bcb018d86765c0edc7d9b01953923a28e46466d50dfaaf0ba74cec48df66724c` |
| 3 | `def` | [KNull](../../../../../mathematics/Algebra/LinearAlgebra/KNullBridge/Variantcfc197dca446ca82a4d44459e0f37744aeee75288b9a574a542de00ad9813215.lean/declarations/knull--5ec2c0ffb27f10029130d5c8.md) | 20 | `declaration-track:5ec2c0ffb27f10029130d5c87ff0ba526c40ecba070e647fa22264bf459828f2` |
| 4 | `theorem` | [k_null_iff_zero_residue](../../../../../mathematics/Algebra/LinearAlgebra/KNullBridge/Variantcfc197dca446ca82a4d44459e0f37744aeee75288b9a574a542de00ad9813215.lean/declarations/k-null-iff-zero-residue--da0b1c7fb33f5bedcd016ff8.md) | 23 | `result-track:da0b1c7fb33f5bedcd016ff8bdb7f82be2e95d69d0cade7414ab584be4b7b77d` |
| 5 | `theorem` | [exact_null_transports_to_k_null](../../../../../mathematics/Algebra/LinearAlgebra/KNullBridge/Variantcfc197dca446ca82a4d44459e0f37744aeee75288b9a574a542de00ad9813215.lean/declarations/exact-null-transports-to-k-null--1063c4bc05790b5514a6832a.md) | 33 | `result-track:1063c4bc05790b5514a6832a81c2c8b17b255a60e358bb5d357e7ad93e734aac` |
| 6 | `theorem` | [force_density_bridge_null](../../../../../mathematics/Algebra/LinearAlgebra/KNullBridge/Variantcfc197dca446ca82a4d44459e0f37744aeee75288b9a574a542de00ad9813215.lean/declarations/force-density-bridge-null--c644f8a6397aa4568d9440b3.md) | 43 | `result-track:c644f8a6397aa4568d9440b3364c12ac1c5cbbc16826d8d19196e75ba806fa30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
