# Verification target: GRWTSK.NumberTheory.Moebius.CenteredLowGCDRestrictedMobiusLog

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63da93bf88928ffc712002a77c1db9ba8ef7bd7c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63da93bf88928ffc712002a77c1db9ba8ef7bd7c`.

Source path: `GRWTSK/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDCoefficients`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Data.Nat.Factorization.Induction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coprimeRestrictedMobius](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/declarations/coprimerestrictedmobius--cdbbc22aefa1c335b10ba0e0.md) | 41 | `declaration-track:cdbbc22aefa1c335b10ba0e0e4e673a5e297193f3eb1e11e24ea9bb06020978a` |
| 2 | `theorem` | [coprimeRestrictedMobius_apply](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/declarations/coprimerestrictedmobius-apply--6dc81682a064ffd8b73c42a4.md) | 49 | `result-track:6dc81682a064ffd8b73c42a4a6371a96452f25a4c2b8f419210ac90b3e0f9306` |
| 3 | `theorem` | [mobiusReal_mul_of_coprime](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/declarations/mobiusreal-mul-of-coprime--cf627fb1fcd393680a78edca.md) | 56 | `result-track:cf627fb1fcd393680a78edcacdf06bc87cef92d15c8d547e1175943437d5a535` |
| 4 | `theorem` | [isMultiplicative_coprimeRestrictedMobius](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/declarations/ismultiplicative-coprimerestrictedmobius--3f8a400a9ed520b4c6139c8b.md) | 65 | `result-track:3f8a400a9ed520b4c6139c8b425af31515351c113406bac95280eaf255fa6cdd` |
| 5 | `def` | [coprimeRestrictedMobiusDivisorIndicator](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/declarations/coprimerestrictedmobiusdivisorindicator--ec2adad501563eba411c3c38.md) | 82 | `declaration-track:ec2adad501563eba411c3c38c935e7bfa4d63b5e0aa68af3f18fcaa5591b4d23` |
| 6 | `def` | [coprimeRestrictedMobiusLog](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/declarations/coprimerestrictedmobiuslog--50f2cab30c9c992f60047eff.md) | 88 | `declaration-track:50f2cab30c9c992f60047eff1c69f8a6262bf7328dc9a4068d795cd5a5b0c853` |
| 7 | `theorem` | [isMultiplicative_coprimeRestrictedMobiusDivisorIndicator](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/declarations/ismultiplicative-coprimerestrictedmobiusdivisorindicator--10535b9b4c40e51b35173bae.md) | 93 | `result-track:10535b9b4c40e51b35173bae140523d8ab1d143c34df55c6cd8c752e3691f4c8` |
| 8 | `theorem` | [coprimeRestrictedMobiusDivisorIndicator_prime_pow](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/declarations/coprimerestrictedmobiusdivisorindicator-prime-pow--ca9a6fde836d25d7c222869e.md) | 101 | `result-track:ca9a6fde836d25d7c222869e5c2b625694fcd61a3115026642e313383f70f8cc` |
| 9 | `theorem` | [coprimeRestrictedMobiusDivisorIndicator_eq_zero_or_one](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/declarations/coprimerestrictedmobiusdivisorindicator-eq-zero-or-one--7d2d7b7fa081a339239ce79e.md) | 171 | `result-track:7d2d7b7fa081a339239ce79e5deacc6ec1df7a20c3ec9183f1ad92d193cace13` |
| 10 | `theorem` | [coprimeRestrictedMobiusDivisorIndicator_mem_Icc](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/declarations/coprimerestrictedmobiusdivisorindicator-mem-icc--6cd19e2d8060d41ee1166f3c.md) | 194 | `result-track:6cd19e2d8060d41ee1166f3c07208c2c26db0ead8c48a0660b7151b26edd4302` |
| 11 | `theorem` | [coprimeRestrictedMobiusLog_eq_indicator_mul_vonMangoldt](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/declarations/coprimerestrictedmobiuslog-eq-indicator-mul-vonmangoldt--8c568921fadd10856d180f29.md) | 203 | `result-track:8c568921fadd10856d180f29658889ab95af5e946b22231420749803236ecc49` |
| 12 | `theorem` | [coprimeRestrictedMobiusLog_mem_Icc](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/declarations/coprimerestrictedmobiuslog-mem-icc--82e9f392a7add18a069b58d4.md) | 215 | `result-track:82e9f392a7add18a069b58d4ac03b463ff06a79d218789de661470d810fd39dd` |
| 13 | `theorem` | [abs_coprimeRestrictedMobiusLog_le_log](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/declarations/abs-coprimerestrictedmobiuslog-le-log--1694e0985757348b40199332.md) | 252 | `result-track:1694e0985757348b40199332d47b1051ba78b389e308d92fd6daffe23c4c1376` |
| 14 | `theorem` | [mobiusReal_mul_eq_restricted](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/declarations/mobiusreal-mul-eq-restricted--53e8742c4595cad7fe94656a.md) | 263 | `result-track:53e8742c4595cad7fe94656ad342c2daec8379915a2cd29c92913bf2568f7aa3` |
| 15 | `def` | [restrictedProductMobiusLogBlock](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/declarations/restrictedproductmobiuslogblock--82f2567c0bbc9c47b93d8b11.md) | 278 | `declaration-track:82f2567c0bbc9c47b93d8b11a99705fd9be13f206deef60da129df63bd6873c5` |
| 16 | `theorem` | [restrictedProductMobiusLogBlock_eq](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/declarations/restrictedproductmobiuslogblock-eq--d8c013c4afd93bbe6b1f5074.md) | 285 | `result-track:d8c013c4afd93bbe6b1f5074e9cad205ba124668b067dbbde93b7e82b4b82ef8` |
| 17 | `theorem` | [abs_restrictedProductMobiusLogBlock_le_log](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/declarations/abs-restrictedproductmobiuslogblock-le-log--e6cba8c3e2353fbcb1fae959.md) | 302 | `result-track:e6cba8c3e2353fbcb1fae9593cb5144167eeac3dc188d8215447246153b08f06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
