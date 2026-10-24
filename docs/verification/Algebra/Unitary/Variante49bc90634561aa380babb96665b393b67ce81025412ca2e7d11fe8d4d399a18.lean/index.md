# Verification target: GRWTSK.Algebra.Unitary.Variante49bc90634561aa380babb96665b393b67ce81025412ca2e7d11fe8d4d399a18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "666b673cbee326b8e867e0000911943e7f9a2de4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Unitary/Variante49bc90634561aa380babb96665b393b67ce81025412ca2e7d11fe8d4d399a18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Unitary/Variante49bc90634561aa380babb96665b393b67ce81025412ca2e7d11fe8d4d399a18.lean/index.md) · [Full source](../../../../mathematics/Algebra/Unitary/Variante49bc90634561aa380babb96665b393b67ce81025412ca2e7d11fe8d4d399a18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `666b673cbee326b8e867e0000911943e7f9a2de4`.

Source path: `GRWTSK/Algebra/Unitary/Variante49bc90634561aa380babb96665b393b67ce81025412ca2e7d11fe8d4d399a18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Unitary/Variante49bc90634561aa380babb96665b393b67ce81025412ca2e7d11fe8d4d399a18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Peel` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unital` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cfc_unitary_iff](../../../../mathematics/Algebra/Unitary/Variante49bc90634561aa380babb96665b393b67ce81025412ca2e7d11fe8d4d399a18.lean/declarations/cfc-unitary-iff--643508296096c88ee3af1c8a.md) | 33 | `result-track:643508296096c88ee3af1c8a3029f3982ee2c7c254891a575dd5341b8408836c` |
| 2 | `lemma` | [unitary_iff_isStarNormal_and_spectrum_subset_unitary](../../../../mathematics/Algebra/Unitary/Variante49bc90634561aa380babb96665b393b67ce81025412ca2e7d11fe8d4d399a18.lean/declarations/unitary-iff-isstarnormal-and-spectrum-subset-unitary--935ba284c352bfc4693c52e0.md) | 48 | `result-track:935ba284c352bfc4693c52e0fa89756b7ef5ba0eecc9ac75387f6e9e39b3937f` |
| 3 | `lemma` | [mem_unitary_of_spectrum_subset_unitary](../../../../mathematics/Algebra/Unitary/Variante49bc90634561aa380babb96665b393b67ce81025412ca2e7d11fe8d4d399a18.lean/declarations/mem-unitary-of-spectrum-subset-unitary--81b09ee9785004aa59d563a6.md) | 56 | `result-track:81b09ee9785004aa59d563a6a3110e247083ca37b4ef562d3dedb49c1e5da531` |
| 4 | `lemma` | [spectrum_subset_unitary_of_mem_unitary](../../../../mathematics/Algebra/Unitary/Variante49bc90634561aa380babb96665b393b67ce81025412ca2e7d11fe8d4d399a18.lean/declarations/spectrum-subset-unitary-of-mem-unitary--bce4f9d59241fa590022f011.md) | 60 | `result-track:bce4f9d59241fa590022f01129775249e1ba41f58f18531cc2047b6fc8ca2f05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
