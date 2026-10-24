# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFourierBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a84a01cbc0c5f582422b5dfdfd77d7fb9fc77fb",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierBridge.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a84a01cbc0c5f582422b5dfdfd77d7fb9fc77fb`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenCoefficientBridge`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCoefficientBridge.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Analysis.Fourier.AddCircle` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fourierModePrimitive](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierBridge.lean/declarations/fouriermodeprimitive--741fc9fe635bb287ab1947d3.md) | 20 | `declaration-track:741fc9fe635bb287ab1947d3ee9e1330bcf9fea3c9d9175e85515992b8f6443a` |
| 2 | `def` | [fourierModeValue](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierBridge.lean/declarations/fouriermodevalue--ea63ffe0d02d5b46de3d5624.md) | 25 | `declaration-track:ea63ffe0d02d5b46de3d5624060b7b7b3011675a9e7f64edc6ad33b4229a0426` |
| 3 | `def` | [greenFourierBackgroundCoordinate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierBridge.lean/declarations/greenfourierbackgroundcoordinate--ee3d249a9008ec6c544ef370.md) | 29 | `declaration-track:ee3d249a9008ec6c544ef370bc9ae11e8d29f9cd26f1001b1e444259b69dabd4` |
| 4 | `def` | [thinGreenArithmeticFourierCoordinate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierBridge.lean/declarations/thingreenarithmeticfouriercoordinate--74430f1d26306feb7007015f.md) | 34 | `declaration-track:74430f1d26306feb7007015f9a98ffb3ca8911cb3536bc9c5c806826db369abd` |
| 5 | `def` | [centeredMobiusLogFourierCoordinate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierBridge.lean/declarations/centeredmobiuslogfouriercoordinate--79fc4a75c428a77d38678544.md) | 40 | `declaration-track:79fc4a75c428a77d38678544614ee6011988fc4b2627e912a035ac62b51500ff` |
| 6 | `def` | [greenDiscreteHarmonicFourierCorrection](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierBridge.lean/declarations/greendiscreteharmonicfouriercorrection--8afc1d44bba2a536bc67a573.md) | 45 | `declaration-track:8afc1d44bba2a536bc67a57329658857defba7840d3fe85090b29ebb92ff66bc` |
| 7 | `theorem` | [thinGreenArithmeticFourierCoordinate_decomposition](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierBridge.lean/declarations/thingreenarithmeticfouriercoordinate-decomposition--db93d80f39337501e85c166c.md) | 50 | `result-track:db93d80f39337501e85c166c199295cd8517b9281a6f9ecf8721b6db1f7ac556` |
| 8 | `def` | [greenCenteringResidual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierBridge.lean/declarations/greencenteringresidual--510031abc38ec04174fc9626.md) | 63 | `declaration-track:510031abc38ec04174fc9626ff1310c11fc62e88b9f9ae6b3e520230ce691632` |
| 9 | `theorem` | [thinGreenArithmeticFourierCoordinate_eq_residual_sub_centered](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierBridge.lean/declarations/thingreenarithmeticfouriercoordinate-eq-residual-sub-centered--4e2a2aa64d21958137679e59.md) | 67 | `result-track:4e2a2aa64d21958137679e59a5a510ac8a670517ee1a436a0761bc327d2f055e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
