# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.Psi.Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d95bc5988826c1d4a98059a095c5e2aa03954cdd",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d95bc5988826c1d4a98059a095c5e2aa03954cdd`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalRat.Taylor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [vonMangoldtUB](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/declarations/vonmangoldtub--887ddf08fb951568c90ad10e.md) | 36 | `declaration-track:887ddf08fb951568c90ad10e288eb55712ece9a78978c48197a59a8432c48e86` |
| 2 | `def` | [psiUB](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/declarations/psiub--bc1340d16dfd65b7984031a8.md) | 41 | `declaration-track:bc1340d16dfd65b7984031a8001aa612151e33277c6e8174167280a91b38f412` |
| 3 | `theorem` | [vonMangoldt_le_vonMangoldtUB](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/declarations/vonmangoldt-le-vonmangoldtub--316981268c8941ce47e25af2.md) | 47 | `result-track:316981268c8941ce47e25af2e81b3474a5dfbb2110a18ca067a77d8a9a152bcf` |
| 4 | `theorem` | [psi_le_psiUB](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/declarations/psi-le-psiub--f2d4097a06b223c0bf6df70b.md) | 61 | `result-track:f2d4097a06b223c0bf6df70ba247c186dac1c69a83ceece414c808827ba4910c` |
| 5 | `theorem` | [psi_le_of_psiUB_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/declarations/psi-le-of-psiub-le--10cf40df805386cbe7891608.md) | 72 | `result-track:10cf40df805386cbe7891608c57ebd0028948279558814941ebb1e46354c408a` |
| 6 | `def` | [checkPsiLeMulWith](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/declarations/checkpsilemulwith--23de17d9b53088dc07d02212.md) | 82 | `declaration-track:23de17d9b53088dc07d0221225f07b819716bd5cb002252ef4b32f5ddca7e01f` |
| 7 | `theorem` | [psi_le_of_checkPsiLeMulWith](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/declarations/psi-le-of-checkpsilemulwith--3822571b3aee74b4bc213709.md) | 86 | `result-track:3822571b3aee74b4bc21370902299aafbea6976d388dcc9cb19505cc2c67ecb3` |
| 8 | `theorem` | [psi_le_mul_real_of_checkPsiLeMulWith](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/declarations/psi-le-mul-real-of-checkpsilemulwith--ecee99940c38460521c86709.md) | 100 | `result-track:ecee99940c38460521c86709f53c8c35b8dc686266a9df98ac98b0549c26d9ee` |
| 9 | `def` | [checkPsiBound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/declarations/checkpsibound--e8e7a1263939f7f3950dc779.md) | 117 | `declaration-track:e8e7a1263939f7f3950dc7796530be2edf6e3cf8db7cb27270c425de04fdc8ac` |
| 10 | `theorem` | [psi_le_of_checkPsiBound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/declarations/psi-le-of-checkpsibound--2b4335b90c7ed427bf79d682.md) | 121 | `result-track:2b4335b90c7ed427bf79d682c21e6ae1a4c1a2d7336344881e3ef785fd8cf00a` |
| 11 | `theorem` | [psi_le_mul_real](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/declarations/psi-le-mul-real--59c8bfff8017aec4d3d5da6e.md) | 129 | `result-track:59c8bfff8017aec4d3d5da6e2e548719c9abb7c8f0a871128d1e510306643045` |
| 12 | `def` | [psiUBPrefix](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/declarations/psiubprefix--74b02ab1d03bf716f7da8d9c.md) | 139 | `declaration-track:74b02ab1d03bf716f7da8d9ced19121bf889766effd733190d7a2d6a5ec99c9b` |
| 13 | `def` | [checkAllPsiLeMulWith](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/declarations/checkallpsilemulwith--34cab55eda1ab579a31c2bc8.md) | 144 | `declaration-track:34cab55eda1ab579a31c2bc8a5ed8cef4f6ffff651109d2e9b37c1cd5df2517d` |
| 14 | `def` | [allPsiBoundsHold](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/declarations/allpsiboundshold--93c7d4dc1c85c287d1d86893.md) | 156 | `declaration-track:93c7d4dc1c85c287d1d86893e427350bf1501d7a57302e3545104b12f786907c` |
| 15 | `theorem` | [psiUB_succ](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/declarations/psiub-succ--18cae3cd46f51e3078ca18a4.md) | 161 | `result-track:18cae3cd46f51e3078ca18a46690ecc362aeeefa4434fbd2616c2ed49e5e8395` |
| 16 | `theorem` | [psiUB_eq_acc](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/declarations/psiub-eq-acc--2a7bf6781f40559eff8a514d.md) | 171 | `result-track:2a7bf6781f40559eff8a514dfb177fe4fa8544e9a3c74de325b31f6a3faaa01b` |
| 17 | `def` | [go_true_implies_checkPsiLeMulWith](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/declarations/go-true-implies-checkpsilemulwith--d7f0028ffa2a728ab710c12d.md) | 181 | `declaration-track:d7f0028ffa2a728ab710c12deb9229a2ca93adee902369ad3c231f47d6c88441` |
| 18 | `theorem` | [checkAllPsiLeMulWith_implies_checkPsiLeMulWith](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/declarations/checkallpsilemulwith-implies-checkpsilemulwith--aebb5975ee481a5639026efd.md) | 217 | `result-track:aebb5975ee481a5639026efd8b3401f2bd00e828c735866c85f174794c632275` |
| 19 | `theorem` | [allPsiBoundsHold_implies_checkPsiBound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variant1e06a10e95fd48cca0a48abad6311232464db05274465d73b4e53b712af392b6.lean/declarations/allpsiboundshold-implies-checkpsibound--439a6b8da86b6d9912f26b1c.md) | 225 | `result-track:439a6b8da86b6d9912f26b1c0e6d844491d87765b6d16662045ba1412df04782` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
