# Verification target: GRWTSK.Algebra.LinearAlgebra.PrimeLogInterpolationMap.Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fe71f961a52227a9a9b5740756604923df065d4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fe71f961a52227a9a9b5740756604923df065d4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Span.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeLogs](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean/declarations/primelogs--42cdc58c3b173aaa548895d1.md) | 22 | `declaration-track:42cdc58c3b173aaa548895d146dfd6c7d6739c187f8c34a40aa72b5415acbade` |
| 2 | `def` | [quotientMap](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean/declarations/quotientmap--bf4ce5bc16062f0c4d8eaba7.md) | 25 | `declaration-track:bf4ce5bc16062f0c4d8eaba79685e7201bac57af4273e9ac895c4b19cfea534c` |
| 3 | `def` | [primeMap](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean/declarations/primemap--bfdabe4d1ccc3d3338142841.md) | 30 | `declaration-track:bfdabe4d1ccc3d3338142841e28defc9f4cba26afbb19931db32b4f654be1391` |
| 4 | `theorem` | [quotientMap_surjective](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean/declarations/quotientmap-surjective--c48082f2263a848358536f09.md) | 32 | `result-track:c48082f2263a848358536f0919d555e6071eb469f240bbed1f171ee616574c3a` |
| 5 | `theorem` | [quotientMap_kernel](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean/declarations/quotientmap-kernel--43d024240e155b17d8654993.md) | 38 | `result-track:43d024240e155b17d8654993ede283685884512442cae2b7d7ac8e3e879468c6` |
| 6 | `theorem` | [prime_log_two_nonzero](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean/declarations/prime-log-two-nonzero--8d48a54e3842222e37a141f3.md) | 57 | `result-track:8d48a54e3842222e37a141f318097195b121cffa39c522ea8350048c3fad9080` |
| 7 | `theorem` | [primeMap_surjective](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean/declarations/primemap-surjective--a75b17ab0522939e37d3f788.md) | 61 | `result-track:a75b17ab0522939e37d3f7880c185c807768bbb461bd93fbf8991c1591c262e8` |
| 8 | `theorem` | [primeMap_kernel](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean/declarations/primemap-kernel--3ef613e76d946911d560ad57.md) | 63 | `result-track:3ef613e76d946911d560ad575fd538a7cb527c0619bcfbb1c2fe82e474fe3736` |
| 9 | `def` | [degreeBudget](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean/declarations/degreebudget--e90a39d49452df79a189187e.md) | 66 | `declaration-track:e90a39d49452df79a189187e296ce052f39d6e075f7141ac126ff50ca7b0099c` |
| 10 | `theorem` | [degreeBudget_lower](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean/declarations/degreebudget-lower--783f6ad71cca7faf645bb35a.md) | 68 | `result-track:783f6ad71cca7faf645bb35aea53dc32bfb40f61734c7cb577be86795e356bef` |
| 11 | `theorem` | [degreeBudget_exact](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean/declarations/degreebudget-exact--97676179e13bafded28bd16a.md) | 72 | `result-track:97676179e13bafded28bd16ac90817ca810150cbf310c67e6e878260887be614` |
| 12 | `theorem` | [degreeBudget_strict](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean/declarations/degreebudget-strict--88217d49f1db0fb8e1f010e7.md) | 77 | `result-track:88217d49f1db0fb8e1f010e7302009983634cf88bdc0d6cc9be27ea9ea05fbd8` |
| 13 | `theorem` | [scaling_example_budget](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean/declarations/scaling-example-budget--cd5b4eb8850e506ab0b2455c.md) | 87 | `result-track:cd5b4eb8850e506ab0b2455c0b99db0e9129372de699b0b0c7d5e75abff02208` |
| 14 | `theorem` | [nonzero_scaling_preserves_kernel](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean/declarations/nonzero-scaling-preserves-kernel--c44aa5afc733998e32a8299d.md) | 90 | `result-track:c44aa5afc733998e32a8299d3d4a278e859bbb27d80ff024855fd31b4d6e589b` |
| 15 | `theorem` | [nonzero_scaling_preserves_surjectivity](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean/declarations/nonzero-scaling-preserves-surjectivity--2159d274f74c0e58f376561b.md) | 95 | `result-track:2159d274f74c0e58f376561b71f1e82c8f9fa72d06db523a38b0e47ae494602e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
