# Verification target: GRWTSK.Geometry.DerivationBundle.Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f9cd3ac0af40c9d788231ab3a486a658df88299",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/index.md) · [Full source](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f9cd3ac0af40c9d788231ab3a486a658df88299`.

Source path: `GRWTSK/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Algebra.SmoothFunctions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Derivation.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [smoothFunctionsAlgebra](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/smoothfunctionsalgebra--de5f4f90ac596cfa50a1d19d.md) | 38 | `declaration-track:de5f4f90ac596cfa50a1d19d73e1cc94a1f8f92f34cdbfa726fdd5989ab0298c` |
| 2 | `instance` | [smooth_functions_tower](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/smooth-functions-tower--fbb9b011335c9f6932b6b8b6.md) | 40 | `declaration-track:fbb9b011335c9f6932b6b8b63496e0b41f10a4ddc626551f8d00b03d76302d69` |
| 3 | `def` | [PointedContMDiffMap](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/pointedcontmdiffmap--e2d0a30d23bb3853c3972cf6.md) | 46 | `declaration-track:e2d0a30d23bb3853c3972cf6f32e8f30a2e2de97778ebb83b57373d6643de946` |
| 4 | `instance` | [instFunLike](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/instfunlike--1d22521ad11ec9dbb887412d.md) | 60 | `declaration-track:1d22521ad11ec9dbb887412dd3261df7598e10872be3a11fbe9c9768f891ff88` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/instance--6e187331f6449090652c620e.md) | 63 | `declaration-track:6e187331f6449090652c620e1eb6f39dd8ca49bb9aaa6c5a7ca19721ab4dc9ff` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/instance--cbbbac85e143a67998d3d65f.md) | 66 | `declaration-track:cbbbac85e143a67998d3d65fdf8f806fe03c7e5908276ba223fcb42e3ec265e4` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/instance--ee586c30695924c32e12c04e.md) | 69 | `declaration-track:ee586c30695924c32e12c04e9325452914a788e90fe5b275e10ae4db30372d38` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/instance--94f1cb358323b14574aed2d2.md) | 72 | `declaration-track:94f1cb358323b14574aed2d2243450f07cf718f150f302c22adf549482325b6d` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/instance--2356b9a182718082c65927cb.md) | 75 | `declaration-track:2356b9a182718082c65927cbca6d1cf27c0bf0910dcffa5e9132a94a72ca0ae5` |
| 10 | `instance` | [evalAlgebra](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/evalalgebra--fcc1eca3bfd4119fa629751f.md) | 81 | `declaration-track:fcc1eca3bfd4119fa629751f2b8add0d5c6e74f8856c3c2adef6e91903ba310c` |
| 11 | `def` | [eval](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/eval--897a5a6147c39e3ea42d6cfe.md) | 85 | `declaration-track:897a5a6147c39e3ea42d6cfe43df1226b3b67b75d22ab8ac85b72176bf10a810` |
| 12 | `theorem` | [smul_def](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/smul-def--ea2ba1defe9283c0992dd911.md) | 88 | `result-track:ea2ba1defe9283c0992dd91102fe4741040b3b664fd28bc6d2cf91c61ea23177` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/instance--e55a9183d6703be12d5d37df.md) | 91 | `declaration-track:e55a9183d6703be12d5d37df1eee7015161c86d7ffdd3cb8e7a2c35272fa00f4` |
| 14 | `abbrev` | [PointDerivation](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/pointderivation--6a27f392bbcb4587ac32cdba.md) | 103 | `declaration-track:6a27f392bbcb4587ac32cdba93230d86b463971b433df76824dddd6fcd8c9f8f` |
| 15 | `def` | [ContMDiffFunction.evalAt](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/contmdifffunction-evalat--17564e5d7fb5242a91dad2ad.md) | 114 | `declaration-track:17564e5d7fb5242a91dad2ad5f76fea67c21c730ecedc54fba14443ba635209c` |
| 16 | `def` | [evalAt](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/evalat--ed41b0277e5d739ab9e90953.md) | 124 | `declaration-track:ed41b0277e5d739ab9e909536c00e3e4c86a4779849312f00f44a2562045db07` |
| 17 | `theorem` | [evalAt_apply](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/evalat-apply--950f52f79c8edf5fd4bd28b1.md) | 127 | `result-track:950f52f79c8edf5fd4bd28b10c89adf2137602f7d1194f5384e06001158040d9` |
| 18 | `def` | [hfdifferential](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/hfdifferential--3f308c9115a7d5316caeca2f.md) | 140 | `declaration-track:3f308c9115a7d5316caeca2fa5498593a8b3b3263afb83c181b2f9be43545687` |
| 19 | `def` | [fdifferential](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/fdifferential--8e29659883b9773e373ebfb0.md) | 158 | `declaration-track:8e29659883b9773e373ebfb0b7eaacc88b5de3cfe2e7b1be3080648b39b3696f` |
| 20 | `theorem` | [fdifferential_apply](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/fdifferential-apply--1a24a3e9fe4ba67c8f6c155b.md) | 169 | `result-track:1a24a3e9fe4ba67c8f6c155bc90447b5298c5f1d310c37622574103be182bbff` |
| 21 | `theorem` | [hfdifferential_apply](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/hfdifferential-apply--5fcf683472b4a79401df1844.md) | 175 | `result-track:5fcf683472b4a79401df1844fd9b147e903586fcaf2b9b83e5d2122d019eb7d6` |
| 22 | `theorem` | [fdifferential_comp](../../../../mathematics/Geometry/DerivationBundle/Varianta720b59ce87f0cd2fa02e4d05ae983ac8db97a38a5f73c39e6b2e04c635717e3.lean/declarations/fdifferential-comp--ccb0bbe6453db8ff58c26784.md) | 185 | `result-track:ccb0bbe6453db8ff58c26784cdd2381cc3b3a57a0416d5f7ee406040bf43f0fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
