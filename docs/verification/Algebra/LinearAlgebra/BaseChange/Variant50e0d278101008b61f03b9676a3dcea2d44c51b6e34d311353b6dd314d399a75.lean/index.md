# Verification target: GRWTSK.Algebra.LinearAlgebra.BaseChange.Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4468c5270ec16b4ae7af7c9d53cd963fd9658d93",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4468c5270ec16b4ae7af7c9d53cd963fd9658d93`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Rat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.PerfectPairing.Restrict` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.IsValuedIn` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsBalanced](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean/declarations/isbalanced--a63e788a993d100fe90e5949.md) | 48 | `declaration-track:a63e788a993d100fe90e59497ad3357e27dba0b474da8e8bae6b0e949d3e3fee` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean/declarations/instance--9bac6db499dbcb07b6d3dbaf.md) | 52 | `declaration-track:9bac6db499dbcb07b6d3dbaf34f10b0f946567dd2f9c255589bb62e393452a12` |
| 3 | `def` | [restrictScalars'](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean/declarations/restrictscalars--898d8dde3f7af7cf15007879.md) | 75 | `declaration-track:898d8dde3f7af7cf1500787945782e30973f51b2fa1a2c8bd7b63752c30562ad` |
| 4 | `lemma` | [restrictScalars_toPerfectPairing_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean/declarations/restrictscalars-toperfectpairing-apply-apply--28c2c64da6789c2c946aab95.md) | 105 | `result-track:28c2c64da6789c2c946aab95c38596af794e4387683d5b7671d3922d51e6e55a` |
| 5 | `lemma` | [restrictScalars_coe_root](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean/declarations/restrictscalars-coe-root--b3de59cfb9515cedee748ab2.md) | 110 | `result-track:b3de59cfb9515cedee748ab2b9ebccf4a2eb82f1a38459a67c2d964a06c8811b` |
| 6 | `lemma` | [restrictScalars_coe_coroot](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean/declarations/restrictscalars-coe-coroot--bed948d32d8d390cc5b4953b.md) | 114 | `result-track:bed948d32d8d390cc5b4953b3b9d8c16d139ec6dc0cba72b1c55c2a7d779835d` |
| 7 | `lemma` | [restrictScalars_pairing](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean/declarations/restrictscalars-pairing--efe61821ca5b0e340207a9e6.md) | 118 | `result-track:efe61821ca5b0e340207a9e6398a7d0a55f0d3e1e05da5b9f7c929013c04c454` |
| 8 | `abbrev` | [restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean/declarations/restrictscalars--b17f031b40d0689fadda0527.md) | 126 | `declaration-track:b17f031b40d0689fadda0527c06a7c8c639be62a2a62e79d391593c0e6ae51aa` |
| 9 | `abbrev` | [restrictScalarsRat](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean/declarations/restrictscalarsrat--03ac8c491b757bcf0db8e038.md) | 131 | `declaration-track:03ac8c491b757bcf0db8e0381f4182dd78229aff6bd2025691204d7ce9ff6505` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
