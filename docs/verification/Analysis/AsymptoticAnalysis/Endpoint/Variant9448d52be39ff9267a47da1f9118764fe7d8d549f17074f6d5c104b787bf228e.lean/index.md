# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Endpoint.Variant9448d52be39ff9267a47da1f9118764fe7d8d549f17074f6d5c104b787bf228e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba8c3dfda69e3868c7524c1454b08b76cd8ead33",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Endpoint/Variant9448d52be39ff9267a47da1f9118764fe7d8d549f17074f6d5c104b787bf228e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variant9448d52be39ff9267a47da1f9118764fe7d8d549f17074f6d5c104b787bf228e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variant9448d52be39ff9267a47da1f9118764fe7d8d549f17074f6d5c104b787bf228e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba8c3dfda69e3868c7524c1454b08b76cd8ead33`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Endpoint/Variant9448d52be39ff9267a47da1f9118764fe7d8d549f17074f6d5c104b787bf228e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Endpoint/Variant9448d52be39ff9267a47da1f9118764fe7d8d549f17074f6d5c104b787bf228e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaMajorant](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variant9448d52be39ff9267a47da1f9118764fe7d8d549f17074f6d5c104b787bf228e.lean/declarations/zetamajorant--4f780f53e748753fe4e38ced.md) | 18 | `declaration-track:4f780f53e748753fe4e38cededf291723756b77f61b26b1da6605b5ad05d4d30` |
| 2 | `lemma` | [zetaMajorant_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variant9448d52be39ff9267a47da1f9118764fe7d8d549f17074f6d5c104b787bf228e.lean/declarations/zetamajorant-nonneg--61c1ab1be616beb7a7593979.md) | 20 | `result-track:61c1ab1be616beb7a75939798220011ba7b46a33cef2e1f435a36cdfa3aa3c07` |
| 3 | `lemma` | [norm_zeta_nat_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variant9448d52be39ff9267a47da1f9118764fe7d8d549f17074f6d5c104b787bf228e.lean/declarations/norm-zeta-nat-le--239e4f724e5142e636f9f424.md) | 23 | `result-track:239e4f724e5142e636f9f424de414a9a858b4abed406342885d91e7587c228d8` |
| 4 | `lemma` | [factorial_le_exp_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variant9448d52be39ff9267a47da1f9118764fe7d8d549f17074f6d5c104b787bf228e.lean/declarations/factorial-le-exp-square--5d8ebb67d481d4ea0cd38979.md) | 41 | `result-track:5d8ebb67d481d4ea0cd389790dd037d85d0623c65396064e8d2487897b83cc30` |
| 5 | `lemma` | [norm_gammaR_even_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variant9448d52be39ff9267a47da1f9118764fe7d8d549f17074f6d5c104b787bf228e.lean/declarations/norm-gammar-even-le--89bacd2d7698f481236d05f6.md) | 49 | `result-track:89bacd2d7698f481236d05f6642b6c5bf1270f2a4e1833c9dd666e4131e32891` |
| 6 | `lemma` | [norm_completed_even_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variant9448d52be39ff9267a47da1f9118764fe7d8d549f17074f6d5c104b787bf228e.lean/declarations/norm-completed-even-le--a8ccf7c187c76092d5a2af8e.md) | 68 | `result-track:a8ccf7c187c76092d5a2af8ec09fdf701574a8da541d29f24dba269bc5f431e8` |
| 7 | `lemma` | [norm_pole_zero_le_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variant9448d52be39ff9267a47da1f9118764fe7d8d549f17074f6d5c104b787bf228e.lean/declarations/norm-pole-zero-le-one--394a25ca7df0030f1c0ae300.md) | 83 | `result-track:394a25ca7df0030f1c0ae300d957d3f89927075b199a4d4f2ef6cdc6569fc079` |
| 8 | `lemma` | [norm_pole_one_le_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variant9448d52be39ff9267a47da1f9118764fe7d8d549f17074f6d5c104b787bf228e.lean/declarations/norm-pole-one-le-one--8fa9d9013dc7d98c3727cf00.md) | 90 | `result-track:8fa9d9013dc7d98c3727cf00e343f56e0e975082fea4a8a1993e8ece0a73bff0` |
| 9 | `lemma` | [norm_completed_zero_even_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variant9448d52be39ff9267a47da1f9118764fe7d8d549f17074f6d5c104b787bf228e.lean/declarations/norm-completed-zero-even-le--1f27d5d39b10d68377f44ba2.md) | 103 | `result-track:1f27d5d39b10d68377f44ba2378afb9e91111a23d8939939fc5bfdcca28449cb` |
| 10 | `lemma` | [completed_zero_even_re_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Endpoint/Variant9448d52be39ff9267a47da1f9118764fe7d8d549f17074f6d5c104b787bf228e.lean/declarations/completed-zero-even-re-bound--72d5a3859aeec2e1b99965b0.md) | 124 | `result-track:72d5a3859aeec2e1b99965b0da41b27603f66ad3ba67de33da0f734c390a7fe8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
