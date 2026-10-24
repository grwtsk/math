# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Endpoint.Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90380766e45a7191c0639f06e1187d7c03319734",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90380766e45a7191c0639f06e1187d7c03319734`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaMajorant](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean/declarations/zetamajorant--73dd1661fad8e654969fcfc4.md) | 10 | `declaration-track:73dd1661fad8e654969fcfc4889cad731c6c006fb3adb869211662ae41d621cd` |
| 2 | `lemma` | [zetaMajorant_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean/declarations/zetamajorant-nonneg--4cb689377a12dd8b8d278ca4.md) | 12 | `result-track:4cb689377a12dd8b8d278ca476b34648197ef2b6cbf17ead7031651e95b31944` |
| 3 | `lemma` | [norm_zeta_nat_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean/declarations/norm-zeta-nat-le--c820d73c11236017f13e12aa.md) | 15 | `result-track:c820d73c11236017f13e12aac0ff01f94ee18a3d0fbf5d0ee8f96fb167702463` |
| 4 | `lemma` | [factorial_le_exp_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean/declarations/factorial-le-exp-square--9bc9cb04f34332ace358771b.md) | 33 | `result-track:9bc9cb04f34332ace358771b961b0a141936fbe7a1e6735201fc8fd9dfa3a929` |
| 5 | `lemma` | [norm_gammaR_even_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean/declarations/norm-gammar-even-le--694f59d2dbcb744ae596553d.md) | 41 | `result-track:694f59d2dbcb744ae596553d048960e1026e170b6e7b3b52a4f8e65abba3da33` |
| 6 | `lemma` | [norm_completed_even_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean/declarations/norm-completed-even-le--80becff51f43d122bf3adca9.md) | 60 | `result-track:80becff51f43d122bf3adca9e813a387c136be9c0ab2fa696c73a8e5f60bfcf9` |
| 7 | `lemma` | [norm_pole_zero_le_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean/declarations/norm-pole-zero-le-one--4e14e60457aadba6cf280559.md) | 75 | `result-track:4e14e60457aadba6cf280559039a67c53ece98a745716d345e6f331d6fd9dd67` |
| 8 | `lemma` | [norm_pole_one_le_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean/declarations/norm-pole-one-le-one--6b1d32dd85c618ffc32e632f.md) | 82 | `result-track:6b1d32dd85c618ffc32e632f4412cd6d77018a664f6d4de1273d7399855d1a4e` |
| 9 | `lemma` | [norm_completed_zero_even_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean/declarations/norm-completed-zero-even-le--be293cee61bdf34329f6e596.md) | 95 | `result-track:be293cee61bdf34329f6e5965a6ebd26aa77e3672f3135fd93fecef54e18dd44` |
| 10 | `lemma` | [completed_zero_even_re_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean/declarations/completed-zero-even-re-bound--bad5b6795d7f1aa70e2daf03.md) | 116 | `result-track:bad5b6795d7f1aa70e2daf03624f5685f4e52f57ebcafd97a7957473b8343bc7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
