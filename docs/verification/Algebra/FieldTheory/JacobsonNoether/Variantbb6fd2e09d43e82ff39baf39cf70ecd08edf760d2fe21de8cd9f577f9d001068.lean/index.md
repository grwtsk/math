# Verification target: GRWTSK.Algebra.FieldTheory.JacobsonNoether.Variantbb6fd2e09d43e82ff39baf39cf70ecd08edf760d2fe21de8cd9f577f9d001068

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fc0b81aaa99d6968b316252025b7c4d4aa0b967",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/JacobsonNoether/Variantbb6fd2e09d43e82ff39baf39cf70ecd08edf760d2fe21de8cd9f577f9d001068.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/FieldTheory/JacobsonNoether/Variantbb6fd2e09d43e82ff39baf39cf70ecd08edf760d2fe21de8cd9f577f9d001068.lean/index.md) · [Full source](../../../../../mathematics/Algebra/FieldTheory/JacobsonNoether/Variantbb6fd2e09d43e82ff39baf39cf70ecd08edf760d2fe21de8cd9f577f9d001068.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fc0b81aaa99d6968b316252025b7c4d4aa0b967`.

Source path: `GRWTSK/Algebra/FieldTheory/JacobsonNoether/Variantbb6fd2e09d43e82ff39baf39cf70ecd08edf760d2fe21de8cd9f577f9d001068.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/JacobsonNoether/Variantbb6fd2e09d43e82ff39baf39cf70ecd08edf760d2fe21de8cd9f577f9d001068.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Central.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.LinearMaps` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Subring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Conj` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PurelyInseparable.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_pow_mem_center_of_inseparable](../../../../../mathematics/Algebra/FieldTheory/JacobsonNoether/Variantbb6fd2e09d43e82ff39baf39cf70ecd08edf760d2fe21de8cd9f577f9d001068.lean/declarations/exists-pow-mem-center-of-inseparable--9964b5a675536e8558a8cf07.md) | 68 | `result-track:9964b5a675536e8558a8cf0757be332844cf335fa9ad5d7b9224209acbf0f2bf` |
| 2 | `lemma` | [exists_pow_mem_center_of_inseparable'](../../../../../mathematics/Algebra/FieldTheory/JacobsonNoether/Variantbb6fd2e09d43e82ff39baf39cf70ecd08edf760d2fe21de8cd9f577f9d001068.lean/declarations/exists-pow-mem-center-of-inseparable--46725cefd59813afe0fbd929.md) | 81 | `result-track:46725cefd59813afe0fbd929b93fe490f6415d8672f8936a3e0b6c94dd4889f4` |
| 3 | `lemma` | [exist_pow_eq_zero_of_le](../../../../../mathematics/Algebra/FieldTheory/JacobsonNoether/Variantbb6fd2e09d43e82ff39baf39cf70ecd08edf760d2fe21de8cd9f577f9d001068.lean/declarations/exist-pow-eq-zero-of-le--27d969e3de99d87f27a3de1c.md) | 94 | `result-track:27d969e3de99d87f27a3de1ca52a3768748fefd7b14ab2fc33edaccbc02b548e` |
| 4 | `theorem` | [exists_separable_and_not_isCentral](../../../../../mathematics/Algebra/FieldTheory/JacobsonNoether/Variantbb6fd2e09d43e82ff39baf39cf70ecd08edf760d2fe21de8cd9f577f9d001068.lean/declarations/exists-separable-and-not-iscentral--e6ac685d4a38993f8ea64fd0.md) | 113 | `result-track:e6ac685d4a38993f8ea64fd000b012f6a472b67ec59bebd625fd3c99be13d941` |
| 5 | `theorem` | [exists_separable_and_not_isCentral'](../../../../../mathematics/Algebra/FieldTheory/JacobsonNoether/Variantbb6fd2e09d43e82ff39baf39cf70ecd08edf760d2fe21de8cd9f577f9d001068.lean/declarations/exists-separable-and-not-iscentral--6419f4172fc7b026f7c756cb.md) | 184 | `result-track:6419f4172fc7b026f7c756cbebaac36ed1934125cf2463c8b542831efcee6a63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
