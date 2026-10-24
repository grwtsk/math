# Verification target: GRWTSK.Algebra.LinearAlgebra.Flag.Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fe8657e9c6f9c3ae7035106f31dc35d98bc342f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fe8657e9c6f9c3ae7035106f31dc35d98bc342f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.FlagRange` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Basis` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [flag](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/declarations/flag--acd05f172782d821606e96df.md) | 38 | `declaration-track:acd05f172782d821606e96dfa84c36a7df1639c4731c339d4550f824da28b564` |
| 2 | `theorem` | [flag_zero](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/declarations/flag-zero--4152a6fac0610ecd545e5c93.md) | 42 | `result-track:4152a6fac0610ecd545e5c93111c680aee89cb06d68f814c68d07ef2923e66f3` |
| 3 | `theorem` | [flag_last](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/declarations/flag-last--539b76d105c6c2066b159bc2.md) | 45 | `result-track:539b76d105c6c2066b159bc2fa01a11db218cf156c6fe4fef806aa6fd4dccc44` |
| 4 | `theorem` | [flag_le_iff](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/declarations/flag-le-iff--f2a391413f8f3665e6fa5813.md) | 48 | `result-track:f2a391413f8f3665e6fa581359dea3f0183f1a3f615bdba26b9f69b002b70c81` |
| 5 | `theorem` | [flag_succ](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/declarations/flag-succ--b97acf6afce6b3d81c73409f.md) | 52 | `result-track:b97acf6afce6b3d81c73409f6471752fb5cb4e818c0b54ec9e6b9b480c0eea29` |
| 6 | `theorem` | [self_mem_flag](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/declarations/self-mem-flag--5c67b8a2021ed2cb23d65bd1.md) | 57 | `result-track:5c67b8a2021ed2cb23d65bd11201f10ac1212a818ec4dd60097332849028646f` |
| 7 | `theorem` | [self_mem_flag_iff](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/declarations/self-mem-flag-iff--7a9e37d10c8f1d0163c22891.md) | 62 | `result-track:7a9e37d10c8f1d0163c22891e555116290225ee1ecbf023b9afe953ed8d05fb9` |
| 8 | `theorem` | [flag_mono](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/declarations/flag-mono--655b7da1e35e12eb3a037992.md) | 67 | `result-track:655b7da1e35e12eb3a037992a1350da28ff60cb0f9f7cdcb6e62e26628417eb3` |
| 9 | `theorem` | [isChain_range_flag](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/declarations/ischain-range-flag--d2346a42456c47e3cfc98d1f.md) | 70 | `result-track:d2346a42456c47e3cfc98d1f539e931e48f5509c057f07b4fc1c33bf686c6c6f` |
| 10 | `theorem` | [flag_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/declarations/flag-strictmono--5b4bcfc2dc51a104ffe7c966.md) | 74 | `result-track:5b4bcfc2dc51a104ffe7c966dbb95fc65bfd8e0ebfa0636606c605ccb895728a` |
| 11 | `lemma` | [flag_le_flag](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/declarations/flag-le-flag--18a5b97260297bdd04116a35.md) | 77 | `result-track:18a5b97260297bdd04116a3504f06a07f6a991fc3a12b82f34628333cf396214` |
| 12 | `lemma` | [flag_lt_flag](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/declarations/flag-lt-flag--c23160adcaa4518a3b56a949.md) | 80 | `result-track:c23160adcaa4518a3b56a9491e0d42bb1250a4a48bb310a97febbba82bdeac61` |
| 13 | `theorem` | [flag_le_ker_coord_iff](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/declarations/flag-le-ker-coord-iff--b357f305af29bae2f24d3e1b.md) | 89 | `result-track:b357f305af29bae2f24d3e1b431e08c7b492bef059c6cf449281a036376d831b` |
| 14 | `theorem` | [flag_le_ker_coord](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/declarations/flag-le-ker-coord--90cfbb027d32a6a26f7b9426.md) | 93 | `result-track:90cfbb027d32a6a26f7b942616f3d759bcc3bd02d3de2ff0cdca95e4971ef9bc` |
| 15 | `theorem` | [flag_le_ker_dual](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/declarations/flag-le-ker-dual--70628b094557d92eee6a1366.md) | 98 | `result-track:70628b094557d92eee6a13667f26ecc233743ceee4e7945159caebd2dfe242ca` |
| 16 | `theorem` | [flag_covBy](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/declarations/flag-covby--86a1fe403a60bae34c35b90c.md) | 109 | `result-track:86a1fe403a60bae34c35b90c8c2fe9355cf516394a862d10d3686dbfae09c216` |
| 17 | `theorem` | [flag_wcovBy](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/declarations/flag-wcovby--ac5773763a342fb35a7d6e49.md) | 115 | `result-track:ac5773763a342fb35a7d6e496ba53ef3c207dc45f3f1bd64c0192f63d7fdfc20` |
| 18 | `def` | [toFlag](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/declarations/toflag--0ca73f6badea18aa00328352.md) | 121 | `declaration-track:0ca73f6badea18aa00328352964ca81747747edc6357641b71e12b24f67108d1` |
| 19 | `theorem` | [mem_toFlag](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/declarations/mem-toflag--7e7a80418626c9937db6adb2.md) | 125 | `result-track:7e7a80418626c9937db6adb221c287cb9206b46b3e5cf514893d01f12605fa34` |
| 20 | `theorem` | [isMaxChain_range_flag](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variantff5f419c2e735d80464ec70833715e4ade04b20cdf53d4065f6cd9765062eb38.lean/declarations/ismaxchain-range-flag--72d4c916ebab98667537d9e8.md) | 128 | `result-track:72d4c916ebab98667537d9e87f94649ad3d223264be60308515b3f100ed4e3bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
