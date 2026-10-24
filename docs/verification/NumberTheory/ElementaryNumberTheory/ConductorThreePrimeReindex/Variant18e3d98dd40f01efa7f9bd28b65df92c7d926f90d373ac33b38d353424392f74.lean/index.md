# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ConductorThreePrimeReindex.Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92b470ccfbd4abd042a59e2c49ecf54fb7edc0f9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92b470ccfbd4abd042a59e2c49ecf54fb7edc0f9`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eligibleResidueSixPrime_iff_prime_and_three_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean/declarations/eligibleresiduesixprime-iff-prime-and-three-lt--be70e641a0851ab3285c3b2d.md) | 39 | `result-track:be70e641a0851ab3285c3b2d12059690ff222bef759b410a219fb1a69ecb8c15` |
| 2 | `theorem` | [nth_eligibleResidueSixPrime_eq_nth_prime_add_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean/declarations/nth-eligibleresiduesixprime-eq-nth-prime-add-two--32b4b341e904831c9a2a737e.md) | 75 | `result-track:32b4b341e904831c9a2a737eb7b86397f5695981274a065023986315909128b6` |
| 3 | `theorem` | [actualEligiblePrimeCutoff_eq_nthPrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean/declarations/actualeligibleprimecutoff-eq-nthprime--74e8fb63e31f63162a1d7bf3.md) | 123 | `result-track:74e8fb63e31f63162a1d7bf34b28c3142da7d9e195ea80dd5679d969d871a88e` |
| 4 | `theorem` | [actualEligiblePrimeCutoff_isEligible](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean/declarations/actualeligibleprimecutoff-iseligible--be54563e73f4bfcdc3cb4c50.md) | 132 | `result-track:be54563e73f4bfcdc3cb4c508739b8dcb9d398fdb3643cd22aa342199e0bd352` |
| 5 | `theorem` | [count_eligible_below_actualCutoff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean/declarations/count-eligible-below-actualcutoff--96c336cdd7b5d72fe346e71e.md) | 138 | `result-track:96c336cdd7b5d72fe346e71e2f9f8614923506de0013416dbca9935bd6280b1a` |
| 6 | `theorem` | [count_eligible_through_actualCutoff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean/declarations/count-eligible-through-actualcutoff--e0e6fe726c3af3613776f5fb.md) | 144 | `result-track:e0e6fe726c3af3613776f5fb82c91117439a426eff581406ab0d4564254ee92e` |
| 7 | `theorem` | [actualEligiblePrimeCutoff_le_iff_count_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean/declarations/actualeligibleprimecutoff-le-iff-count-succ--56b9cbd991fdecfa7a7baba8.md) | 153 | `result-track:56b9cbd991fdecfa7a7baba88f18ded850305dcafcac8356af0c9864b6635af9` |
| 8 | `theorem` | [actualEligibleCount_eq_count](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean/declarations/actualeligiblecount-eq-count--ef9c4370336a2f22f4713f20.md) | 175 | `result-track:ef9c4370336a2f22f4713f20373ceb4cc3045359ede1f83b2454655ae5b17b24` |
| 9 | `theorem` | [actualResidueSixCounts_plateau](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean/declarations/actualresiduesixcounts-plateau--989be3a768a7879bd70f3cba.md) | 184 | `result-track:989be3a768a7879bd70f3cbadc72b5286a1b0b0e5b6b2fbed143d1bdc2f5b819` |
| 10 | `theorem` | [countDifference_plateau](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean/declarations/countdifference-plateau--9c20ebf567e0d242d417ec05.md) | 230 | `result-track:9c20ebf567e0d242d417ec0598d4d9a7dbe2875a147927a13004a6c30e5ac18d` |
| 11 | `theorem` | [conductorThreeIntegerValue_eq_one_iff_residueOne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean/declarations/conductorthreeintegervalue-eq-one-iff-residueone--13b195331c1ac450e7b70caf.md) | 243 | `result-track:13b195331c1ac450e7b70caf3b04a74ebfc6ed08c99d1817c5502f172a1040f0` |
| 12 | `theorem` | [conductorThreeIntegerValue_eq_neg_one_iff_residueFive](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean/declarations/conductorthreeintegervalue-eq-neg-one-iff-residuefive--ea91a5afbb3a326fe864f59c.md) | 267 | `result-track:ea91a5afbb3a326fe864f59c62483bcb610559990d6fe23d4828093d0bdfbf98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
