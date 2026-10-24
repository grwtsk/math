# Verification target: GRWTSK.Algebra.Algebra.Variantb1bfd3996d2410f1f74494d05047c5e507d23d97c4d89fc71346bb6a32d3b5d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6de69cf046d690f871eb593798d59ee98827a67f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Algebra/Variantb1bfd3996d2410f1f74494d05047c5e507d23d97c4d89fc71346bb6a32d3b5d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Algebra/Variantb1bfd3996d2410f1f74494d05047c5e507d23d97c4d89fc71346bb6a32d3b5d9.lean/index.md) · [Full source](../../../../mathematics/Algebra/Algebra/Variantb1bfd3996d2410f1f74494d05047c5e507d23d97c4d89fc71346bb6a32d3b5d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6de69cf046d690f871eb593798d59ee98827a67f`.

Source path: `GRWTSK/Algebra/Algebra/Variantb1bfd3996d2410f1f74494d05047c5e507d23d97c4d89fc71346bb6a32d3b5d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Algebra/Variantb1bfd3996d2410f1f74494d05047c5e507d23d97c4d89fc71346bb6a32d3b5d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Artinian.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.Algebra.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IsIntegral.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isUnit_of_isIntegral_of_nonZeroDivisor](../../../../mathematics/Algebra/Algebra/Variantb1bfd3996d2410f1f74494d05047c5e507d23d97c4d89fc71346bb6a32d3b5d9.lean/declarations/isunit-of-isintegral-of-nonzerodivisor--8dae6eafeca120cab4e6e898.md) | 33 | `result-track:8dae6eafeca120cab4e6e8988c72bfd24abc21c653cde5a9d82c3995f604d50e` |
| 2 | `theorem` | [isUnit_iff_nonZeroDivisor_of_isIntegral](../../../../mathematics/Algebra/Algebra/Variantb1bfd3996d2410f1f74494d05047c5e507d23d97c4d89fc71346bb6a32d3b5d9.lean/declarations/isunit-iff-nonzerodivisor-of-isintegral--c45573916aaf43909a299279.md) | 44 | `result-track:c45573916aaf43909a2992791fe0bc569e76022fe0f648b98798c3015e0c9c06` |
| 3 | `theorem` | [isUnit_of_nonZeroDivisor_of_isIntegral'](../../../../mathematics/Algebra/Algebra/Variantb1bfd3996d2410f1f74494d05047c5e507d23d97c4d89fc71346bb6a32d3b5d9.lean/declarations/isunit-of-nonzerodivisor-of-isintegral--b626baa7a337679922da3ed3.md) | 50 | `result-track:b626baa7a337679922da3ed3c8f71ccb19bbe6d1a72e9550a8a25a74c6dabd12` |
| 4 | `theorem` | [isUnit_iff_nonZeroDivisor_of_isIntegral'](../../../../mathematics/Algebra/Algebra/Variantb1bfd3996d2410f1f74494d05047c5e507d23d97c4d89fc71346bb6a32d3b5d9.lean/declarations/isunit-iff-nonzerodivisor-of-isintegral--f5d325a0131287de51196a00.md) | 55 | `result-track:f5d325a0131287de51196a00520740f13385bbede0b7dff6d6ed15a4ccd140c3` |
| 5 | `theorem` | [isUnit_submonoid_eq_of_isIntegral](../../../../mathematics/Algebra/Algebra/Variantb1bfd3996d2410f1f74494d05047c5e507d23d97c4d89fc71346bb6a32d3b5d9.lean/declarations/isunit-submonoid-eq-of-isintegral--94847a7634df6986b16bc184.md) | 59 | `result-track:94847a7634df6986b16bc1846d30514d3c34f78556175070795b9a42ef2651e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
