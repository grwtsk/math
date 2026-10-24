# Verification target: GRWTSK.Algebra.UniversalAlgebra.WithBot.Variantd6f5de2b3e4f21b8911c316b43bc0fcabd7ad259d8a978bfb8662bfe1817a41e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7c9f9e56d90fdabc3697af65925d321b9809ca8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/WithBot/Variantd6f5de2b3e4f21b8911c316b43bc0fcabd7ad259d8a978bfb8662bfe1817a41e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variantd6f5de2b3e4f21b8911c316b43bc0fcabd7ad259d8a978bfb8662bfe1817a41e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variantd6f5de2b3e4f21b8911c316b43bc0fcabd7ad259d8a978bfb8662bfe1817a41e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7c9f9e56d90fdabc3697af65925d321b9809ca8`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/WithBot/Variantd6f5de2b3e4f21b8911c316b43bc0fcabd7ad259d8a978bfb8662bfe1817a41e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/WithBot/Variantd6f5de2b3e4f21b8911c316b43bc0fcabd7ad259d8a978bfb8662bfe1817a41e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Nat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Canonical` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.WithTop` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Nat` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variantd6f5de2b3e4f21b8911c316b43bc0fcabd7ad259d8a978bfb8662bfe1817a41e.lean/declarations/instance--52b0c28a268f5e6d02b420aa.md) | 30 | `declaration-track:52b0c28a268f5e6d02b420aaf211e9350832320ac321df4d3394f7e5d7cd67e2` |
| 2 | `theorem` | [add_eq_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variantd6f5de2b3e4f21b8911c316b43bc0fcabd7ad259d8a978bfb8662bfe1817a41e.lean/declarations/add-eq-zero-iff--c04bf3466eaf674f715e5ce0.md) | 34 | `result-track:c04bf3466eaf674f715e5ce0f6a500650930cf15679e49fcabdba51a7c09da71` |
| 3 | `theorem` | [add_eq_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variantd6f5de2b3e4f21b8911c316b43bc0fcabd7ad259d8a978bfb8662bfe1817a41e.lean/declarations/add-eq-one-iff--28063b10806a6b6062736345.md) | 41 | `result-track:28063b10806a6b606273634538c3914f6b28cd9cd815abd00320db1fa888794c` |
| 4 | `theorem` | [add_eq_two_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variantd6f5de2b3e4f21b8911c316b43bc0fcabd7ad259d8a978bfb8662bfe1817a41e.lean/declarations/add-eq-two-iff--71676cd1db2e13718c12b265.md) | 48 | `result-track:71676cd1db2e13718c12b26591d7247d6ca3e93d90318e05223a425bc11f00b1` |
| 5 | `theorem` | [add_eq_three_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variantd6f5de2b3e4f21b8911c316b43bc0fcabd7ad259d8a978bfb8662bfe1817a41e.lean/declarations/add-eq-three-iff--caa6709d71b1a51dedf04256.md) | 56 | `result-track:caa6709d71b1a51dedf042566dcdda649c7ab01c0dd4f1d110acbbd43fd4e607` |
| 6 | `theorem` | [coe_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variantd6f5de2b3e4f21b8911c316b43bc0fcabd7ad259d8a978bfb8662bfe1817a41e.lean/declarations/coe-nonneg--bb67ea69cc1d742d3d4cd87c.md) | 64 | `result-track:bb67ea69cc1d742d3d4cd87cc44d6ea5168836c24557354880d27dec20db0d66` |
| 7 | `theorem` | [lt_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variantd6f5de2b3e4f21b8911c316b43bc0fcabd7ad259d8a978bfb8662bfe1817a41e.lean/declarations/lt-zero-iff--8f3c90953c71800f5309cf5c.md) | 69 | `result-track:8f3c90953c71800f5309cf5c08e489c0c6cb72a05655cc4e8e65529450cd3d92` |
| 8 | `theorem` | [one_le_iff_zero_lt](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variantd6f5de2b3e4f21b8911c316b43bc0fcabd7ad259d8a978bfb8662bfe1817a41e.lean/declarations/one-le-iff-zero-lt--aed37ee75f10449723a55bcf.md) | 71 | `result-track:aed37ee75f10449723a55bcf7948edb0e743b32421aa4e172097ba5552e8c1ad` |
| 9 | `theorem` | [lt_one_iff_le_zero](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variantd6f5de2b3e4f21b8911c316b43bc0fcabd7ad259d8a978bfb8662bfe1817a41e.lean/declarations/lt-one-iff-le-zero--722b3d68bdad870b5c0f6e88.md) | 78 | `result-track:722b3d68bdad870b5c0f6e8836f8d7973c1b402867de647d55f6c2f8e583113f` |
| 10 | `theorem` | [add_one_le_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variantd6f5de2b3e4f21b8911c316b43bc0fcabd7ad259d8a978bfb8662bfe1817a41e.lean/declarations/add-one-le-of-lt--5c7e82ec15c0e419b5d9719f.md) | 81 | `result-track:5c7e82ec15c0e419b5d9719f96ecbe4bb417d2428c661becf404ce72b4288b4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
