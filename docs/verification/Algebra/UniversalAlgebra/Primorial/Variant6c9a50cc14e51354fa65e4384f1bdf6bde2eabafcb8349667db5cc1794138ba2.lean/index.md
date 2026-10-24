# Verification target: GRWTSK.Algebra.UniversalAlgebra.Primorial.Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd5bce2833ea82d9875bd8040028ca78949f3fc2",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd5bce2833ea82d9875bd8040028ca78949f3fc2`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Dvd` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Squarefree` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primorial](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/primorial--a8f2db57f402fd1fec404f03.md) | 39 | `declaration-track:a8f2db57f402fd1fec404f03155d0fe7fe9b21cbe5887ec72d8a5d2b84c7b0fb` |
| 2 | `lemma` | [primorial_eq_prod_primesLE](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/primorial-eq-prod-primesle--e50dc80f31939b3fd11be8f9.md) | 43 | `result-track:e50dc80f31939b3fd11be8f9b4e66610ac940e3b64c4cbd68dc8ed0d8666b24d` |
| 3 | `lemma` | [primeFactors_primorial](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/primefactors-primorial--05a69bb3daba53fea9a0d1b7.md) | 45 | `result-track:05a69bb3daba53fea9a0d1b7d1a4da3f66cd09acaa2e51c23ef42d2e40961827` |
| 4 | `theorem` | [primorial_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/primorial-zero--a821e528f218f40b79b1eea3.md) | 49 | `result-track:a821e528f218f40b79b1eea3f488c14346730785c1f28bad3fd3eaf679d91f6f` |
| 5 | `theorem` | [primorial_one](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/primorial-one--a680632ad7e30936df9ff2d5.md) | 51 | `result-track:a680632ad7e30936df9ff2d5b51832aaa22d2d350023cd3ddeb4ed382b0072ad` |
| 6 | `theorem` | [primorial_two](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/primorial-two--8272920ad4585159919e32ae.md) | 53 | `result-track:8272920ad4585159919e32ae2670d2705d7ee14367e06de1efda0a05c7de380b` |
| 7 | `theorem` | [primorial_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/primorial-pos--19279967f9c11244a245073e.md) | 55 | `result-track:19279967f9c11244a245073ebe80123d72740f5d4c4eeda8df2155ae707ce852` |
| 8 | `lemma` | [primorial_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/primorial-ne-zero--a0d4533ecf687f7424762756.md) | 58 | `result-track:a0d4533ecf687f74247627569492432191ecf6b6e244aea1d8b4976ad8550a8a` |
| 9 | `theorem` | [primorial_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/primorial-mono--6760c9896ee10adc064406ef.md) | 60 | `result-track:6760c9896ee10adc064406ef167b0096847afa2b2c2da45cd4711084600a1328` |
| 10 | `theorem` | [primorial_monotone](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/primorial-monotone--d9487fae5e543b00272dbbe8.md) | 63 | `result-track:d9487fae5e543b00272dbbe871323d3e9a919c13964747d1ef8ef9ef4199467d` |
| 11 | `theorem` | [primorial_dvd_primorial](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/primorial-dvd-primorial--683f7773f81f948235a54d51.md) | 65 | `result-track:683f7773f81f948235a54d51b16a42f131b50b9319ad9f6a8b7a35e54030a62b` |
| 12 | `theorem` | [primorial_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/primorial-succ--2055be07297770ce18b50af7.md) | 68 | `result-track:2055be07297770ce18b50af7ca6aaeab38b579d9adc1a4b9f9545a536b238f8a` |
| 13 | `theorem` | [primorial_add](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/primorial-add--52896110b03a5c143c24b9d1.md) | 73 | `result-track:52896110b03a5c143c24b9d1c09282361b25195a4b71ad2bc804a8a3ea3a0b61` |
| 14 | `theorem` | [primorial_add_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/primorial-add-dvd--7d2375128f3b443ef3dd3aac.md) | 79 | `result-track:7d2375128f3b443ef3dd3aac428c3dd09f5c745a1f69e4ca6fbe0a0aa6a0aca3` |
| 15 | `theorem` | [primorial_add_le](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/primorial-add-le--3fd40342fcdbf5baa63159bb.md) | 89 | `result-track:3fd40342fcdbf5baa63159bb8efff83c342969a251f384632200e9762356c8f3` |
| 16 | `lemma` | [Nat.Prime.dvd_primorial_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/nat-prime-dvd-primorial-iff--4774e8c5c7c67012bab0fda1.md) | 92 | `result-track:4774e8c5c7c67012bab0fda121353165e318ff526d3f0ab981bbcbeff83cdd56` |
| 17 | `lemma` | [Nat.Prime.dvd_primorial](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/nat-prime-dvd-primorial--1c13a1eea1def73fae905ea7.md) | 99 | `result-track:1c13a1eea1def73fae905ea78cd1177a18a75c0a8f2b18ae2410b491458ac2af` |
| 18 | `lemma` | [Squarefree.dvd_primorial](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/squarefree-dvd-primorial--45088721e3e116a6dcb56ad8.md) | 102 | `result-track:45088721e3e116a6dcb56ad84acadeeccd65cb11b4267d8c14a1cf06c98e40e9` |
| 19 | `lemma` | [lt_primorial_self](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/lt-primorial-self--c3088c94a50503784dfa8fd6.md) | 107 | `result-track:c3088c94a50503784dfa8fd6bbf986480833a0fa5e7b351836e3d6114fa860fc` |
| 20 | `lemma` | [le_primorial_self](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/le-primorial-self--c45aba7b15ae99e9d0f20387.md) | 116 | `result-track:c45aba7b15ae99e9d0f20387118a0f596f4e39ae242c010fdc03d22c0cb50e7b` |
| 21 | `theorem` | [primorial_lt_four_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/primorial-lt-four-pow--422b12ffe37bcc09e16ee57b.md) | 121 | `result-track:422b12ffe37bcc09e16ee57b1e21ba1072f871f19b9bd730e65686cf1f2804c5` |
| 22 | `theorem` | [primorial_le_four_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/primorial-le-four-pow--d8fa282af787d1529a59ff21.md) | 141 | `result-track:d8fa282af787d1529a59ff21093e45691f5ffc465ddf4e2e22ddc1536cf8a691` |
| 23 | `lemma` | [squarefree_primorial](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant6c9a50cc14e51354fa65e4384f1bdf6bde2eabafcb8349667db5cc1794138ba2.lean/declarations/squarefree-primorial--964f06385a8d4319153a2e9c.md) | 148 | `result-track:964f06385a8d4319153a2e9c18f29bff2f335a66bb1fbd37846828d58f71e3a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
