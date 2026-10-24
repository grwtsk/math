# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Orthogonality.Variantb576e9dc3e67ed53220615d364d2470f3449d7fabc8f61dd750dc30f25d9074e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e155a7fb886f203dd19074f8ec88d57171289ca",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantb576e9dc3e67ed53220615d364d2470f3449d7fabc8f61dd750dc30f25d9074e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantb576e9dc3e67ed53220615d364d2470f3449d7fabc8f61dd750dc30f25d9074e.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantb576e9dc3e67ed53220615d364d2470f3449d7fabc8f61dd750dc30f25d9074e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e155a7fb886f203dd19074f8ec88d57171289ca`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantb576e9dc3e67ed53220615d364d2470f3449d7fabc8f61dd750dc30f25d9074e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantb576e9dc3e67ed53220615d364d2470f3449d7fabc8f61dd750dc30f25d9074e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Finite.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.DirichletCharacter.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.MulChar.Duality` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [fintype](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantb576e9dc3e67ed53220615d364d2470f3449d7fabc8f61dd750dc30f25d9074e.lean/declarations/fintype--ab6b07b1cfb0f85e7e3ca119.md) | 31 | `declaration-track:ab6b07b1cfb0f85e7e3ca119445b72f2b9b1c73eb25231f159bcea39f5ae4447` |
| 2 | `lemma` | [mulEquiv_units](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantb576e9dc3e67ed53220615d364d2470f3449d7fabc8f61dd750dc30f25d9074e.lean/declarations/mulequiv-units--393daaf9b8e26c97cf56f17b.md) | 39 | `result-track:393daaf9b8e26c97cf56f17b7b305fd3987636942035f64ba249e70cc15121d0` |
| 3 | `lemma` | [card_eq_totient_of_hasEnoughRootsOfUnity](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantb576e9dc3e67ed53220615d364d2470f3449d7fabc8f61dd750dc30f25d9074e.lean/declarations/card-eq-totient-of-hasenoughrootsofunity--ce879afe1ee49a6aae417ffd.md) | 44 | `result-track:ce879afe1ee49a6aae417ffdb073d4ea8298bb1e575dfa61c0eb7fca89dceb0e` |
| 4 | `theorem` | [exists_apply_ne_one_of_hasEnoughRootsOfUnity](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantb576e9dc3e67ed53220615d364d2470f3449d7fabc8f61dd750dc30f25d9074e.lean/declarations/exists-apply-ne-one-of-hasenoughrootsofunity--b2ed6046395b6c68a6020ebf.md) | 54 | `result-track:b2ed6046395b6c68a6020ebf16b0c3a6719923b631aea50683a08f13fe415540` |
| 5 | `theorem` | [sum_characters_eq_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantb576e9dc3e67ed53220615d364d2470f3449d7fabc8f61dd750dc30f25d9074e.lean/declarations/sum-characters-eq-zero--2151524bff47895424210756.md) | 63 | `result-track:2151524bff47895424210756a9219641f6083923a746c9f105b26b80fee8dfbb` |
| 6 | `theorem` | [sum_characters_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantb576e9dc3e67ed53220615d364d2470f3449d7fabc8f61dd750dc30f25d9074e.lean/declarations/sum-characters-eq--80b5cc8fdea2bc1dd50bbf9a.md) | 73 | `result-track:80b5cc8fdea2bc1dd50bbf9a34c34de13b98559436bd78cbc7b41c7c71798791` |
| 7 | `theorem` | [sum_char_inv_mul_char_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantb576e9dc3e67ed53220615d364d2470f3449d7fabc8f61dd750dc30f25d9074e.lean/declarations/sum-char-inv-mul-char-eq--f6fb226cd8d5851ba938fffa.md) | 84 | `result-track:f6fb226cd8d5851ba938fffad49a8fe3734c7dd56c12fb41bc7f901623464ae6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
