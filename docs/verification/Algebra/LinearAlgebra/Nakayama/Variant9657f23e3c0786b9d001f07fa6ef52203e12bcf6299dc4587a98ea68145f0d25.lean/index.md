# Verification target: GRWTSK.Algebra.LinearAlgebra.Nakayama.Variant9657f23e3c0786b9d001f07fa6ef52203e12bcf6299dc4587a98ea68145f0d25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec8db4bd1a0ef06a7c1f121feca09cd73e36222e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Nakayama/Variant9657f23e3c0786b9d001f07fa6ef52203e12bcf6299dc4587a98ea68145f0d25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Nakayama/Variant9657f23e3c0786b9d001f07fa6ef52203e12bcf6299dc4587a98ea68145f0d25.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Nakayama/Variant9657f23e3c0786b9d001f07fa6ef52203e12bcf6299dc4587a98ea68145f0d25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec8db4bd1a0ef06a7c1f121feca09cd73e36222e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Nakayama/Variant9657f23e3c0786b9d001f07fa6ef52203e12bcf6299dc4587a98ea68145f0d25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Nakayama/Variant9657f23e3c0786b9d001f07fa6ef52203e12bcf6299dc4587a98ea68145f0d25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.JacobsonIdeal` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_smul_of_le_smul_of_le_jacobson](../../../../../mathematics/Algebra/LinearAlgebra/Nakayama/Variant9657f23e3c0786b9d001f07fa6ef52203e12bcf6299dc4587a98ea68145f0d25.lean/declarations/eq-smul-of-le-smul-of-le-jacobson--bec6451dec2bfbfcd891b296.md) | 60 | `result-track:bec6451dec2bfbfcd891b29647b7d56f5af3d91c87c6ece6d9fc64189a5bfe5c` |
| 2 | `theorem` | [eq_bot_of_le_smul_of_le_jacobson_bot](../../../../../mathematics/Algebra/LinearAlgebra/Nakayama/Variant9657f23e3c0786b9d001f07fa6ef52203e12bcf6299dc4587a98ea68145f0d25.lean/declarations/eq-bot-of-le-smul-of-le-jacobson-bot--87a0f3010e0ea18e5b985d80.md) | 76 | `result-track:87a0f3010e0ea18e5b985d80cc50a1e9306ab3dfcb37b0e00cb869795cbb29eb` |
| 3 | `theorem` | [smul_sup_eq_smul_sup_of_le_smul_of_le_jacobson](../../../../../mathematics/Algebra/LinearAlgebra/Nakayama/Variant9657f23e3c0786b9d001f07fa6ef52203e12bcf6299dc4587a98ea68145f0d25.lean/declarations/smul-sup-eq-smul-sup-of-le-smul-of-le-jacobson--0dacf2f4d435dcda780e518d.md) | 84 | `result-track:0dacf2f4d435dcda780e518d757ece28342fd3f78618cec6c89a515668795a3c` |
| 4 | `theorem` | [smul_sup_le_of_le_smul_of_le_jacobson_bot](../../../../../mathematics/Algebra/LinearAlgebra/Nakayama/Variant9657f23e3c0786b9d001f07fa6ef52203e12bcf6299dc4587a98ea68145f0d25.lean/declarations/smul-sup-le-of-le-smul-of-le-jacobson-bot--d4b308133ba491d26d931099.md) | 104 | `result-track:d4b308133ba491d26d931099eebf0dbd8cff911c8dd48824e55d9c35a9943de9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
