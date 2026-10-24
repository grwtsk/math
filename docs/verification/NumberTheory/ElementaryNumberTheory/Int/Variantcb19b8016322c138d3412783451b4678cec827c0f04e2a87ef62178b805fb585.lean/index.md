# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Int.Variantcb19b8016322c138d3412783451b4678cec827c0f04e2a87ef62178b805fb585

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a8f4f3eab8f3ff4c6d72508094bcccfee87661f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Int/Variantcb19b8016322c138d3412783451b4678cec827c0f04e2a87ef62178b805fb585.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Int/Variantcb19b8016322c138d3412783451b4678cec827c0f04e2a87ef62178b805fb585.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Int/Variantcb19b8016322c138d3412783451b4678cec827c0f04e2a87ef62178b805fb585.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a8f4f3eab8f3ff4c6d72508094bcccfee87661f`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Int/Variantcb19b8016322c138d3412783451b4678cec827c0f04e2a87ef62178b805fb585.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Int/Variantcb19b8016322c138d3412783451b4678cec827c0f04e2a87ef62178b805fb585.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Int.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Units` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_iff_prime_int](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Int/Variantcb19b8016322c138d3412783451b4678cec827c0f04e2a87ef62178b805fb585.lean/declarations/prime-iff-prime-int--28b3ee5c72827ad6ce607bbc.md) | 28 | `result-track:28b3ee5c72827ad6ce607bbce8197f6b288f6efaaaae9301070e578988993038` |
| 2 | `lemma` | [Prime.pow_inj](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Int/Variantcb19b8016322c138d3412783451b4678cec827c0f04e2a87ef62178b805fb585.lean/declarations/prime-pow-inj--70cc1f6945d8d936c4798b08.md) | 41 | `result-track:70cc1f6945d8d936c4798b0850e7201780916b67a86ba38a7240d63722b5d45b` |
| 3 | `theorem` | [prime_ofNat_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Int/Variantcb19b8016322c138d3412783451b4678cec827c0f04e2a87ef62178b805fb585.lean/declarations/prime-ofnat-iff--371339eab5be8344e41c974f.md) | 52 | `result-track:371339eab5be8344e41c974f3702a7a35adbe1701d5844b1ce8bf646c156bde4` |
| 4 | `theorem` | [prime_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Int/Variantcb19b8016322c138d3412783451b4678cec827c0f04e2a87ef62178b805fb585.lean/declarations/prime-two--3d1ed29abe8349df61434aa0.md) | 56 | `result-track:3d1ed29abe8349df61434aa0d1a6a80b17862c3637b6356046a0c305593b7a47` |
| 5 | `theorem` | [prime_three](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Int/Variantcb19b8016322c138d3412783451b4678cec827c0f04e2a87ef62178b805fb585.lean/declarations/prime-three--00d0de980e4b22a4476fcaae.md) | 59 | `result-track:00d0de980e4b22a4476fcaaeadfa707643be4c11e0d55f8f93f509e90e03a948` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
