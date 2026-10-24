# Verification target: GRWTSK.Analysis.ComplexAnalysis.QuotientOrder.Varianta3d79655fab23a4d810463ffea02bbc2ad1591ff050082de32d90b139446adb9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb75c2facd32dd8d1dbdf1da32407db24d683189",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/QuotientOrder/Varianta3d79655fab23a4d810463ffea02bbc2ad1591ff050082de32d90b139446adb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/QuotientOrder/Varianta3d79655fab23a4d810463ffea02bbc2ad1591ff050082de32d90b139446adb9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/QuotientOrder/Varianta3d79655fab23a4d810463ffea02bbc2ad1591ff050082de32d90b139446adb9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb75c2facd32dd8d1dbdf1da32407db24d683189`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/QuotientOrder/Varianta3d79655fab23a4d810463ffea02bbc2ad1591ff050082de32d90b139446adb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/QuotientOrder/Varianta3d79655fab23a4d810463ffea02bbc2ad1591ff050082de32d90b139446adb9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Meromorphic.Order` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [denominator_order](../../../../../mathematics/Analysis/ComplexAnalysis/QuotientOrder/Varianta3d79655fab23a4d810463ffea02bbc2ad1591ff050082de32d90b139446adb9.lean/declarations/denominator-order--672929a98303259deffb8633.md) | 20 | `result-track:672929a98303259deffb8633ff0f3f1515615b11cc92aa34402565fa3c201913` |
| 2 | `theorem` | [reduced_quotient_meromorphic_order](../../../../../mathematics/Analysis/ComplexAnalysis/QuotientOrder/Varianta3d79655fab23a4d810463ffea02bbc2ad1591ff050082de32d90b139446adb9.lean/declarations/reduced-quotient-meromorphic-order--2d07689c0f2ee270d07e1d6e.md) | 30 | `result-track:2d07689c0f2ee270d07e1d6ed2903f2d0afb3592ff6b82d38d0af695807fbfa8` |
| 3 | `theorem` | [reduced_quotient_analytic_and_order](../../../../../mathematics/Analysis/ComplexAnalysis/QuotientOrder/Varianta3d79655fab23a4d810463ffea02bbc2ad1591ff050082de32d90b139446adb9.lean/declarations/reduced-quotient-analytic-and-order--404c8e455d453f913e28656b.md) | 44 | `result-track:404c8e455d453f913e28656b5af9008f5d4469be6025ec2aafeeb14af404b80b` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/QuotientOrder/Varianta3d79655fab23a4d810463ffea02bbc2ad1591ff050082de32d90b139446adb9.lean/declarations/example--220fcf768b5947bc44cd7659.md) | 66 | `declaration-track:220fcf768b5947bc44cd765999b1617b20f0f078091f70c614962cd3d5c98029` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/QuotientOrder/Varianta3d79655fab23a4d810463ffea02bbc2ad1591ff050082de32d90b139446adb9.lean/declarations/example--9c47514bd118a0c3a28e8b37.md) | 69 | `declaration-track:9c47514bd118a0c3a28e8b375afdc8add31a1f140d03f8819051c53ada259488` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/QuotientOrder/Varianta3d79655fab23a4d810463ffea02bbc2ad1591ff050082de32d90b139446adb9.lean/declarations/example--25e4b63ba572b34eb119c552.md) | 76 | `declaration-track:25e4b63ba572b34eb119c552057367fcba7477c2434854778cabbe409c49d12d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
