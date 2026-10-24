# Verification target: GRWTSK.NumberTheory.DiophantineEquations.DiophantineApproximation.Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "905ff2830110628e736743f6804825b693e65939",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `905ff2830110628e736743f6804825b693e65939`.

Source path: `GRWTSK/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Computation.ApproximationCorollaries` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.Computation.Translations` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Pigeonhole` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Units` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Irrational` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_int_int_abs_mul_sub_le](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/exists-int-int-abs-mul-sub-le--a660f0696964bbea9ed26fae.md) | 95 | `result-track:a660f0696964bbea9ed26faef754cf93697b82c25838faf00a882f88771178a9` |
| 2 | `theorem` | [exists_nat_abs_mul_sub_round_le](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/exists-nat-abs-mul-sub-round-le--0e26be536288df3c138298f9.md) | 142 | `result-track:0e26be536288df3c138298f972f97f67634ff8117d8412f3156ae689858da5d3` |
| 3 | `theorem` | [exists_rat_abs_sub_le_and_den_le](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/exists-rat-abs-sub-le-and-den-le--a4e3051993877014be25db6a.md) | 155 | `result-track:a4e3051993877014be25db6a00b16de16ed9e0da54ce51212604f837a7e5ca49` |
| 4 | `theorem` | [exists_rat_abs_sub_lt_and_lt_of_irrational](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/exists-rat-abs-sub-lt-and-lt-of-irrational--15e49b1042e6679c9d8b32a4.md) | 185 | `result-track:15e49b1042e6679c9d8b32a4ad6ce8a8061c45413cb9f561aab94f19c640cbcc` |
| 5 | `theorem` | [infinite_rat_abs_sub_lt_one_div_den_sq_of_irrational](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/infinite-rat-abs-sub-lt-one-div-den-sq-of-irrational--c52d340808a90ce8330b4ea6.md) | 207 | `result-track:c52d340808a90ce8330b4ea618f1e7d2f16bb00c9f4ea0b0de98efecb47b8fdd` |
| 6 | `theorem` | [den_le_and_le_num_le_of_sub_lt_one_div_den_sq](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/den-le-and-le-num-le-of-sub-lt-one-div-den-sq--4ab91baedd6dc22b0e2bc256.md) | 235 | `result-track:4ab91baedd6dc22b0e2bc256d1b9d15af27cf743bf8888fa709a391efa107371` |
| 7 | `theorem` | [finite_rat_abs_sub_lt_one_div_den_sq](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/finite-rat-abs-sub-lt-one-div-den-sq--1dcc5440df603f564c9c1393.md) | 265 | `result-track:1dcc5440df603f564c9c1393780a2b6f497e42881961853206e96d5152b7a1a3` |
| 8 | `theorem` | [Real.infinite_rat_abs_sub_lt_one_div_den_sq_iff_irrational](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/real-infinite-rat-abs-sub-lt-one-div-den-sq-iff-irrational--262c785e5c9c2c6ebece7f21.md) | 290 | `result-track:262c785e5c9c2c6ebece7f21a4e54262dba3fbc93330e94a55b145b952ed188a` |
| 9 | `def` | [convergent](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/convergent--5987ae8ee0bc4fbea70d6d9a.md) | 337 | `declaration-track:5987ae8ee0bc4fbea70d6d9a7a986a722e346b2e7f86fdd10257b2d03a33c127` |
| 10 | `theorem` | [convergent_zero](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/convergent-zero--8bba00a356bbeb8675426649.md) | 344 | `result-track:8bba00a356bbeb8675426649472a3ee580a5bf8e935f057179991bf5a5d8e92d` |
| 11 | `theorem` | [convergent_succ](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/convergent-succ--55eb84fe98935fee7e354ed8.md) | 350 | `result-track:55eb84fe98935fee7e354ed896c1b839e249d92a4a43baaf02c992417f6ebac2` |
| 12 | `theorem` | [convergent_of_zero](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/convergent-of-zero--1fe2cfc5ff3f2c4f75a68ce9.md) | 359 | `result-track:1fe2cfc5ff3f2c4f75a68ce987b9c95e71e1632746485ed1df853b04736d8531` |
| 13 | `theorem` | [convergent_of_int](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/convergent-of-int--91d3245acc0f528a165336f6.md) | 367 | `result-track:91d3245acc0f528a165336f6444607d4efc5cb03e078073fed3392cf3e2ab039` |
| 14 | `theorem` | [continued_fraction_convergent_eq_convergent](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/continued-fraction-convergent-eq-convergent--aed01f5f5fca6f544ebbdd89.md) | 383 | `result-track:aed01f5f5fca6f544ebbdd89dbf06d86b4b3f2e00fd587118edad75d00d3e142` |
| 15 | `def` | [ContfracLegendre.Ass](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/contfraclegendre-ass--441b2624cf19bfa027f11256.md) | 407 | `declaration-track:441b2624cf19bfa027f112564a2a1ade30c086e9c06cef07c29e631e635f0394` |
| 16 | `theorem` | [aux₀](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/aux--28d604c3a6f3cba081309c54.md) | 414 | `result-track:28d604c3a6f3cba081309c54daa7e1462abe6066ee521c1dc65785a7bcd29bcf` |
| 17 | `theorem` | [aux₁](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/aux--0ba3449b6fbbc0a2f8f3773f.md) | 421 | `result-track:0ba3449b6fbbc0a2f8f3773f68c1df5ff76f913dbbf01d67a0565820ca30e4a7` |
| 18 | `theorem` | [aux₂](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/aux--777f63f3d041b5be318684cd.md) | 440 | `result-track:777f63f3d041b5be318684cd8d10af5f5b3c38131991bc57a4309368a18f9784` |
| 19 | `theorem` | [aux₃](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/aux--3ef4f6dc99e8663862067549.md) | 477 | `result-track:3ef4f6dc99e86638620675496e0db42bf2a0e57d5c890e3448f3ea6d2cbef0c1` |
| 20 | `theorem` | [invariant](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/invariant--5265494d15feca4dfc947fc7.md) | 516 | `result-track:5265494d15feca4dfc947fc72dcb261aee2b69daaa5e614e04dc1236aaf9c141` |
| 21 | `theorem` | [exists_rat_eq_convergent'](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/exists-rat-eq-convergent--83f6b87b4e5613b3ec20ed89.md) | 536 | `result-track:83f6b87b4e5613b3ec20ed8997def73f4487bab8a352b719e987aad6feb9ebb8` |
| 22 | `theorem` | [exists_rat_eq_convergent](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/exists-rat-eq-convergent--9863093eed32d4db77ac67e6.md) | 586 | `result-track:9863093eed32d4db77ac67e69c2c34bc374c1b741d42788f7102be6e974f1a52` |
| 23 | `theorem` | [exists_continued_fraction_convergent_eq_rat](../../../../../mathematics/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/declarations/exists-continued-fraction-convergent-eq-rat--94811da675f4d3407bd7d0bd.md) | 604 | `result-track:94811da675f4d3407bd7d0bdefb8d9123a05c8e4aeb73fcec6189642cb34c411` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
