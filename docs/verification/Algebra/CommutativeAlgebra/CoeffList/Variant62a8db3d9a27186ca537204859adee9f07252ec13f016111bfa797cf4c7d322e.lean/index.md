# Verification target: GRWTSK.Algebra.CommutativeAlgebra.CoeffList.Variant62a8db3d9a27186ca537204859adee9f07252ec13f016111bfa797cf4c7d322e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42ec7e46c1f58c128f41ff8ba3cca3df5bd170f9",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/CoeffList/Variant62a8db3d9a27186ca537204859adee9f07252ec13f016111bfa797cf4c7d322e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variant62a8db3d9a27186ca537204859adee9f07252ec13f016111bfa797cf4c7d322e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variant62a8db3d9a27186ca537204859adee9f07252ec13f016111bfa797cf4c7d322e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42ec7e46c1f58c128f41ff8ba3cca3df5bd170f9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/CoeffList/Variant62a8db3d9a27186ca537204859adee9f07252ec13f016111bfa797cf4c7d322e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/CoeffList/Variant62a8db3d9a27186ca537204859adee9f07252ec13f016111bfa797cf4c7d322e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Definitions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.EraseLead` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Range` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coeffList](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variant62a8db3d9a27186ca537204859adee9f07252ec13f016111bfa797cf4c7d322e.lean/declarations/coefflist--8fd112ce3c559c892e54914f.md) | 53 | `declaration-track:8fd112ce3c559c892e54914f57ad2d239251bdee045bca948131aa49f3887f81` |
| 2 | `theorem` | [coeffList_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variant62a8db3d9a27186ca537204859adee9f07252ec13f016111bfa797cf4c7d322e.lean/declarations/coefflist-zero--b50ea0af3c8c79e32b4eddd9.md) | 60 | `result-track:b50ea0af3c8c79e32b4eddd9599277280fb5a141cdd9636c8147c21abfa974b3` |
| 3 | `theorem` | [coeffList_eq_nil](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variant62a8db3d9a27186ca537204859adee9f07252ec13f016111bfa797cf4c7d322e.lean/declarations/coefflist-eq-nil--8878ee3335b1c72effb2f5da.md) | 65 | `result-track:8878ee3335b1c72effb2f5dade694209aedb4ebc4f09ff622cba69748e11cc59` |
| 4 | `theorem` | [coeffList_C](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variant62a8db3d9a27186ca537204859adee9f07252ec13f016111bfa797cf4c7d322e.lean/declarations/coefflist-c--28fa5d68a3b6d7eb9d4ac406.md) | 69 | `result-track:28fa5d68a3b6d7eb9d4ac406b352583cc803465f1c7e3efde262b1b0f59d85b4` |
| 5 | `theorem` | [coeffList_eq_cons_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variant62a8db3d9a27186ca537204859adee9f07252ec13f016111bfa797cf4c7d322e.lean/declarations/coefflist-eq-cons-leadingcoeff--fcd1979ad251d4c817c93ff8.md) | 72 | `result-track:fcd1979ad251d4c817c93ff81a4795cdaf2fdd7a421ea04130946a2a176a4905` |
| 6 | `theorem` | [head?_coeffList](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variant62a8db3d9a27186ca537204859adee9f07252ec13f016111bfa797cf4c7d322e.lean/declarations/head-coefflist--b2018d53ccb64dfaae758815.md) | 77 | `result-track:b2018d53ccb64dfaae7588157b961c08b92d35c22024ad91c98ef9f59b5b4781` |
| 7 | `theorem` | [head_coeffList](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variant62a8db3d9a27186ca537204859adee9f07252ec13f016111bfa797cf4c7d322e.lean/declarations/head-coefflist--985c4110d4c495b4851050d8.md) | 81 | `result-track:985c4110d4c495b4851050d8338fad1305fb0a6500042c56f46c4389ca27c056` |
| 8 | `theorem` | [length_coeffList_eq_withBotSucc_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variant62a8db3d9a27186ca537204859adee9f07252ec13f016111bfa797cf4c7d322e.lean/declarations/length-coefflist-eq-withbotsucc-degree--c30b2fa1bd935668fbe54b98.md) | 87 | `result-track:c30b2fa1bd935668fbe54b98a73242bc7f384e6b180532747e6ce7f7cec4d2e1` |
| 9 | `theorem` | [length_coeffList_eq_ite](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variant62a8db3d9a27186ca537204859adee9f07252ec13f016111bfa797cf4c7d322e.lean/declarations/length-coefflist-eq-ite--419a68bde82558586119a11b.md) | 91 | `result-track:419a68bde82558586119a11bc01774620ed503ade847d293e5603b5bfce8fd45` |
| 10 | `theorem` | [leadingCoeff_cons_eraseLead](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variant62a8db3d9a27186ca537204859adee9f07252ec13f016111bfa797cf4c7d322e.lean/declarations/leadingcoeff-cons-eraselead--c4f42746a7a52a674822ecde.md) | 95 | `result-track:c4f42746a7a52a674822ecded3efb9360ba8c19c97c21b91fccfd2ca90d838ea` |
| 11 | `theorem` | [coeffList_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variant62a8db3d9a27186ca537204859adee9f07252ec13f016111bfa797cf4c7d322e.lean/declarations/coefflist-monomial--ed072cc48fc65af4b64c3787.md) | 104 | `result-track:ed072cc48fc65af4b64c3787b3cdfd0902af0ac2dc082ab9c1ec73d584878aa7` |
| 12 | `theorem` | [coeffList_eraseLead](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variant62a8db3d9a27186ca537204859adee9f07252ec13f016111bfa797cf4c7d322e.lean/declarations/coefflist-eraselead--2a20a5b9d0005e396a9f6eab.md) | 118 | `result-track:2a20a5b9d0005e396a9f6eabad2b0f6a25b7cb72da552d1d6c4886ef254e75d4` |
| 13 | `theorem` | [coeffList_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variant62a8db3d9a27186ca537204859adee9f07252ec13f016111bfa797cf4c7d322e.lean/declarations/coefflist-neg--29a10af69a644f6003412584.md) | 169 | `result-track:29a10af69a644f60034125846ebb76f91c191b4c161ba8b0dbe2a4091de2d26c` |
| 14 | `theorem` | [coeffList_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variant62a8db3d9a27186ca537204859adee9f07252ec13f016111bfa797cf4c7d322e.lean/declarations/coefflist-c-mul--69ff752014e0b34ac795676a.md) | 179 | `result-track:69ff752014e0b34ac795676a4dc353d933e05b77b889c7aba4fb74345e3544a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
