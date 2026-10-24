# Verification target: GRWTSK.Algebra.LinearAlgebra.EngelSubalgebra.Variantda877733cf8e00c572624c1d28e350d3bb3cca65e34ea5beaa4129b3b517e00d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9230d9d69d43e324d4333f53089ac3833ae76f5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EngelSubalgebra/Variantda877733cf8e00c572624c1d28e350d3bb3cca65e34ea5beaa4129b3b517e00d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Variantda877733cf8e00c572624c1d28e350d3bb3cca65e34ea5beaa4129b3b517e00d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Variantda877733cf8e00c572624c1d28e350d3bb3cca65e34ea5beaa4129b3b517e00d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9230d9d69d43e324d4333f53089ac3833ae76f5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EngelSubalgebra/Variantda877733cf8e00c572624c1d28e350d3bb3cca65e34ea5beaa4129b3b517e00d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EngelSubalgebra/Variantda877733cf8e00c572624c1d28e350d3bb3cca65e34ea5beaa4129b3b517e00d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Engel` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Normalizer` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Subalgebra` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NatAntidiagonal` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [engel](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Variantda877733cf8e00c572624c1d28e350d3bb3cca65e34ea5beaa4129b3b517e00d.lean/declarations/engel--349be9738d4b38f763d64e21.md) | 56 | `declaration-track:349be9738d4b38f763d64e21287169d2c9143f14ba849d790176dd0e59a8ab86` |
| 2 | `lemma` | [mem_engel_iff](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Variantda877733cf8e00c572624c1d28e350d3bb3cca65e34ea5beaa4129b3b517e00d.lean/declarations/mem-engel-iff--ec258b1c68205d54ac965d35.md) | 70 | `result-track:ec258b1c68205d54ac965d3585d6064e9eda65e1315a1b79d7d48000b65a2304` |
| 3 | `lemma` | [self_mem_engel](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Variantda877733cf8e00c572624c1d28e350d3bb3cca65e34ea5beaa4129b3b517e00d.lean/declarations/self-mem-engel--57d1f15d7c4ca56a3fda63ec.md) | 74 | `result-track:57d1f15d7c4ca56a3fda63ec0276ee75146965cff33fad69ea2e64a2fa569ceb` |
| 4 | `lemma` | [engel_zero](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Variantda877733cf8e00c572624c1d28e350d3bb3cca65e34ea5beaa4129b3b517e00d.lean/declarations/engel-zero--f2b1b8194c7ab56188058b84.md) | 79 | `result-track:f2b1b8194c7ab56188058b84e77cd8de783ef825dff1579734889ab38f9d743d` |
| 5 | `lemma` | [normalizer_engel](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Variantda877733cf8e00c572624c1d28e350d3bb3cca65e34ea5beaa4129b3b517e00d.lean/declarations/normalizer-engel--c5cdebd7732d073ff1e7be86.md) | 91 | `result-track:c5cdebd7732d073ff1e7be86f860e7e94c5a08a123c89a9fb6332a551ac50bfe` |
| 6 | `lemma` | [normalizer_eq_self_of_engel_le](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Variantda877733cf8e00c572624c1d28e350d3bb3cca65e34ea5beaa4129b3b517e00d.lean/declarations/normalizer-eq-self-of-engel-le--62fcfe9f85623633e924d3ae.md) | 110 | `result-track:62fcfe9f85623633e924d3aee3163ed88023fa0fb935b528871e86d07ce7699b` |
| 7 | `lemma` | [isNilpotent_of_forall_le_engel](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Variantda877733cf8e00c572624c1d28e350d3bb3cca65e34ea5beaa4129b3b517e00d.lean/declarations/isnilpotent-of-forall-le-engel--5ed8c53b327e3fada7032ab8.md) | 152 | `result-track:5ed8c53b327e3fada7032ab8615bb19b34191a5c29998f8b2945cd18199d2f73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
