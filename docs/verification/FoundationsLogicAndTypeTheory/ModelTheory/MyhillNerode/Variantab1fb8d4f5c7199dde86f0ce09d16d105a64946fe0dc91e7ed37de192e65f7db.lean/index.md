# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.MyhillNerode.Variantab1fb8d4f5c7199dde86f0ce09d16d105a64946fe0dc91e7ed37de192e65f7db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a9fc6bd140eee0f92f3fa7035ea4dcd1718317b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variantab1fb8d4f5c7199dde86f0ce09d16d105a64946fe0dc91e7ed37de192e65f7db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variantab1fb8d4f5c7199dde86f0ce09d16d105a64946fe0dc91e7ed37de192e65f7db.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variantab1fb8d4f5c7199dde86f0ce09d16d105a64946fe0dc91e7ed37de192e65f7db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a9fc6bd140eee0f92f3fa7035ea4dcd1718317b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variantab1fb8d4f5c7199dde86f0ce09d16d105a64946fe0dc91e7ed37de192e65f7db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variantab1fb8d4f5c7199dde86f0ce09d16d105a64946fe0dc91e7ed37de192e65f7db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.DFA` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftQuotient](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variantab1fb8d4f5c7199dde86f0ce09d16d105a64946fe0dc91e7ed37de192e65f7db.lean/declarations/leftquotient--e85a969608fde17d322aae1c.md) | 31 | `declaration-track:e85a969608fde17d322aae1caf18fc233544d18d221c780a47c5cb2cf7efbdc6` |
| 2 | `theorem` | [leftQuotient_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variantab1fb8d4f5c7199dde86f0ce09d16d105a64946fe0dc91e7ed37de192e65f7db.lean/declarations/leftquotient-nil--eb1877351062b54b74efdf77.md) | 35 | `result-track:eb1877351062b54b74efdf77b9323f3d5f56c84d912836b728aaa0ce4860511e` |
| 3 | `theorem` | [leftQuotient_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variantab1fb8d4f5c7199dde86f0ce09d16d105a64946fe0dc91e7ed37de192e65f7db.lean/declarations/leftquotient-append--dfa1cb6403055dbaef12c384.md) | 38 | `result-track:dfa1cb6403055dbaef12c3848abd8f59c809329331b563063e0f072830a1bc9e` |
| 4 | `theorem` | [mem_leftQuotient](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variantab1fb8d4f5c7199dde86f0ce09d16d105a64946fe0dc91e7ed37de192e65f7db.lean/declarations/mem-leftquotient--91eb6e1d52005728ef56a886.md) | 43 | `result-track:91eb6e1d52005728ef56a886fbc462e532d814362eba778e174b69b4bc801467` |
| 5 | `theorem` | [leftQuotient_accepts_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variantab1fb8d4f5c7199dde86f0ce09d16d105a64946fe0dc91e7ed37de192e65f7db.lean/declarations/leftquotient-accepts-apply--2dd2540ed858efe0caca5c0f.md) | 45 | `result-track:2dd2540ed858efe0caca5c0f0dec7b695ac7238f93aba18a6842995839aecdd0` |
| 6 | `theorem` | [leftQuotient_accepts](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variantab1fb8d4f5c7199dde86f0ce09d16d105a64946fe0dc91e7ed37de192e65f7db.lean/declarations/leftquotient-accepts--83282e65b59926dde6bbea07.md) | 50 | `result-track:83282e65b59926dde6bbea073c0d2c3fed880e0f68e3e293bc730e8f62f5bffa` |
| 7 | `theorem` | [IsRegular.finite_range_leftQuotient](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variantab1fb8d4f5c7199dde86f0ce09d16d105a64946fe0dc91e7ed37de192e65f7db.lean/declarations/isregular-finite-range-leftquotient--bfc986d9a53ac8640f11e11b.md) | 53 | `result-track:bfc986d9a53ac8640f11e11b24e82a605405a895b8d70e3d30b05543596c9adb` |
| 8 | `def` | [toDFA](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variantab1fb8d4f5c7199dde86f0ce09d16d105a64946fe0dc91e7ed37de192e65f7db.lean/declarations/todfa--2cf60145ede893a3ad76b59c.md) | 62 | `declaration-track:2cf60145ede893a3ad76b59c1665c5e283fe3c34cd4963bff8cd21a68f38f14c` |
| 9 | `theorem` | [mem_accept_toDFA](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variantab1fb8d4f5c7199dde86f0ce09d16d105a64946fe0dc91e7ed37de192e65f7db.lean/declarations/mem-accept-todfa--c86e1b080054bcca667a4cf5.md) | 72 | `result-track:c86e1b080054bcca667a4cf5912469e9bf1c08dcf8dce063535630a7f5a52545` |
| 10 | `theorem` | [step_toDFA](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variantab1fb8d4f5c7199dde86f0ce09d16d105a64946fe0dc91e7ed37de192e65f7db.lean/declarations/step-todfa--1a4d5aae583b796f977e58d6.md) | 75 | `result-track:1a4d5aae583b796f977e58d674b02d51479bfcd8ab45687ea10700d51e9b76bd` |
| 11 | `theorem` | [start_toDFA](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variantab1fb8d4f5c7199dde86f0ce09d16d105a64946fe0dc91e7ed37de192e65f7db.lean/declarations/start-todfa--9edd16b791927e8e09d52197.md) | 80 | `result-track:9edd16b791927e8e09d5219789ebc647db0486354d61ae1d7940dc824e80ac6e` |
| 12 | `theorem` | [accepts_toDFA](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variantab1fb8d4f5c7199dde86f0ce09d16d105a64946fe0dc91e7ed37de192e65f7db.lean/declarations/accepts-todfa--dcf5f6d232fec7e4d91b7a59.md) | 84 | `result-track:dcf5f6d232fec7e4d91b7a5943083cd6e3e560a3424a3432e604bdb338aa4384` |
| 13 | `theorem` | [IsRegular.of_finite_range_leftQuotient](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variantab1fb8d4f5c7199dde86f0ce09d16d105a64946fe0dc91e7ed37de192e65f7db.lean/declarations/isregular-of-finite-range-leftquotient--4181b4ef48616d9df4637488.md) | 92 | `result-track:4181b4ef48616d9df463748819c1354f45b225179daaa76ba34d427bda0954a8` |
| 14 | `theorem` | [isRegular_iff_finite_range_leftQuotient](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/MyhillNerode/Variantab1fb8d4f5c7199dde86f0ce09d16d105a64946fe0dc91e7ed37de192e65f7db.lean/declarations/isregular-iff-finite-range-leftquotient--08a8dfa13fde1980924382b4.md) | 99 | `result-track:08a8dfa13fde1980924382b4b269ef4a90d7c67c571ba94a954fc061219a516d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
