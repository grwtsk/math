# Verification target: GRWTSK.NumberTheory.Moebius.SquareDivisorMobiusNonsquarefreeCancellation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d1c1c9a3b76f1a435acc2d07786bd0cf1ca016d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d1c1c9a3b76f1a435acc2d07786bd0cf1ca016d`.

Source path: `GRWTSK/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.SquareDivisorMobiusSquarefreeHalf`](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusSquarefreeHalf.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareDivisorMobiusSupport](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/declarations/squaredivisormobiussupport--9736b3c0746092b9afa8666c.md) | 41 | `declaration-track:9736b3c0746092b9afa8666c9d82306407568c5eb41acab89edf16a65f428536` |
| 2 | `theorem` | [squareDivisorMobiusSum_eq_supportSum](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/declarations/squaredivisormobiussum-eq-supportsum--8d1dd9a3997be0d9ec9b471e.md) | 48 | `result-track:8d1dd9a3997be0d9ec9b471eebc1faf2e033455fba799aae081dee768d210558` |
| 3 | `theorem` | [exists_prime_square_dvd_of_not_squarefree](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/declarations/exists-prime-square-dvd-of-not-squarefree--c7a0db59c8cbd8e7070d079f.md) | 68 | `result-track:c7a0db59c8cbd8e7070d079f57aad86e2f11b17e2b63c640f69b1906681eb7d6` |
| 4 | `def` | [squareDivisorPrimeToggle](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/declarations/squaredivisorprimetoggle--b9a8a053359027e0aa541e48.md) | 76 | `declaration-track:b9a8a053359027e0aa541e480aeea185e8aa26752b9a630d2dedb8c3e5ef636d` |
| 5 | `theorem` | [prime_not_dvd_div_of_squarefree](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/declarations/prime-not-dvd-div-of-squarefree--87da859cf20c4e64b16ce876.md) | 81 | `result-track:87da859cf20c4e64b16ce8767b1c474f89ee23d5470ea2e839be91c547779fe5` |
| 6 | `theorem` | [squareDivisorPrimeToggle_mem_support](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/declarations/squaredivisorprimetoggle-mem-support--c410e9c1d7821a7476812de0.md) | 93 | `result-track:c410e9c1d7821a7476812de0aaa90877556e5f1020fb80d69112cdeb807d374a` |
| 7 | `theorem` | [squareDivisorPrimeToggle_involutive_on_support](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/declarations/squaredivisorprimetoggle-involutive-on-support--70a3af51c52f3168d9d137a1.md) | 137 | `result-track:70a3af51c52f3168d9d137a158a679ebb4e2e8da72cde75f0c2bcfd43a60074c` |
| 8 | `theorem` | [squareDivisorPrimeToggle_ne_self_on_support](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/declarations/squaredivisorprimetoggle-ne-self-on-support--1bad21a079545c01b7dd4cb6.md) | 157 | `result-track:1bad21a079545c01b7dd4cb6542b1313ca552169659a9991b4923a58524d80c3` |
| 9 | `theorem` | [moebiusReal_add_toggle_eq_zero](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/declarations/moebiusreal-add-toggle-eq-zero--4b1068943352592a9a981490.md) | 174 | `result-track:4b1068943352592a9a9814904cdfc07b42e131fd7d9f7d8e10f6cf0d881850f6` |
| 10 | `theorem` | [sum_squareDivisorMobiusSupport_eq_zero_of_prime_square_dvd](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/declarations/sum-squaredivisormobiussupport-eq-zero-of-prime-square-dvd--27c383485fdc45c8cac95680.md) | 205 | `result-track:27c383485fdc45c8cac95680df70b441ca9f82211c54bf2edae0fc6e9e54f687` |
| 11 | `theorem` | [squareDivisorMobiusSum_eq_zero_of_not_squarefree](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/declarations/squaredivisormobiussum-eq-zero-of-not-squarefree--25f237ce1d99bd902d3b0934.md) | 222 | `result-track:25f237ce1d99bd902d3b093495e7127987ad82251fcefaf13222e1f9a66de295` |
| 12 | `def` | [nonSquarefreeSquareDivisorMobiusCancellation](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/declarations/nonsquarefreesquaredivisormobiuscancellation--30dafd12df0c92fc26d3e7d8.md) | 234 | `declaration-track:30dafd12df0c92fc26d3e7d8673117e0937acaa7d8ef22744e2bc580bda5ae0a` |
| 13 | `def` | [squarefreeDivisorSquareMobiusIdentity](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/declarations/squarefreedivisorsquaremobiusidentity--0fec09643a152e4c4847a5bf.md) | 242 | `declaration-track:0fec09643a152e4c4847a5bf2b4fb4fbd2532226b96e505b18be90fb184bf7bc` |
| 14 | `theorem` | [squarefreeIndicatorReal_eq_squareDivisorMobiusSum](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/declarations/squarefreeindicatorreal-eq-squaredivisormobiussum--0902b4ea621645add181a43b.md) | 249 | `result-track:0902b4ea621645add181a43bc1780005ba70622f44483d40bb15a07080a4b1eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
