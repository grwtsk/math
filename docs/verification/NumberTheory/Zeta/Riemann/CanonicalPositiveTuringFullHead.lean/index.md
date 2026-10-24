# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPositiveTuringFullHead

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35bf67032adde4213817968469a2fc03d71c3da4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35bf67032adde4213817968469a2fc03d71c3da4`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPositiveTuringBridge`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PositiveHeightSymmetricCount`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fullKnownPoints](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean/declarations/fullknownpoints--e882b2f414e22f2ae9cb8a7c.md) | 48 | `declaration-track:e882b2f414e22f2ae9cb8a7c3f1c8714c6f05638f48ec56623ae692dac72a62d` |
| 2 | `theorem` | [known_conjugate_disjoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean/declarations/known-conjugate-disjoint--9bbe41312d75016f8bbd1dd6.md) | 54 | `result-track:9bbe41312d75016f8bbd1dd68c770ff073518ec38a52584852e21d0af7ec2f8f` |
| 3 | `theorem` | [fullKnownPoints_subset_heightHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean/declarations/fullknownpoints-subset-heighthead--48b98800dbcba065bcf61d12.md) | 69 | `result-track:48b98800dbcba065bcf61d1221d0be0c9e5f52134176e518ce52921a40fd65d3` |
| 4 | `theorem` | [conjugate_known_mass_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean/declarations/conjugate-known-mass-eq--60ec6526a22012683c1e0629.md) | 83 | `result-track:60ec6526a22012683c1e0629182d904c715e4a3b250d5c91960dd8d3021450c2` |
| 5 | `theorem` | [fullKnownPoints_mass_eq_twice_certifiedCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean/declarations/fullknownpoints-mass-eq-twice-certifiedcount--fdac63d7f781376a32b65081.md) | 93 | `result-track:fdac63d7f781376a32b650814c1ad69592372f003f6e057f67ad4dff66be1bc2` |
| 6 | `theorem` | [heightCount_eq_twice_totalCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean/declarations/heightcount-eq-twice-totalcount--d8c8b9cffba6af757fa84949.md) | 111 | `result-track:d8c8b9cffba6af757fa8494933296d6b7fabe01ce526346008ef4bccf7596d5a` |
| 7 | `theorem` | [full_missing_mass_eq_twice_gap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean/declarations/full-missing-mass-eq-twice-gap--0f0940c1847059a09aae1a32.md) | 124 | `result-track:0f0940c1847059a09aae1a321ee3e6775b0c7b6b8bf163258ee246bb96059121` |
| 8 | `theorem` | [fullKnownPoints_eq_heightHead_of_gap_eq_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean/declarations/fullknownpoints-eq-heighthead-of-gap-eq-zero--47d62e17cf46079c94512819.md) | 146 | `result-track:47d62e17cf46079c94512819a05c290619432536c5643dae0d386dc7cce2c909` |
| 9 | `theorem` | [gap_eq_zero_of_fullKnownPoints_eq_heightHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean/declarations/gap-eq-zero-of-fullknownpoints-eq-heighthead--7f69b29479305e2facf240d8.md) | 156 | `result-track:7f69b29479305e2facf240d841e2ea861a58e618824a66813a7d5d2a9b1e3c39` |
| 10 | `theorem` | [gap_eq_zero_iff_fullKnownPoints_eq_heightHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean/declarations/gap-eq-zero-iff-fullknownpoints-eq-heighthead--ef3b2b940786968fa0b502de.md) | 176 | `result-track:ef3b2b940786968fa0b502def8541d076626c71bb7374176dc51ac185133ff67` |
| 11 | `theorem` | [heightCount_eq_twice_certifiedCount_of_gap_eq_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean/declarations/heightcount-eq-twice-certifiedcount-of-gap-eq-zero--1e762a33fe0611091392edae.md) | 185 | `result-track:1e762a33fe0611091392edae37f2178750d972067273c8cba6bb0684c7cb09ad` |
| 12 | `theorem` | [full_weighted_sum_eq_paired_of_gap_eq_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean/declarations/full-weighted-sum-eq-paired-of-gap-eq-zero--5a6ab94d31622f2920d2d4e3.md) | 198 | `result-track:5a6ab94d31622f2920d2d4e3980fd7479ddd2084474417e755d405fb4d94874f` |
| 13 | `theorem` | [one_unit_gap_full_mass_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean/declarations/one-unit-gap-full-mass-fixture--04a43840839ae7630d465dd0.md) | 227 | `result-track:04a43840839ae7630d465dd0f9f8494e5ffb158a5c99dc3528a5ad324c81cecf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
