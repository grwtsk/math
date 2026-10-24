# Verification target: GRWTSK.Algebra.Limits.Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1123d13a527e3f18b324b58b76ce0a47cb9da95",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/index.md) · [Full source](../../../../mathematics/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1123d13a527e3f18b324b58b76ce0a47cb9da95`.

Source path: `GRWTSK/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.AlgebraCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Limits` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [semiringObj](../../../../mathematics/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/declarations/semiringobj--0589928a1df520ec55ff0d85.md) | 37 | `declaration-track:0589928a1df520ec55ff0d857c92fe77c988f06ffc0ef446b0a24417f7046d9f` |
| 2 | `instance` | [algebraObj](../../../../mathematics/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/declarations/algebraobj--8917c91fbaea0e1ebdde9c62.md) | 42 | `declaration-track:8917c91fbaea0e1ebdde9c62a68a8403b807e7dc931f1d5fc46acf900b6a9985` |
| 3 | `def` | [sectionsSubalgebra](../../../../mathematics/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/declarations/sectionssubalgebra--368942e04b83a88a8e747952.md) | 49 | `declaration-track:368942e04b83a88a8e747952bd56e81c87f6ef73da970823a01f4907d065cca0` |
| 4 | `instance` | [limitSemiring](../../../../mathematics/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/declarations/limitsemiring--054ecc4dcb59afebe4b9cd87.md) | 55 | `declaration-track:054ecc4dcb59afebe4b9cd87cf9c3a88669726516312e5b7ed6b71172f6f495c` |
| 5 | `instance` | [limitAlgebra](../../../../mathematics/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/declarations/limitalgebra--2db56e9407ac45eb6ae0c2d8.md) | 60 | `declaration-track:2db56e9407ac45eb6ae0c2d86af05cd40d8cbff4268b407cedb0597df86a0dd8` |
| 6 | `def` | [limitπAlgHom](../../../../mathematics/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/declarations/limit-alghom--1bb0593d4cfd7ac4647c9395.md) | 66 | `declaration-track:1bb0593d4cfd7ac4647c9395bf4abb82825c97d58c4b06eea052ce7ed69349ab` |
| 7 | `def` | [limitCone](../../../../mathematics/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/declarations/limitcone--f6e047f62e6d90260c18678a.md) | 82 | `declaration-track:f6e047f62e6d90260c18678aa0237f5ca488a6bc85d91c6a82fbd773862bd283` |
| 8 | `def` | [limitConeIsLimit](../../../../mathematics/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/declarations/limitconeislimit--eba825d2795f2f04c1639949.md) | 93 | `declaration-track:eba825d2795f2f04c1639949115613435036938a679830127e53e332a7f23567` |
| 9 | `lemma` | [hasLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/declarations/haslimitsofsize--1e43baad485da4242226ff6d.md) | 133 | `result-track:1e43baad485da4242226ff6d6750356223c7b15c63fcf677cbd3fda7e7bfa3d2` |
| 10 | `instance` | [hasLimits](../../../../mathematics/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/declarations/haslimits--24387b14330e5ce59d4e10dd.md) | 140 | `declaration-track:24387b14330e5ce59d4e10ddf63e8960afff12f2ea1317e99640c7ba95d58e9d` |
| 11 | `instance` | [forget₂RingPreservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/declarations/forget-ringpreserveslimitsofsize--eab7994106b74e1d5e9e02bb.md) | 146 | `declaration-track:eab7994106b74e1d5e9e02bb90e2882413149359b08b180d6f0e92eb7696945f` |
| 12 | `instance` | [forget₂RingPreservesLimits](../../../../mathematics/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/declarations/forget-ringpreserveslimits--799b4ec87acc02cbcdcfb2f5.md) | 155 | `declaration-track:799b4ec87acc02cbcdcfb2f5be00ae8b00a1750c924e74b90300f2de650ebfe0` |
| 13 | `instance` | [forget₂ModulePreservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/declarations/forget-modulepreserveslimitsofsize--99caf84dc98cbc11847a69a7.md) | 161 | `declaration-track:99caf84dc98cbc11847a69a7643263cb5df8870ad555c7633c51c825c168f5a1` |
| 14 | `instance` | [forget₂ModulePreservesLimits](../../../../mathematics/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/declarations/forget-modulepreserveslimits--0cef96bed19a14f210889e3d.md) | 170 | `declaration-track:0cef96bed19a14f210889e3dd79d445928776970b29576550a6852d2e518988f` |
| 15 | `instance` | [forgetPreservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/declarations/forgetpreserveslimitsofsize--6539cf7a3672a27f27217a4b.md) | 177 | `declaration-track:6539cf7a3672a27f27217a4b8764dc865ae1035112deb6479cbeff3fff5ab703` |
| 16 | `instance` | [forgetPreservesLimits](../../../../mathematics/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/declarations/forgetpreserveslimits--3034a6e8e7ce5ca63be855e5.md) | 185 | `declaration-track:3034a6e8e7ce5ca63be855e587f19977160b54838484f55ee59bab9d00096c27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
