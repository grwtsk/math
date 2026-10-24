# Verification target: GRWTSK.Algebra.LinearAlgebra.GeneralLinearGroup.Variant3c81408d4e59a4df58a90e2fedd43799910a3694c3d0c744cf13078853299f29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "465417dd42af5f4af08db2bbe9daae27019806a8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GeneralLinearGroup/Variant3c81408d4e59a4df58a90e2fedd43799910a3694c3d0c744cf13078853299f29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant3c81408d4e59a4df58a90e2fedd43799910a3694c3d0c744cf13078853299f29.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant3c81408d4e59a4df58a90e2fedd43799910a3694c3d0c744cf13078853299f29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `465417dd42af5f4af08db2bbe9daae27019806a8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GeneralLinearGroup/Variant3c81408d4e59a4df58a90e2fedd43799910a3694c3d0c744cf13078853299f29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GeneralLinearGroup/Variant3c81408d4e59a4df58a90e2fedd43799910a3694c3d0c744cf13078853299f29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Equiv.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GeneralLinearGroup](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant3c81408d4e59a4df58a90e2fedd43799910a3694c3d0c744cf13078853299f29.lean/declarations/generallineargroup--371bc43c5a8205713f9414f0.md) | 37 | `declaration-track:371bc43c5a8205713f9414f02de9f281a10cc0c68a64f72d1f05bf69a43fd0db` |
| 2 | `def` | [toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant3c81408d4e59a4df58a90e2fedd43799910a3694c3d0c744cf13078853299f29.lean/declarations/tolinearequiv--177aebac0ab0fc1e68c8a05b.md) | 45 | `declaration-track:177aebac0ab0fc1e68c8a05b32d190831cf5c3e4a1d495633c7d2fe89fdfeb39` |
| 3 | `def` | [ofLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant3c81408d4e59a4df58a90e2fedd43799910a3694c3d0c744cf13078853299f29.lean/declarations/oflinearequiv--98108c7bc68446cdf1104876.md) | 52 | `declaration-track:98108c7bc68446cdf110487684aa56de8c5b1fee7ad9f74d1a9ef3e73652fbf5` |
| 4 | `def` | [generalLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant3c81408d4e59a4df58a90e2fedd43799910a3694c3d0c744cf13078853299f29.lean/declarations/generallinearequiv--0581ed800c3f7752a8e6ea93.md) | 62 | `declaration-track:0581ed800c3f7752a8e6ea93147ed8e7777d767ad9e013cdff37178436589cdb` |
| 5 | `theorem` | [generalLinearEquiv_to_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant3c81408d4e59a4df58a90e2fedd43799910a3694c3d0c744cf13078853299f29.lean/declarations/generallinearequiv-to-linearmap--c121aca07e0012224d581c04.md) | 70 | `result-track:c121aca07e0012224d581c04837f784119c34c7c9cc70a1fde9518faee124ab0` |
| 6 | `theorem` | [coeFn_generalLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant3c81408d4e59a4df58a90e2fedd43799910a3694c3d0c744cf13078853299f29.lean/declarations/coefn-generallinearequiv--70da6e602c4059e5891114de.md) | 74 | `result-track:70da6e602c4059e5891114de5cd7086bc9509c6eefcf54ebcfdeeb83b4706619` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
