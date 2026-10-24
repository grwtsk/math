# Verification target: GRWTSK.Algebra.LinearAlgebra.CubeBridge.Variant0f18e8e4b0819e43e10b04fd26a9cb71c75a48d24dad341ee7c2ac1c19e1d9e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "830fc722493c696b0ae47289eb3716997c9f68cf",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CubeBridge/Variant0f18e8e4b0819e43e10b04fd26a9cb71c75a48d24dad341ee7c2ac1c19e1d9e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CubeBridge/Variant0f18e8e4b0819e43e10b04fd26a9cb71c75a48d24dad341ee7c2ac1c19e1d9e0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CubeBridge/Variant0f18e8e4b0819e43e10b04fd26a9cb71c75a48d24dad341ee7c2ac1c19e1d9e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `830fc722493c696b0ae47289eb3716997c9f68cf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CubeBridge/Variant0f18e8e4b0819e43e10b04fd26a9cb71c75a48d24dad341ee7c2ac1c19e1d9e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CubeBridge/Variant0f18e8e4b0819e43e10b04fd26a9cb71c75a48d24dad341ee7c2ac1c19e1d9e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.BinaryMatrix` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Cellular.Cube` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPowerTwoSquare](../../../../../mathematics/Algebra/LinearAlgebra/CubeBridge/Variant0f18e8e4b0819e43e10b04fd26a9cb71c75a48d24dad341ee7c2ac1c19e1d9e0.lean/declarations/ispowertwosquare--69efd5e5be5ef15cadbd2f2b.md) | 28 | `declaration-track:69efd5e5be5ef15cadbd2f2b2749c2dd23057d20250ec2953092892741fd46a3` |
| 2 | `structure` | [BinaryCubeLevel](../../../../../mathematics/Algebra/LinearAlgebra/CubeBridge/Variant0f18e8e4b0819e43e10b04fd26a9cb71c75a48d24dad341ee7c2ac1c19e1d9e0.lean/declarations/binarycubelevel--bbca73aa9a4e0028bae334c7.md) | 31 | `declaration-track:bbca73aa9a4e0028bae334c7029053163898c2a683e9c1fcb6a8d47fef5fa99f` |
| 3 | `theorem` | [binaryCubeLevel_shape](../../../../../mathematics/Algebra/LinearAlgebra/CubeBridge/Variant0f18e8e4b0819e43e10b04fd26a9cb71c75a48d24dad341ee7c2ac1c19e1d9e0.lean/declarations/binarycubelevel-shape--d483c500383eec70e2a2fa40.md) | 36 | `result-track:d483c500383eec70e2a2fa400adef20e93cd12fbe2bcf597de6971b4775d5731` |
| 4 | `abbrev` | [BinaryCubeSignal](../../../../../mathematics/Algebra/LinearAlgebra/CubeBridge/Variant0f18e8e4b0819e43e10b04fd26a9cb71c75a48d24dad341ee7c2ac1c19e1d9e0.lean/declarations/binarycubesignal--7d58cc5a0df2585be0e42ab7.md) | 42 | `declaration-track:7d58cc5a0df2585be0e42ab7991d8acb46a1ca743435f2a887b3ca6c4043c016` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
