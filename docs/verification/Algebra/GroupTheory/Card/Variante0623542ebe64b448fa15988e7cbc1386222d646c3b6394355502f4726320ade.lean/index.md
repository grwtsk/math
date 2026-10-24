# Verification target: GRWTSK.Algebra.GroupTheory.Card.Variante0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85c81325b086ad87323babbdb1772e9ed8f2424f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Card/Variante0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Card/Variante0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Card/Variante0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85c81325b086ad87323babbdb1772e9ed8f2424f`.

Source path: `GRWTSK/Algebra/GroupTheory/Card/Variante0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Card/Variante0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Coset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_eq_card_quotient_mul_card_subgroup](../../../../../mathematics/Algebra/GroupTheory/Card/Variante0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade.lean/declarations/card-eq-card-quotient-mul-card-subgroup--64421788788cc4578f117f05.md) | 26 | `result-track:64421788788cc4578f117f05ecf7f0e6d004e231dddf7e37a1183a6023267d3c` |
| 2 | `lemma` | [card_mul_eq_card_subgroup_mul_card_quotient](../../../../../mathematics/Algebra/GroupTheory/Card/Variante0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade.lean/declarations/card-mul-eq-card-subgroup-mul-card-quotient--e447e757b1554bdde304981f.md) | 31 | `result-track:e447e757b1554bdde304981f0331d1af054a36ca6bf4bfbf503f08a224af19ab` |
| 3 | `theorem` | [card_subgroup_dvd_card](../../../../../mathematics/Algebra/GroupTheory/Card/Variante0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade.lean/declarations/card-subgroup-dvd-card--6fbcdfe4b9cf04d888d8e63a.md) | 42 | `result-track:6fbcdfe4b9cf04d888d8e63aebc89245d311f56b2c4243bea0c68850d4cd7e2c` |
| 4 | `theorem` | [card_quotient_dvd_card](../../../../../mathematics/Algebra/GroupTheory/Card/Variante0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade.lean/declarations/card-quotient-dvd-card--78b6fbe4b76a655218144ba9.md) | 46 | `result-track:78b6fbe4b76a655218144ba948e444497e1fe10407ede32c0161b718d18b70ac` |
| 5 | `theorem` | [card_dvd_of_injective](../../../../../mathematics/Algebra/GroupTheory/Card/Variante0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade.lean/declarations/card-dvd-of-injective--7295de72cca1feb72580813f.md) | 52 | `result-track:7295de72cca1feb72580813f9865e5dbd0b4900504134b4d733c5d27edaea066` |
| 6 | `theorem` | [card_dvd_of_le](../../../../../mathematics/Algebra/GroupTheory/Card/Variante0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade.lean/declarations/card-dvd-of-le--1c05b67e53e35417dd4224c7.md) | 59 | `result-track:1c05b67e53e35417dd4224c75144ed78392e6e4dc5881b6fb1b26c5d1517b096` |
| 7 | `theorem` | [card_comap_dvd_of_injective](../../../../../mathematics/Algebra/GroupTheory/Card/Variante0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade.lean/declarations/card-comap-dvd-of-injective--3fded34fa2e847c336035b19.md) | 63 | `result-track:3fded34fa2e847c336035b1967d1c012794920366ba8a8d1ab1266623dc8eba7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
