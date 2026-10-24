# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pi.Variantf04b5a2bd3edca5b3c87eeb127c73fe45582be14b8fdb0a4af22d1bef37572d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f6fa66fd318652ae0ae95776bd501336f2f4e6e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variantf04b5a2bd3edca5b3c87eeb127c73fe45582be14b8fdb0a4af22d1bef37572d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf04b5a2bd3edca5b3c87eeb127c73fe45582be14b8fdb0a4af22d1bef37572d2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf04b5a2bd3edca5b3c87eeb127c73fe45582be14b8fdb0a4af22d1bef37572d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f6fa66fd318652ae0ae95776bd501336f2f4e6e`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pi/Variantf04b5a2bd3edca5b3c87eeb127c73fe45582be14b8fdb0a4af22d1bef37572d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pi/Variantf04b5a2bd3edca5b3c87eeb127c73fe45582be14b8fdb0a4af22d1bef37572d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pi](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf04b5a2bd3edca5b3c87eeb127c73fe45582be14b8fdb0a4af22d1bef37572d2.lean/declarations/pi--00ef73034eab133a24529438.md) | 28 | `declaration-track:00ef73034eab133a24529438237072d61c65913b9b3c1b7d192a6135f7cf7ddf` |
| 2 | `lemma` | [mem_pi](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf04b5a2bd3edca5b3c87eeb127c73fe45582be14b8fdb0a4af22d1bef37572d2.lean/declarations/mem-pi--03f03a7800af03d20f040707.md) | 33 | `result-track:03f03a7800af03d20f0407079c0b63cd84bbca4cc2484e0f03e1d80871d3f4eb` |
| 3 | `lemma` | [pi_toSubmodule](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf04b5a2bd3edca5b3c87eeb127c73fe45582be14b8fdb0a4af22d1bef37572d2.lean/declarations/pi-tosubmodule--3fb37b099c032179e00d7061.md) | 36 | `result-track:3fb37b099c032179e00d70611ddef9e2b21935df8d6877427c9d2765cc266040` |
| 4 | `lemma` | [pi_top](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf04b5a2bd3edca5b3c87eeb127c73fe45582be14b8fdb0a4af22d1bef37572d2.lean/declarations/pi-top--22aa108a2cff3a801aac6514.md) | 39 | `result-track:22aa108a2cff3a801aac65145839f70f6fb656fc169eb9c76e68f58774b0bb06` |
| 5 | `lemma` | [pi_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf04b5a2bd3edca5b3c87eeb127c73fe45582be14b8fdb0a4af22d1bef37572d2.lean/declarations/pi-mono--1e82f8dd7370f8ebefaf051d.md) | 42 | `result-track:1e82f8dd7370f8ebefaf051d37cfb11d56f3ed47d43b27b20142a9af9a1a100a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
