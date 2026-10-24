# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticModularityObligation.Variant74631ba733e5d8824cf866cf923a0177350adaf3f5bc71ad83809a229f9edb33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c8ddfaaf77371e2bd43de110437c59673fe5a0f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variant74631ba733e5d8824cf866cf923a0177350adaf3f5bc71ad83809a229f9edb33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variant74631ba733e5d8824cf866cf923a0177350adaf3f5bc71ad83809a229f9edb33.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variant74631ba733e5d8824cf866cf923a0177350adaf3f5bc71ad83809a229f9edb33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c8ddfaaf77371e2bd43de110437c59673fe5a0f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variant74631ba733e5d8824cf866cf923a0177350adaf3f5bc71ad83809a229f9edb33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variant74631ba733e5d8824cf866cf923a0177350adaf3f5bc71ad83809a229f9edb33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.DeriveFintype` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.Conservative` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ArithmeticModularityObligation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variant74631ba733e5d8824cf866cf923a0177350adaf3f5bc71ad83809a229f9edb33.lean/declarations/arithmeticmodularityobligation--f2edc1ddcb9b9554949b5266.md) | 23 | `declaration-track:f2edc1ddcb9b9554949b5266ea02df3b751180ba0b34f6148d6afd31f049b01f` |
| 2 | `inductive` | [ArithmeticModularityStage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variant74631ba733e5d8824cf866cf923a0177350adaf3f5bc71ad83809a229f9edb33.lean/declarations/arithmeticmodularitystage--fab9b89763881660a86aa1f2.md) | 95 | `declaration-track:fab9b89763881660a86aa1f2ab2663756ea9b1d010ce936f723508acc16d3d12` |
| 3 | `def` | [ArithmeticModularityObligation.stage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variant74631ba733e5d8824cf866cf923a0177350adaf3f5bc71ad83809a229f9edb33.lean/declarations/arithmeticmodularityobligation-stage--4be653e04f7923bfe2e23218.md) | 109 | `declaration-track:4be653e04f7923bfe2e23218904ddf8c58daaa5f9722dc23505f4b30d373ae27` |
| 4 | `inductive` | [CertificateConservativeVerdict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variant74631ba733e5d8824cf866cf923a0177350adaf3f5bc71ad83809a229f9edb33.lean/declarations/certificateconservativeverdict--8b710de8c1b853623f49ce2a.md) | 184 | `declaration-track:8b710de8c1b853623f49ce2abbdacea97e048e0b598e8a32547248c7255fb32f` |
| 5 | `def` | [ofMissing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variant74631ba733e5d8824cf866cf923a0177350adaf3f5bc71ad83809a229f9edb33.lean/declarations/ofmissing--e265e411c42d86e8e75d32c5.md) | 196 | `declaration-track:e265e411c42d86e8e75d32c58d8f65624c94a5d18ba603bb545af15595aad543` |
| 6 | `def` | [IsCertified](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variant74631ba733e5d8824cf866cf923a0177350adaf3f5bc71ad83809a229f9edb33.lean/declarations/iscertified--f26e5b6ffad44c4cdf02bf29.md) | 202 | `declaration-track:f26e5b6ffad44c4cdf02bf29bc05612fe380d42a75776ef08d2e01570bd3308b` |
| 7 | `def` | [IsRefuted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variant74631ba733e5d8824cf866cf923a0177350adaf3f5bc71ad83809a229f9edb33.lean/declarations/isrefuted--ae6d23786b097651affa3750.md) | 208 | `declaration-track:ae6d23786b097651affa3750e5c27df565719e118297251fca78df15919fbea6` |
| 8 | `theorem` | [certified_sound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variant74631ba733e5d8824cf866cf923a0177350adaf3f5bc71ad83809a229f9edb33.lean/declarations/certified-sound--d63f1d43a8251162042243e3.md) | 214 | `result-track:d63f1d43a8251162042243e31b9a62ca0fcadb7953beb359676697fdbf43f314` |
| 9 | `theorem` | [refuted_sound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variant74631ba733e5d8824cf866cf923a0177350adaf3f5bc71ad83809a229f9edb33.lean/declarations/refuted-sound--83b6b854fe0e807394ade52c.md) | 224 | `result-track:83b6b854fe0e807394ade52c6a6b180f257b0ab5d7c7da732a332919d21fdcaf` |
| 10 | `def` | [unknowns](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variant74631ba733e5d8824cf866cf923a0177350adaf3f5bc71ad83809a229f9edb33.lean/declarations/unknowns--e4d168b5088744c8bd56cc68.md) | 234 | `declaration-track:e4d168b5088744c8bd56cc6802c32c893e179bf93d2e056a79cda22e5bd583de` |
| 11 | `theorem` | [not_certified_ofMissing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variant74631ba733e5d8824cf866cf923a0177350adaf3f5bc71ad83809a229f9edb33.lean/declarations/not-certified-ofmissing--6eef352317bd14479df36b5c.md) | 242 | `result-track:6eef352317bd14479df36b5cc8ac3b13ea4c58e3cd963a27c90ba63b811dfa53` |
| 12 | `theorem` | [not_refuted_ofMissing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variant74631ba733e5d8824cf866cf923a0177350adaf3f5bc71ad83809a229f9edb33.lean/declarations/not-refuted-ofmissing--dceee026bc27edbfa51561f9.md) | 248 | `result-track:dceee026bc27edbfa51561f98465dc593b6c808140bbb69b153044912c65e11a` |
| 13 | `theorem` | [unknowns_ofMissing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variant74631ba733e5d8824cf866cf923a0177350adaf3f5bc71ad83809a229f9edb33.lean/declarations/unknowns-ofmissing--d1333635b4f21ffb3141fa76.md) | 254 | `result-track:d1333635b4f21ffb3141fa76789ea8c8a3f9d2d28e56f6ba4ea3ee8e84e643d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
