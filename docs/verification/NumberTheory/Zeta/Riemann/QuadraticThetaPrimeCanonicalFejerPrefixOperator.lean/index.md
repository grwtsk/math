# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeCanonicalFejerPrefixOperator

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4614a32cf62ff290f3639ab1e2cac2ed920079a9",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeCanonicalFejerPrefixOperator.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeCanonicalFejerPrefixOperator.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeCanonicalFejerPrefixOperator.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4614a32cf62ff290f3639ab1e2cac2ed920079a9`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeCanonicalFejerPrefixOperator.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeCanonicalFejerPrefixOperator.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularPropagationCorrection`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularPropagationCorrection.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedSampledTriangularKernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeCanonicalFejerPrefixOperator.lean/declarations/signedsampledtriangularkernel--1d86821d87f2d11bbefeb599.md) | 15 | `declaration-track:1d86821d87f2d11bbefeb5997192ab3548fc4c16a9e9c068ac213f56e59666f5` |
| 2 | `def` | [canonicalFejerPrefixWeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeCanonicalFejerPrefixOperator.lean/declarations/canonicalfejerprefixweight--04e26f07d9cc1957f2aa4aef.md) | 23 | `declaration-track:04e26f07d9cc1957f2aa4aef579c18a4515ad738d113008234848aa842721959` |
| 3 | `def` | [canonicalFejerPrimeMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeCanonicalFejerPrefixOperator.lean/declarations/canonicalfejerprimemass--9ae6c5ce2cbff4d7fdd5db77.md) | 30 | `declaration-track:9ae6c5ce2cbff4d7fdd5db77993da7f3b79f5b8f1fd832a16bbf60daaa523597` |
| 4 | `def` | [canonicalFejerCountingMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeCanonicalFejerPrefixOperator.lean/declarations/canonicalfejercountingmass--e27f5a3bb07f580b762992e5.md) | 37 | `declaration-track:e27f5a3bb07f580b762992e5e2aec50a0487f433131601477778ec2ccbe87ca8` |
| 5 | `def` | [canonicalPrimePrefixFejerOperator](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeCanonicalFejerPrefixOperator.lean/declarations/canonicalprimeprefixfejeroperator--6fef9a0a98c03c79e438572c.md) | 43 | `declaration-track:6fef9a0a98c03c79e438572c65397ba89fb88165f2097928524fcbfd71e23f2e` |
| 6 | `theorem` | [canonicalPrimePrefixFejerOperator_value](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeCanonicalFejerPrefixOperator.lean/declarations/canonicalprimeprefixfejeroperator-value--6f296c1e02128fe397fc67ce.md) | 51 | `result-track:6f296c1e02128fe397fc67ceb988b243fa4790a3a996d059eee9b43f9ecdb4f1` |
| 7 | `def` | [CanonicalPrimePrefixFejerDiscrepancyRepresentation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeCanonicalFejerPrefixOperator.lean/declarations/canonicalprimeprefixfejerdiscrepancyrepresentation--0524afd6f6a7ca474a59c172.md) | 63 | `declaration-track:0524afd6f6a7ca474a59c1721625e8a40452d36b2a0eb2beb8b99f026a4187d6` |
| 8 | `theorem` | [canonicalPrimePrefixFejerDiscrepancyRepresentation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeCanonicalFejerPrefixOperator.lean/declarations/canonicalprimeprefixfejerdiscrepancyrepresentation--3ddfb57746e6002da9b01751.md) | 71 | `result-track:3ddfb57746e6002da9b0175160a52f2954e74544aa33924968887b4584486afd` |
| 9 | `theorem` | [canonicalPrimePrefixFejerOperator_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeCanonicalFejerPrefixOperator.lean/declarations/canonicalprimeprefixfejeroperator-error--6a9e3e4428d0a4ba98c4630b.md) | 77 | `result-track:6a9e3e4428d0a4ba98c4630b42da5c93555ffe9ffa88d01312552e57db41eb7c` |
| 10 | `def` | [CanonicalPrimePrefixFejerTailComparison](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeCanonicalFejerPrefixOperator.lean/declarations/canonicalprimeprefixfejertailcomparison--ee02907d109de2843f03f890.md) | 86 | `declaration-track:ee02907d109de2843f03f890c4c5a84d312f4d69a338e5dde2173d96affb1730` |
| 11 | `structure` | [CanonicalPrimePrefixFejerAccepted](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeCanonicalFejerPrefixOperator.lean/declarations/canonicalprimeprefixfejeraccepted--dbea5f3a1646e4cdefac3513.md) | 92 | `declaration-track:dbea5f3a1646e4cdefac3513723bca6ea778af8bd51e1be16d279624b3ff9284` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
