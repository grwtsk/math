# Verification target: GRWTSK.Analysis.MeasureTheory.RootActualXiExponentialEnvelope.Variant3014d293be03e027f5f120924b234e727ff9ac5ed0fa052d4a314d2ee9a780a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cdf23301628777020fc78c104220014af24684a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant3014d293be03e027f5f120924b234e727ff9ac5ed0fa052d4a314d2ee9a780a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant3014d293be03e027f5f120924b234e727ff9ac5ed0fa052d4a314d2ee9a780a4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant3014d293be03e027f5f120924b234e727ff9ac5ed0fa052d4a314d2ee9a780a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cdf23301628777020fc78c104220014af24684a`.

Source path: `GRWTSK/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant3014d293be03e027f5f120924b234e727ff9ac5ed0fa052d4a314d2ee9a780a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant3014d293be03e027f5f120924b234e727ff9ac5ed0fa052d4a314d2ee9a780a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiTailPrimitive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualXiExponentialEnvelopeConstant](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant3014d293be03e027f5f120924b234e727ff9ac5ed0fa052d4a314d2ee9a780a4.lean/declarations/actualxiexponentialenvelopeconstant--fb9a8d01a91ab6d94d5d5491.md) | 28 | `declaration-track:fb9a8d01a91ab6d94d5d5491499a4f484d470320a3efbcce3a274ea5029abaac` |
| 2 | `theorem` | [coefficient_nonneg](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant3014d293be03e027f5f120924b234e727ff9ac5ed0fa052d4a314d2ee9a780a4.lean/declarations/coefficient-nonneg--485df4e1d658b29cc13eedfe.md) | 31 | `result-track:485df4e1d658b29cc13eedfe7a5b913223d1a8349a71d3f5282b7026cb2ca942` |
| 3 | `theorem` | [actualXiTailTimeDensity_abs_le](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant3014d293be03e027f5f120924b234e727ff9ac5ed0fa052d4a314d2ee9a780a4.lean/declarations/actualxitailtimedensity-abs-le--9657c3ae6b759e7e2b4ef3a6.md) | 36 | `result-track:9657c3ae6b759e7e2b4ef3a6fe26d0eed40765779343d5ea501143547941e616` |
| 4 | `theorem` | [actualAnchoredXiTailPrimitive_abs_le](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant3014d293be03e027f5f120924b234e727ff9ac5ed0fa052d4a314d2ee9a780a4.lean/declarations/actualanchoredxitailprimitive-abs-le--0d2d81c19b51b18130cc34ab.md) | 58 | `result-track:0d2d81c19b51b18130cc34ab1b63e104c63d7aeca8e622672754f65ce64c46f5` |
| 5 | `theorem` | [primitive_continuousOn_Ici](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant3014d293be03e027f5f120924b234e727ff9ac5ed0fa052d4a314d2ee9a780a4.lean/declarations/primitive-continuouson-ici--a5100b7791bda7b52301393c.md) | 81 | `result-track:a5100b7791bda7b52301393cce7b1713bf5ed74b5d7e5e612f9a677223d1c941` |
| 6 | `theorem` | [actualXiLaplace_integrableOn](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant3014d293be03e027f5f120924b234e727ff9ac5ed0fa052d4a314d2ee9a780a4.lean/declarations/actualxilaplace-integrableon--d35af3abd53a3d88b9212bf7.md) | 93 | `result-track:d35af3abd53a3d88b9212bf7f609f22865caeb41bf0a86bf0858b298e297a242` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
