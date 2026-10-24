# Verification target: GRWTSK.Algebra.CoeffMulMem.Variant40dbff57f000880593018d5e2fee58c99cfaa53a4ddb4d266629b7e0f36d55b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "538092722d54a2c56323be9a97912d664c7ab98f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CoeffMulMem/Variant40dbff57f000880593018d5e2fee58c99cfaa53a4ddb4d266629b7e0f36d55b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CoeffMulMem/Variant40dbff57f000880593018d5e2fee58c99cfaa53a4ddb4d266629b7e0f36d55b8.lean/index.md) · [Full source](../../../../mathematics/Algebra/CoeffMulMem/Variant40dbff57f000880593018d5e2fee58c99cfaa53a4ddb4d266629b7e0f36d55b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `538092722d54a2c56323be9a97912d664c7ab98f`.

Source path: `GRWTSK/Algebra/CoeffMulMem/Variant40dbff57f000880593018d5e2fee58c99cfaa53a4ddb4d266629b7e0f36d55b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CoeffMulMem/Variant40dbff57f000880593018d5e2fee58c99cfaa53a4ddb4d266629b7e0f36d55b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.BigOperators` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coeff_mul_mem_ideal_mul_ideal_of_coeff_mem_ideal](../../../../mathematics/Algebra/CoeffMulMem/Variant40dbff57f000880593018d5e2fee58c99cfaa53a4ddb4d266629b7e0f36d55b8.lean/declarations/coeff-mul-mem-ideal-mul-ideal-of-coeff-mem-ideal--b266f0c7a706d1a5cb22314a.md) | 48 | `result-track:b266f0c7a706d1a5cb22314a7a18296f6ee0194cbe77c8ddfb03e891113a28d8` |
| 2 | `theorem` | [coeff_mul_mem_ideal_mul_ideal_of_coeff_mem_ideal'](../../../../mathematics/Algebra/CoeffMulMem/Variant40dbff57f000880593018d5e2fee58c99cfaa53a4ddb4d266629b7e0f36d55b8.lean/declarations/coeff-mul-mem-ideal-mul-ideal-of-coeff-mem-ideal--a1ef7f746e1e6ff8f12cf8f3.md) | 55 | `result-track:a1ef7f746e1e6ff8f12cf8f3ba1e0f7623894cbbd8330f2b38030a2e8086551d` |
| 3 | `theorem` | [coeff_mul_mem_ideal_of_coeff_right_mem_ideal](../../../../mathematics/Algebra/CoeffMulMem/Variant40dbff57f000880593018d5e2fee58c99cfaa53a4ddb4d266629b7e0f36d55b8.lean/declarations/coeff-mul-mem-ideal-of-coeff-right-mem-ideal--aa5adc53804a00b920289c48.md) | 60 | `result-track:aa5adc53804a00b920289c4877b083c10ab776b8ecd8224a938ebfeba9bcc4ae` |
| 4 | `theorem` | [coeff_mul_mem_ideal_of_coeff_right_mem_ideal'](../../../../mathematics/Algebra/CoeffMulMem/Variant40dbff57f000880593018d5e2fee58c99cfaa53a4ddb4d266629b7e0f36d55b8.lean/declarations/coeff-mul-mem-ideal-of-coeff-right-mem-ideal--8dc50ba8ce518131b385bc7e.md) | 64 | `result-track:8dc50ba8ce518131b385bc7e5e7dccbb6e672050817e9566963c41656c7abb1a` |
| 5 | `theorem` | [coeff_mul_mem_ideal_of_coeff_left_mem_ideal](../../../../mathematics/Algebra/CoeffMulMem/Variant40dbff57f000880593018d5e2fee58c99cfaa53a4ddb4d266629b7e0f36d55b8.lean/declarations/coeff-mul-mem-ideal-of-coeff-left-mem-ideal--d0a575fa7e653f9cfde9e69c.md) | 70 | `result-track:d0a575fa7e653f9cfde9e69c25dd8af89ebb46d6e6ef92ea82516beb19363a8e` |
| 6 | `theorem` | [coeff_mul_mem_ideal_of_coeff_left_mem_ideal'](../../../../mathematics/Algebra/CoeffMulMem/Variant40dbff57f000880593018d5e2fee58c99cfaa53a4ddb4d266629b7e0f36d55b8.lean/declarations/coeff-mul-mem-ideal-of-coeff-left-mem-ideal--781937057f38cb0dbbf3fb7d.md) | 75 | `result-track:781937057f38cb0dbbf3fb7d9ed838d5d1f835d51c4f6687bff3e070d52a846e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
