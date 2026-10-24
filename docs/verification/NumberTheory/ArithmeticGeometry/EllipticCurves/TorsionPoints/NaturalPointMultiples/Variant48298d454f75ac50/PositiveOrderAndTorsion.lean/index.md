# Verification target: GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TorsionPoints.NaturalPointMultiples.Variant48298d454f75ac50.PositiveOrderAndTorsion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f46053f92751d32046bc7f6bda513e722818d5a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/TorsionPoints/NaturalPointMultiples/Variant48298d454f75ac50/PositiveOrderAndTorsion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/TorsionPoints/NaturalPointMultiples/Variant48298d454f75ac50/PositiveOrderAndTorsion.lean/index.md) · [Full source](../../../../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/TorsionPoints/NaturalPointMultiples/Variant48298d454f75ac50/PositiveOrderAndTorsion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f46053f92751d32046bc7f6bda513e722818d5a`.

Source path: `GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/TorsionPoints/NaturalPointMultiples/Variant48298d454f75ac50/PositiveOrderAndTorsion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticGeometry/EllipticCurves/TorsionPoints/NaturalPointMultiples/Variant48298d454f75ac50/PositiveOrderAndTorsion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TorsionPoints.NaturalPointMultiples.Variant48298d454f75ac50.PointMultipleRecursion`](../../../../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/TorsionPoints/NaturalPointMultiples/Variant48298d454f75ac50/PointMultipleRecursion.lean/index.md) — import line 19; pinned internal source present.
- `Folder.Arithmetic.EllipticCurve` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTorsion](../../../../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/TorsionPoints/NaturalPointMultiples/Variant48298d454f75ac50/PositiveOrderAndTorsion.lean/declarations/istorsion--eca3ab1c972f40dd809cf2ca.md) | 41 | `declaration-track:eca3ab1c972f40dd809cf2ca2623a4c3d92aa45a6ebf6d6fc02bb408e7257005` |
| 2 | `def` | [HasOrder](../../../../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/TorsionPoints/NaturalPointMultiples/Variant48298d454f75ac50/PositiveOrderAndTorsion.lean/declarations/hasorder--91f0b02e0fc7804d52f1e16d.md) | 47 | `declaration-track:91f0b02e0fc7804d52f1e16ddbe61119207dd48580b8a1a86f95edf11eac10ef` |
| 3 | `theorem` | [torsion_of_hasOrder](../../../../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/TorsionPoints/NaturalPointMultiples/Variant48298d454f75ac50/PositiveOrderAndTorsion.lean/declarations/torsion-of-hasorder--833859dab69a8276a308311b.md) | 55 | `result-track:833859dab69a8276a308311b481e548a65b3aa37a1db23a1b301543f924b2249` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
