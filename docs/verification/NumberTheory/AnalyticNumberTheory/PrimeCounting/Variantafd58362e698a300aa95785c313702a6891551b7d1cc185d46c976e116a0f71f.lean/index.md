# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.PrimeCounting.Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "badd2e022e6cd741968dcd0296bf87ebab5807bd",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `badd2e022e6cd741968dcd0296bf87ebab5807bd`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Nth` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Totient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SmoothNumbers` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeCounting'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/declarations/primecounting--b63761772f8e59333819134a.md) | 53 | `declaration-track:b63761772f8e59333819134a59af07a6f134ec1f41e1f5cf67dc3d5a7da1fd35` |
| 2 | `def` | [primeCounting](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/declarations/primecounting--5afb64e6ceaae8c45b93cc74.md) | 59 | `declaration-track:5afb64e6ceaae8c45b93cc74934ce38acb36d87997032dba3a8257b2001e7b93` |
| 3 | `theorem` | [primeCounting_sub_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/declarations/primecounting-sub-one--bca7aac158441f6b5836301a.md) | 69 | `result-track:bca7aac158441f6b5836301ab2807e9448016dddc56a56777953af29bc793deb` |
| 4 | `theorem` | [monotone_primeCounting'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/declarations/monotone-primecounting--9ef3e0cb9ac8133f3e04e73d.md) | 72 | `result-track:9ef3e0cb9ac8133f3e04e73d392058215e290b0b2dcdeeed1b34df608c3da36c` |
| 5 | `theorem` | [monotone_primeCounting](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/declarations/monotone-primecounting--d981049d363cb7a000102e1d.md) | 75 | `result-track:d981049d363cb7a000102e1d511c90af03edf8cb029dfe8e3b3ea41c32141ff4` |
| 6 | `theorem` | [primeCounting'_nth_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/declarations/primecounting-nth-eq--eba64d446c3d01506dd04dec.md) | 79 | `result-track:eba64d446c3d01506dd04decca892f6b774ffbdfff4ed9154c2a6ec06bde2611` |
| 7 | `theorem` | [add_two_le_nth_prime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/declarations/add-two-le-nth-prime--6cd33ce9384fecf60926ac85.md) | 83 | `result-track:6cd33ce9384fecf60926ac855d4f65fdffc2f984487fd2d794017539b1e8131b` |
| 8 | `theorem` | [surjective_primeCounting'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/declarations/surjective-primecounting--ff5ad43a8be31c3db82ca32a.md) | 86 | `result-track:ff5ad43a8be31c3db82ca32abbe7dfc1b5c33c85598f737ae645ad466bcfe15b` |
| 9 | `theorem` | [surjective_primeCounting](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/declarations/surjective-primecounting--727444ca456cf04020ce70ad.md) | 89 | `result-track:727444ca456cf04020ce70adc9fa51e1e360636aa41f56e9e65d1ac457c8fbe5` |
| 10 | `theorem` | [tendsto_primeCounting'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/declarations/tendsto-primecounting--774ab0dfc77fb8b74218867d.md) | 97 | `result-track:774ab0dfc77fb8b74218867dff55385101fd39053108bd84fb06a21969fee72e` |
| 11 | `theorem` | [tensto_primeCounting](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/declarations/tensto-primecounting--756bfa81f9e642f06c033d02.md) | 101 | `result-track:756bfa81f9e642f06c033d02fe57b5017ade7c28246212ca66dbd32cb5127fd7` |
| 12 | `theorem` | [prime_nth_prime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/declarations/prime-nth-prime--d273abb810fedc7e811c8328.md) | 105 | `result-track:d273abb810fedc7e811c83283b927373dd72bf5f69ab7d3798b8d0a94727c48a` |
| 13 | `lemma` | [primeCounting'_eq_zero_iff](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/declarations/primecounting-eq-zero-iff--a8364ac768625a44226714b1.md) | 109 | `result-track:a8364ac768625a44226714b1391759a6f8276c10a79b5a7363ee7e55316a48e9` |
| 14 | `lemma` | [primeCounting_eq_zero_iff](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/declarations/primecounting-eq-zero-iff--d39ee7a9179703879047e173.md) | 113 | `result-track:d39ee7a9179703879047e1731891427338b2e4686552411aa034a4a91637aa9c` |
| 15 | `lemma` | [primeCounting_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/declarations/primecounting-zero--b5eee4068fdd0039f8335fde.md) | 117 | `result-track:b5eee4068fdd0039f8335fde01c32562045a59c620026fe0e9d4735f350b9ec5` |
| 16 | `lemma` | [primeCounting_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/declarations/primecounting-one--1112731f5d75cfc45162d006.md) | 121 | `result-track:1112731f5d75cfc45162d006c88ca1cee6703d2b6ec6457639b2faf3ab18297c` |
| 17 | `theorem` | [primesBelow_card_eq_primeCounting'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/declarations/primesbelow-card-eq-primecounting--33b7085cdac3d510ae751fed.md) | 126 | `result-track:33b7085cdac3d510ae751fed1cb750715dff1f1a771f8dad91b0793fcfc64558` |
| 18 | `theorem` | [primeCounting'_add_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/declarations/primecounting-add-le--083cae4a31bb47ea19740daf.md) | 131 | `result-track:083cae4a31bb47ea19740daf74752c80272d16d844eca22891d1919d534fccb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
