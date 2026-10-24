# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.Int.Variantf23c7aeaaf809ccf65f431f19fdea0177af65571f850587700589981924747ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f7b0d66c139c0c4b1c15cc192f850ce3b48edf0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Int/Variantf23c7aeaaf809ccf65f431f19fdea0177af65571f850587700589981924747ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Int/Variantf23c7aeaaf809ccf65f431f19fdea0177af65571f850587700589981924747ca.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Int/Variantf23c7aeaaf809ccf65f431f19fdea0177af65571f850587700589981924747ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f7b0d66c139c0c4b1c15cc192f850ce3b48edf0`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Int/Variantf23c7aeaaf809ccf65f431f19fdea0177af65571f850587700589981924747ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Int/Variantf23c7aeaaf809ccf65f431f19fdea0177af65571f850587700589981924747ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Harmonic.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicNumbers` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [harmonic_pos](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Int/Variantf23c7aeaaf809ccf65f431f19fdea0177af65571f850587700589981924747ca.lean/declarations/harmonic-pos--38de9e02105ef049cd166fe9.md) | 28 | `result-track:38de9e02105ef049cd166fe97b9837f0768e7ee93ebe2fe257695cdc9f8f219e` |
| 2 | `theorem` | [padicValRat_two_harmonic](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Int/Variantf23c7aeaaf809ccf65f431f19fdea0177af65571f850587700589981924747ca.lean/declarations/padicvalrat-two-harmonic--709b6fa0e3a211d64c86f38e.md) | 35 | `result-track:709b6fa0e3a211d64c86f38e3465cf17ff2680e4c464a7a499c863bbc7241321` |
| 3 | `lemma` | [padicNorm_two_harmonic](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Int/Variantf23c7aeaaf809ccf65f431f19fdea0177af65571f850587700589981924747ca.lean/declarations/padicnorm-two-harmonic--5ed351a1e1a86ca57a7227f8.md) | 51 | `result-track:5ed351a1e1a86ca57a7227f8c158fbb48c94c54b2e21f606a32d0494df5ccf1a` |
| 4 | `theorem` | [harmonic_not_int](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Int/Variantf23c7aeaaf809ccf65f431f19fdea0177af65571f850587700589981924747ca.lean/declarations/harmonic-not-int--30d49ee597fff7c1c645100f.md) | 57 | `result-track:30d49ee597fff7c1c645100f054d49cee84ee8a6d284e456869e8f096d64b277` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
