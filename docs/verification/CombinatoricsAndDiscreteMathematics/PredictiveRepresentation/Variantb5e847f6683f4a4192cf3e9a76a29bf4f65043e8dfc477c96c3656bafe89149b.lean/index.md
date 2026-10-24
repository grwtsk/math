# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PredictiveRepresentation.Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f25bd59cdba6ed11a3f8d7e63f2642dd70bc56f9",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f25bd59cdba6ed11a3f8d7e63f2642dd70bc56f9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.CausalState` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PredictiveRepresentation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/predictiverepresentation--c172ee8ddc0261cab804768d.md) | 45 | `declaration-track:c172ee8ddc0261cab804768d536b98949bf2198bc39d41b9212f9b340860e4e9` |
| 2 | `def` | [run](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/run--adbcb794bbda15b5dc9a43a5.md) | 62 | `declaration-track:adbcb794bbda15b5dc9a43a51e5a63dfb91ccaadabcfa7f7b177abe499ce9d92` |
| 3 | `theorem` | [run_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/run-nil--3f92beafd88d4d1fbc654ce9.md) | 67 | `result-track:3f92beafd88d4d1fbc654ce986b4971e9792447437bf8e7f4e7658c63e72cf0e` |
| 4 | `theorem` | [run_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/run-cons--350de01d213231d8b7a4274f.md) | 71 | `result-track:350de01d213231d8b7a4274f073df6f5ffcc8ba593970fc21284bee346624a2c` |
| 5 | `theorem` | [encode_run](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/encode-run--7621d117eeb9874992bcde1b.md) | 76 | `result-track:7621d117eeb9874992bcde1b0dc6c30ef10eb28ac4501d1488757af71e74e88a` |
| 6 | `theorem` | [read_run_encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/read-run-encode--cd76194f723bc5415ad7f5f8.md) | 85 | `result-track:cd76194f723bc5415ad7f5f8f2dbf605da7777740b8853b066bef3880667a090` |
| 7 | `theorem` | [encode_eq_implies_causalEquivalent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/encode-eq-implies-causalequivalent--c6e10ef4019c6c495d94cbcd.md) | 97 | `result-track:c6e10ef4019c6c495d94cbcd174d4d49421be3bfd395e198f2aa4b0e51ba95c3` |
| 8 | `def` | [EffectiveMemory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/effectivememory--502a02b1c20b1b183595d143.md) | 108 | `declaration-track:502a02b1c20b1b183595d1439172e6c10e2c0192125debca9eb734741af89768` |
| 9 | `def` | [toEffectiveMemory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/toeffectivememory--1ad8fa2925798489a7bc2b1f.md) | 112 | `declaration-track:1ad8fa2925798489a7bc2b1f77238a352ae384dd5cbf08dd1a5b04765e65c72c` |
| 10 | `theorem` | [toEffectiveMemory_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/toeffectivememory-surjective--6ca9821e8c9ef6b4212c40cb.md) | 116 | `result-track:6ca9821e8c9ef6b4212c40cb45acc44be0db3c69f7c7b35d7d4d9015ecf5398e` |
| 11 | `def` | [effectiveStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/effectivestep--563002b94ab47865819ed5a9.md) | 124 | `declaration-track:563002b94ab47865819ed5a94dcb591d09b0f004ac7b3ce19f8e1fa06cb97c55` |
| 12 | `def` | [effectiveRead](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/effectiveread--f791ae8a0ceb514e97e1d66b.md) | 132 | `declaration-track:f791ae8a0ceb514e97e1d66b89f50b3477a0516f930d57530cf650419c0fd52c` |
| 13 | `theorem` | [effectiveStep_toEffectiveMemory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/effectivestep-toeffectivememory--3a50eff46e51b4df57b59342.md) | 137 | `result-track:3a50eff46e51b4df57b59342ca04df264dec60c8f0121a8356f07b832b14ae69` |
| 14 | `theorem` | [effectiveRead_toEffectiveMemory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/effectiveread-toeffectivememory--5fd9d6986fba141001e35273.md) | 144 | `result-track:5fd9d6986fba141001e3527343ecd331041003ae6d81f886b9cc876bd5bb7e26` |
| 15 | `def` | [effectiveToCausal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/effectivetocausal--9b911aebb21649d04d4660f7.md) | 155 | `declaration-track:9b911aebb21649d04d4660f74158714cf329a898fc7ff69448db9e6dffac4f7c` |
| 16 | `theorem` | [effectiveToCausal_toEffectiveMemory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/effectivetocausal-toeffectivememory--1affc0e30d4f87012f42be8a.md) | 161 | `result-track:1affc0e30d4f87012f42be8a15eac2e48beaab6b2e707621cb1a7c1c3e037b73` |
| 17 | `theorem` | [effectiveToCausal_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/effectivetocausal-surjective--d2cc1a24d70c7b23728b89ae.md) | 169 | `result-track:d2cc1a24d70c7b23728b89aed40df64191feb92397fbc244e3856644acc81676` |
| 18 | `theorem` | [effectiveToCausal_step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/effectivetocausal-step--c3c276b2ae2bdddaeaf93a79.md) | 178 | `result-track:c3c276b2ae2bdddaeaf93a79f5aa5f3e102e126d1f280cb07ea02e7c2d923eca` |
| 19 | `theorem` | [effectiveToCausal_read](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/effectivetocausal-read--2352f13c5794816194ed6026.md) | 187 | `result-track:2352f13c5794816194ed602669943d5cef6aaf2a0c1cef9856f962e520199830` |
| 20 | `theorem` | [effectiveToCausal_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/effectivetocausal-unique--329c6a4e2a918174505959c1.md) | 199 | `result-track:329c6a4e2a918174505959c115ad2f08bffaa7bcb100eca57ade989c3cb76f7f` |
| 21 | `theorem` | [causalState_terminal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/causalstate-terminal--3758cee1cf5096a4aacf325f.md) | 209 | `result-track:3758cee1cf5096a4aacf325f68e594adcddcb887faf382b3f77649f58f8c7b8e` |
| 22 | `def` | [Exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/exact--b5d7e6e85edc51c99159bcff.md) | 220 | `declaration-track:b5d7e6e85edc51c99159bcfff711d56b29b4763a682d75a498478bfd14cc07f9` |
| 23 | `theorem` | [effectiveToCausal_injective_of_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/effectivetocausal-injective-of-exact--94e3f4ffed837bda6dfa0253.md) | 224 | `result-track:94e3f4ffed837bda6dfa025323fd5ac499a5803b0437adbe16a82dc1e2a4affc` |
| 24 | `def` | [effectiveMemoryEquivCausalState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/effectivememoryequivcausalstate--a570b728491c634dd9b54cdf.md) | 236 | `declaration-track:a570b728491c634dd9b54cdfcc9bdbd5796a1d4ca0cccea6494efcd040d8d6b5` |
| 25 | `theorem` | [card_causalState_le_effectiveMemory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/card-causalstate-le-effectivememory--12086c245ab9ec8b63c471dd.md) | 246 | `result-track:12086c245ab9ec8b63c471dd48fd7f05f0214b3da44c48997581282ce94b7444` |
| 26 | `theorem` | [card_effectiveMemory_le_memory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/card-effectivememory-le-memory--235288d021d81d4185d5439b.md) | 255 | `result-track:235288d021d81d4185d5439b122b0cf9e89d1b6feb0e6794dd3e440fd1870835` |
| 27 | `theorem` | [card_causalState_le_memory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/card-causalstate-le-memory--cd46afde3a95424ae869325b.md) | 263 | `result-track:cd46afde3a95424ae869325b10657ef5c88cab254617d0ac6607029c50cd5f76` |
| 28 | `theorem` | [card_causalState_le_memory_of_finite_memory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/card-causalstate-le-memory-of-finite-memory--fe7bc7d99dae4026a72eba48.md) | 277 | `result-track:fe7bc7d99dae4026a72eba483a464c46b8e8d89ac157cfcf65ede69b554d2de0` |
| 29 | `theorem` | [card_causalState_le_memory_of_finite_state](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/card-causalstate-le-memory-of-finite-state--e660b7036cf93c7e367844cd.md) | 294 | `result-track:e660b7036cf93c7e367844cd91d458ee3e19a52de5cac57eab41ade1e8c6b2af` |
| 30 | `theorem` | [natCard_causalState_le_memory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/declarations/natcard-causalstate-le-memory--8b98dad934f4eff9465284f3.md) | 306 | `result-track:8b98dad934f4eff9465284f3aea86c7a88899c1eb489e9fa08709910941da733` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
