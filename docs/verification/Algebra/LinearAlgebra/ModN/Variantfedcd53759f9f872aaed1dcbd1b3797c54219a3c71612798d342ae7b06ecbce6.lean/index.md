# Verification target: GRWTSK.Algebra.LinearAlgebra.ModN.Variantfedcd53759f9f872aaed1dcbd1b3797c54219a3c71612798d342ae7b06ecbce6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3254ece54a80ee8d1e4d8d4009395e191dff080",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ModN/Variantfedcd53759f9f872aaed1dcbd1b3797c54219a3c71612798d342ae7b06ecbce6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variantfedcd53759f9f872aaed1dcbd1b3797c54219a3c71612798d342ae7b06ecbce6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variantfedcd53759f9f872aaed1dcbd1b3797c54219a3c71612798d342ae7b06ecbce6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3254ece54a80ee8d1e4d8d4009395e191dff080`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ModN/Variantfedcd53759f9f872aaed1dcbd1b3797c54219a3c71612798d342ae7b06ecbce6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ModN/Variantfedcd53759f9f872aaed1dcbd1b3797c54219a3c71612798d342ae7b06ecbce6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Int` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.ZMod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Free` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ModN](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variantfedcd53759f9f872aaed1dcbd1b3797c54219a3c71612798d342ae7b06ecbce6.lean/declarations/modn--5d3b5ed66eac1b5beac10ef6.md) | 30 | `declaration-track:5d3b5ed66eac1b5beac10ef687b53fea434b86465ad20cdbd18ea3e5215060dd` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variantfedcd53759f9f872aaed1dcbd1b3797c54219a3c71612798d342ae7b06ecbce6.lean/declarations/instance--3955d5b5a272f615ab6e2a74.md) | 34 | `declaration-track:3955d5b5a272f615ab6e2a7445e5ae2f722c19101b50dd2119559898a2a05cb4` |
| 3 | `def` | [liftEquiv](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variantfedcd53759f9f872aaed1dcbd1b3797c54219a3c71612798d342ae7b06ecbce6.lean/declarations/liftequiv--797a2b576b6fe03911df20fe.md) | 38 | `declaration-track:797a2b576b6fe03911df20fea543a9b79d06824d40f889285faa662c6caee838` |
| 4 | `def` | [liftEquiv'](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variantfedcd53759f9f872aaed1dcbd1b3797c54219a3c71612798d342ae7b06ecbce6.lean/declarations/liftequiv--820dd5bfcf63724825d30395.md) | 55 | `declaration-track:820dd5bfcf63724825d3039512c904f5ed2e401bf490482bc0054109e707cc37` |
| 5 | `def` | [mkQ](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variantfedcd53759f9f872aaed1dcbd1b3797c54219a3c71612798d342ae7b06ecbce6.lean/declarations/mkq--76d9ffd36d54da85c14dad7b.md) | 61 | `declaration-track:76d9ffd36d54da85c14dad7b0ba670834b4f1011d914c29f0157881f72ca90c3` |
| 6 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variantfedcd53759f9f872aaed1dcbd1b3797c54219a3c71612798d342ae7b06ecbce6.lean/declarations/basis--1050180bffd9ef652bbe727a.md) | 67 | `declaration-track:1050180bffd9ef652bbe727abb079ae8f4f38922670fdcbfda6ed198fcfa476f` |
| 7 | `lemma` | [basis_apply_eq_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variantfedcd53759f9f872aaed1dcbd1b3797c54219a3c71612798d342ae7b06ecbce6.lean/declarations/basis-apply-eq-mkq--a2f9276eb73e17822b07856a.md) | 98 | `result-track:a2f9276eb73e17822b07856af5c31b2e904847904f5b38f71920a52f1b8c3630` |
| 8 | `instance` | [instModuleFinite](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variantfedcd53759f9f872aaed1dcbd1b3797c54219a3c71612798d342ae7b06ecbce6.lean/declarations/instmodulefinite--afed9c9199519951dd6d3a01.md) | 103 | `declaration-track:afed9c9199519951dd6d3a0134a0a002a8ecb20303b5975f6d3a2d20775ad103` |
| 9 | `instance` | [instFinite](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variantfedcd53759f9f872aaed1dcbd1b3797c54219a3c71612798d342ae7b06ecbce6.lean/declarations/instfinite--d8d5f29b784d87b4958c09e6.md) | 106 | `declaration-track:d8d5f29b784d87b4958c09e61d768babf9da117370ea1d408ba7c4c1eda858d2` |
| 10 | `lemma` | [natCard_eq](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variantfedcd53759f9f872aaed1dcbd1b3797c54219a3c71612798d342ae7b06ecbce6.lean/declarations/natcard-eq--97dcde9ebb88c3f2aaabe0d8.md) | 109 | `result-track:97dcde9ebb88c3f2aaabe0d8bdfa9d85840ca63b701cbc2234c1fd582d24c364` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
