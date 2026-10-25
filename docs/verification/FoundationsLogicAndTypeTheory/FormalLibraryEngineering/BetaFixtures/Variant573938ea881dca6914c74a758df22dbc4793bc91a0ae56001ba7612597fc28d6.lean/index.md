# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BetaFixtures.Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c964fd0aa930303a64419669a8771c0c92cd846",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaFixtures/Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaFixtures/Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaFixtures/Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c964fd0aa930303a64419669a8771c0c92cd846`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaFixtures/Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaFixtures/Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.IntendedPTS` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.TypeTheory.PureTypeSystem.BetaNormalizer` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Reduction.Fixtures` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [identityRedex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaFixtures/Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6.lean/declarations/identityredex--23e63a49c44cb02fadaeaf48.md) | 19 | `declaration-track:23e63a49c44cb02fadaeaf48ded4ec04d945a469a54fad1a4753607454de25e3` |
| 2 | `theorem` | [identity_next](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaFixtures/Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6.lean/declarations/identity-next--671fa0516805352db3dc605c.md) | 22 | `result-track:671fa0516805352db3dc605c006acbe14e133a17c6181f0bbcf8960cd22c3a58` |
| 3 | `theorem` | [identity_normalizes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaFixtures/Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6.lean/declarations/identity-normalizes--dbd47a7ffe2de9956f4f3f78.md) | 25 | `result-track:dbd47a7ffe2de9956f4f3f78080a77e03802999cfd1fb37fc3a47e2d6c357ada` |
| 4 | `theorem` | [identity_zero_fuel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaFixtures/Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6.lean/declarations/identity-zero-fuel--f6d516802c52ef41f53003a0.md) | 28 | `result-track:f6d516802c52ef41f53003a0d1756c9d2832687c2860a53b9ef06bf59aff461f` |
| 5 | `theorem` | [identity_source_typing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaFixtures/Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6.lean/declarations/identity-source-typing--007550367573930170d78a68.md) | 31 | `result-track:007550367573930170d78a689f999c6b046be0081ad34d204a0c319fe8b7defa` |
| 6 | `theorem` | [body_redex_typing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaFixtures/Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6.lean/declarations/body-redex-typing--b5d96c49509bab90d0d1187e.md) | 36 | `result-track:b5d96c49509bab90d0d1187eac12baacb9f0b91ed2c4cfec23c0614f5eeeaf25` |
| 7 | `theorem` | [body_normalizes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaFixtures/Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6.lean/declarations/body-normalizes--d45a350ebfccd25bcaa9bfd2.md) | 43 | `result-track:d45a350ebfccd25bcaa9bfd270d8f47d195f50ca6e14395edffdc412300835fc` |
| 8 | `theorem` | [annotation_next](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaFixtures/Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6.lean/declarations/annotation-next--8762f9dbdecebd050d3ded1e.md) | 48 | `result-track:8762f9dbdecebd050d3ded1e695b1d3afa1a3ffe13f8ba14e07e4a4b4c1e3fcd` |
| 9 | `theorem` | [product_domain_next](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaFixtures/Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6.lean/declarations/product-domain-next--528b14988033d0c6f12c4869.md) | 52 | `result-track:528b14988033d0c6f12c4869fc6ecc43c6f1286ff9072c4f6fd31291df1480fb` |
| 10 | `theorem` | [product_codomain_next](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaFixtures/Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6.lean/declarations/product-codomain-next--eb2157a074f0642f7bab8b6c.md) | 56 | `result-track:eb2157a074f0642f7bab8b6c34916e20d6bb07989705c886123776a5c9274c3f` |
| 11 | `def` | [omegaFunction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaFixtures/Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6.lean/declarations/omegafunction--1250ff239dff713a592525e9.md) | 60 | `declaration-track:1250ff239dff713a592525e9541297d8c4b7d919d36c6b187b40f30c93599448` |
| 12 | `def` | [omegaTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaFixtures/Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6.lean/declarations/omegaterm--49179133f53660b008cea689.md) | 63 | `declaration-track:49179133f53660b008cea6893c00d3aa8020f15a2c3234eae789ab5492782b17` |
| 13 | `theorem` | [omega_self_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaFixtures/Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6.lean/declarations/omega-self-step--65878414fdbaf146da4dacc0.md) | 66 | `result-track:65878414fdbaf146da4dacc000d27d023ee070f685911a2b69ed2858859ae4cc` |
| 14 | `theorem` | [omega_not_strongly_normalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaFixtures/Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6.lean/declarations/omega-not-strongly-normalizing--389b02d810878bcdf0a26fe3.md) | 69 | `result-track:389b02d810878bcdf0a26fe3a3b3274717c40a96e876831a579558ecfcea1cf7` |
| 15 | `theorem` | [omega_fuel_failure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaFixtures/Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6.lean/declarations/omega-fuel-failure--2b9f042f12923eb0e8137ec5.md) | 73 | `result-track:2b9f042f12923eb0e8137ec585720239a816e873bb1a74671f0c1c91212e137f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
