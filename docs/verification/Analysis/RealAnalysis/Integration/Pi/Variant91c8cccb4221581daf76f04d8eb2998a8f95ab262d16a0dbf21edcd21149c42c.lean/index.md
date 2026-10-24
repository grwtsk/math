# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Pi.Variant91c8cccb4221581daf76f04d8eb2998a8f95ab262d16a0dbf21edcd21149c42c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a84b5a464423294b59a3a504171c295a97a42a2",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Pi/Variant91c8cccb4221581daf76f04d8eb2998a8f95ab262d16a0dbf21edcd21149c42c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant91c8cccb4221581daf76f04d8eb2998a8f95ab262d16a0dbf21edcd21149c42c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant91c8cccb4221581daf76f04d8eb2998a8f95ab262d16a0dbf21edcd21149c42c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a84b5a464423294b59a3a504171c295a97a42a2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Pi/Variant91c8cccb4221581daf76f04d8eb2998a8f95ab262d16a0dbf21edcd21149c42c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Pi/Variant91c8cccb4221581daf76f04d8eb2998a8f95ab262d16a0dbf21edcd21149c42c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fin_nat_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant91c8cccb4221581daf76f04d8eb2998a8f95ab262d16a0dbf21edcd21149c42c.lean/declarations/fin-nat-prod--bb167621eb27e9fb92160628.md) | 28 | `result-track:bb167621eb27e9fb9216062862e218244fed896bd4ac63e02eaaf825f8ffa638` |
| 2 | `theorem` | [fintype_prod_dep](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant91c8cccb4221581daf76f04d8eb2998a8f95ab262d16a0dbf21edcd21149c42c.lean/declarations/fintype-prod-dep--033d1faac12c3f1cb216b6a3.md) | 47 | `result-track:033d1faac12c3f1cb216b6a379ea9367699fee104f3e1e25f7b71a9763185c38` |
| 3 | `theorem` | [fintype_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant91c8cccb4221581daf76f04d8eb2998a8f95ab262d16a0dbf21edcd21149c42c.lean/declarations/fintype-prod--d68b1f9ed6c8c51d653cd7a9.md) | 60 | `result-track:d68b1f9ed6c8c51d653cd7a93e199e11caad07312eade0c94df8687746a59562` |
| 4 | `theorem` | [integral_fin_nat_prod_eq_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant91c8cccb4221581daf76f04d8eb2998a8f95ab262d16a0dbf21edcd21149c42c.lean/declarations/integral-fin-nat-prod-eq-prod--f00362b715a931e7edb5a1e0.md) | 71 | `result-track:f00362b715a931e7edb5a1e038dc6b3a174246d9d2d16aa069fabf3d6766922d` |
| 5 | `theorem` | [integral_fintype_prod_eq_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant91c8cccb4221581daf76f04d8eb2998a8f95ab262d16a0dbf21edcd21149c42c.lean/declarations/integral-fintype-prod-eq-prod--3fcef6399d42e9338018219d.md) | 92 | `result-track:3fcef6399d42e9338018219d3361de9538cc10dbd8324a5b6b2b26171091d2ee` |
| 6 | `theorem` | [integral_fintype_prod_eq_pow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant91c8cccb4221581daf76f04d8eb2998a8f95ab262d16a0dbf21edcd21149c42c.lean/declarations/integral-fintype-prod-eq-pow--32bf2338ccfe26a9ff77706d.md) | 100 | `result-track:32bf2338ccfe26a9ff77706d86785eb81f1b6a1393209541ed6f6de4a85b2bf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
