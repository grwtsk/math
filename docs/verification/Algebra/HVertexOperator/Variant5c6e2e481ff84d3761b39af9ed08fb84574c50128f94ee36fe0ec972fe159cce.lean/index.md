# Verification target: GRWTSK.Algebra.HVertexOperator.Variant5c6e2e481ff84d3761b39af9ed08fb84574c50128f94ee36fe0ec972fe159cce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2464af51f194e696106837c53b1a3c142e35effe",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/HVertexOperator/Variant5c6e2e481ff84d3761b39af9ed08fb84574c50128f94ee36fe0ec972fe159cce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/HVertexOperator/Variant5c6e2e481ff84d3761b39af9ed08fb84574c50128f94ee36fe0ec972fe159cce.lean/index.md) · [Full source](../../../../mathematics/Algebra/HVertexOperator/Variant5c6e2e481ff84d3761b39af9ed08fb84574c50128f94ee36fe0ec972fe159cce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2464af51f194e696106837c53b1a3c142e35effe`.

Source path: `GRWTSK/Algebra/HVertexOperator/Variant5c6e2e481ff84d3761b39af9ed08fb84574c50128f94ee36fe0ec972fe159cce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/HVertexOperator/Variant5c6e2e481ff84d3761b39af9ed08fb84574c50128f94ee36fe0ec972fe159cce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.HahnSeries.Multiplication` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HVertexOperator](../../../../mathematics/Algebra/HVertexOperator/Variant5c6e2e481ff84d3761b39af9ed08fb84574c50128f94ee36fe0ec972fe159cce.lean/declarations/hvertexoperator--1e88242585d3038dc640c9a6.md) | 42 | `declaration-track:1e88242585d3038dc640c9a67cea31ddc637cec5e917a857331c3a915d2ca372` |
| 2 | `theorem` | [ext](../../../../mathematics/Algebra/HVertexOperator/Variant5c6e2e481ff84d3761b39af9ed08fb84574c50128f94ee36fe0ec972fe159cce.lean/declarations/ext--f4cbc2490901a3ff087164d2.md) | 53 | `result-track:f4cbc2490901a3ff087164d2bd60c0aebd6950cefb7e57cfd70226ad8e6c601f` |
| 3 | `def` | [coeff](../../../../mathematics/Algebra/HVertexOperator/Variant5c6e2e481ff84d3761b39af9ed08fb84574c50128f94ee36fe0ec972fe159cce.lean/declarations/coeff--6cc013f8c2eec8b3333abac5.md) | 59 | `declaration-track:6cc013f8c2eec8b3333abac5f872a73d6e9144e711e082493902b3aa1780f055` |
| 4 | `theorem` | [coeff_isPWOsupport](../../../../mathematics/Algebra/HVertexOperator/Variant5c6e2e481ff84d3761b39af9ed08fb84574c50128f94ee36fe0ec972fe159cce.lean/declarations/coeff-ispwosupport--c25bd7fcef133081f16d9bc8.md) | 65 | `result-track:c25bd7fcef133081f16d9bc85f3c21e8c557410b3f4b9690c3eb5fb1e55bcf46` |
| 5 | `theorem` | [coeff_inj](../../../../mathematics/Algebra/HVertexOperator/Variant5c6e2e481ff84d3761b39af9ed08fb84574c50128f94ee36fe0ec972fe159cce.lean/declarations/coeff-inj--0a7e0d77528ae650bb481824.md) | 70 | `result-track:0a7e0d77528ae650bb48182413defafa098da5a3d9c94abeaaec60dab79f7b4c` |
| 6 | `def` | [of_coeff](../../../../mathematics/Algebra/HVertexOperator/Variant5c6e2e481ff84d3761b39af9ed08fb84574c50128f94ee36fe0ec972fe159cce.lean/declarations/of-coeff--f0ba898c660f0fdc8366138a.md) | 78 | `declaration-track:f0ba898c660f0fdc8366138ad207a66188b24828e6d43b29f7d4b9cd66983651` |
| 7 | `theorem` | [coeff_add](../../../../mathematics/Algebra/HVertexOperator/Variant5c6e2e481ff84d3761b39af9ed08fb84574c50128f94ee36fe0ec972fe159cce.lean/declarations/coeff-add--df832de868d11db43abdb18e.md) | 85 | `result-track:df832de868d11db43abdb18e0331f2a90a8cc71c3866c8504720dda023c5148e` |
| 8 | `theorem` | [coeff_smul](../../../../mathematics/Algebra/HVertexOperator/Variant5c6e2e481ff84d3761b39af9ed08fb84574c50128f94ee36fe0ec972fe159cce.lean/declarations/coeff-smul--046e02459f274ddd94a93fa2.md) | 92 | `result-track:046e02459f274ddd94a93fa26ef4ea2c52939eb1fb868a3078faca11ab0c7ac3` |
| 9 | `def` | [compHahnSeries](../../../../mathematics/Algebra/HVertexOperator/Variant5c6e2e481ff84d3761b39af9ed08fb84574c50128f94ee36fe0ec972fe159cce.lean/declarations/comphahnseries--dbf8b4fcff747754a7cbb2ec.md) | 111 | `declaration-track:dbf8b4fcff747754a7cbb2ec41068a7eaa3c52248f969441a7e511a5b5b2cddd` |
| 10 | `theorem` | [compHahnSeries_add](../../../../mathematics/Algebra/HVertexOperator/Variant5c6e2e481ff84d3761b39af9ed08fb84574c50128f94ee36fe0ec972fe159cce.lean/declarations/comphahnseries-add--e7053fec9c848a9f81a62901.md) | 122 | `result-track:e7053fec9c848a9f81a629019385cc59200c62a4166166bb647bd8367576e79e` |
| 11 | `theorem` | [compHahnSeries_smul](../../../../mathematics/Algebra/HVertexOperator/Variant5c6e2e481ff84d3761b39af9ed08fb84574c50128f94ee36fe0ec972fe159cce.lean/declarations/comphahnseries-smul--8d65030ed20f51213cb8ab5d.md) | 129 | `result-track:8d65030ed20f51213cb8ab5dbad229ee765c8cf06dde20fba07f94823cafc72e` |
| 12 | `def` | [comp](../../../../mathematics/Algebra/HVertexOperator/Variant5c6e2e481ff84d3761b39af9ed08fb84574c50128f94ee36fe0ec972fe159cce.lean/declarations/comp--7ea115d617497214b3253626.md) | 137 | `declaration-track:7ea115d617497214b32536266d927ede1578a8100aea65f20fbd792ba70b8210` |
| 13 | `theorem` | [coeff_comp](../../../../mathematics/Algebra/HVertexOperator/Variant5c6e2e481ff84d3761b39af9ed08fb84574c50128f94ee36fe0ec972fe159cce.lean/declarations/coeff-comp--2da78028e49af6b02e2bb99a.md) | 151 | `result-track:2da78028e49af6b02e2bb99a1b12af10e46b46a2b1ffd8abbd9c9bdb0eba6145` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
