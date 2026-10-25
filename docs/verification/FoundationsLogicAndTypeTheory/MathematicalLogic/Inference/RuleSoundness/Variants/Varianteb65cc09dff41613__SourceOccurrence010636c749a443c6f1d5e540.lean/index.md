# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.RuleSoundness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4153791eb7a4143cd72ed997202c8bea64266d2e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrence010636c749a443c6f1d5e540.lean/index.md) · [Full source](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrence010636c749a443c6f1d5e540.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4153791eb7a4143cd72ed997202c8bea64266d2e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.FiniteRuleSystems`](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DecisionResult](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrence010636c749a443c6f1d5e540.lean/declarations/decisionresult--7c38c166cc429e8a40b96bd4.md) | 28 | `declaration-track:7c38c166cc429e8a40b96bd4154438d10c384ada470df9a9c44ecfe54368b1df` |
| 2 | `structure` | [InterpretedRule](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrence010636c749a443c6f1d5e540.lean/declarations/interpretedrule--970995be651181ab340ab226.md) | 35 | `declaration-track:970995be651181ab340ab226c4b84f50ea10a2df36ce072800985c7a577001df` |
| 3 | `def` | [RuleSound](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrence010636c749a443c6f1d5e540.lean/declarations/rulesound--48c4b1cabcea604266e7f45a.md) | 41 | `declaration-track:48c4b1cabcea604266e7f45a690a83930b4b88b72890478f3acf2c0b7eaab2bc` |
| 4 | `structure` | [SoundRule](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrence010636c749a443c6f1d5e540.lean/declarations/soundrule--da7993a8df53a27dd368d3d1.md) | 49 | `declaration-track:da7993a8df53a27dd368d3d19b033b89b0643fb0c8789cb2b0ca795441452daf` |
| 5 | `def` | [SoundRule.route](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrence010636c749a443c6f1d5e540.lean/declarations/soundrule-route--2cf9fa25ed4bf9970434057e.md) | 55 | `declaration-track:2cf9fa25ed4bf9970434057ef4d1b1bcc093451444583c75d79411f93bc9276a` |
| 6 | `theorem` | [grounded_rules_meaning](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrence010636c749a443c6f1d5e540.lean/declarations/grounded-rules-meaning--6a0ae78165c30442289ebb75.md) | 62 | `result-track:6a0ae78165c30442289ebb757f1a319b4b0d78fbb84dbe4a1c18f8aae73a2ade` |
| 7 | `structure` | [CertificateChecker](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrence010636c749a443c6f1d5e540.lean/declarations/certificatechecker--b89e3a45a2186767cadd6b19.md) | 78 | `declaration-track:b89e3a45a2186767cadd6b19f7aec9a5016406063c831c0fef6b6061e889459c` |
| 8 | `def` | [CertificateChecker.Accepts](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrence010636c749a443c6f1d5e540.lean/declarations/certificatechecker-accepts--92e06ca3efe8536a9ae7ef18.md) | 88 | `declaration-track:92e06ca3efe8536a9ae7ef188d176f08f01a229ca22dba4ef8dff5f6a475e0dc` |
| 9 | `theorem` | [CertificateChecker.meaning_of_accepts](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrence010636c749a443c6f1d5e540.lean/declarations/certificatechecker-meaning-of-accepts--38340e0372445bb20024bef5.md) | 97 | `result-track:38340e0372445bb20024bef5a17836a7ae2b0b02e6fbeebc012a978328dd2202` |
| 10 | `def` | [CertificateChecker.Covers](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrence010636c749a443c6f1d5e540.lean/declarations/certificatechecker-covers--1d729f989d3c2bfce6d1a3e5.md) | 111 | `declaration-track:1d729f989d3c2bfce6d1a3e588ce75228711fa58ed7c6fa36df06cd85c09f071` |
| 11 | `theorem` | [CertificateChecker.meaning_of_complete_coverage](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrence010636c749a443c6f1d5e540.lean/declarations/certificatechecker-meaning-of-complete-coverage--cb87b73b0617ecd42bd30187.md) | 121 | `result-track:cb87b73b0617ecd42bd301875851beb9e48ef2cd779b076e35bccfca75403352` |
| 12 | `theorem` | [CertificateChecker.unknown_not_accepts](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrence010636c749a443c6f1d5e540.lean/declarations/certificatechecker-unknown-not-accepts--06b22c91590fedd76fdabbac.md) | 135 | `result-track:06b22c91590fedd76fdabbac41269034e4930b6da6a1c68e758fbf33a8494713` |
| 13 | `structure` | [CheckedByteInterface](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrence010636c749a443c6f1d5e540.lean/declarations/checkedbyteinterface--73ba35366bbecf5ce4cd3d65.md) | 147 | `declaration-track:73ba35366bbecf5ce4cd3d65391b973a635630c81a6a1779d53470076fadaebf` |
| 14 | `theorem` | [CheckedByteInterface.accepted_meaning](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrence010636c749a443c6f1d5e540.lean/declarations/checkedbyteinterface-accepted-meaning--08a686150bd4d0c0a563006a.md) | 160 | `result-track:08a686150bd4d0c0a563006a6221dc28fd59635395eae396ba74f4d761160da0` |
| 15 | `theorem` | [unknown_ne_accept](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrence010636c749a443c6f1d5e540.lean/declarations/unknown-ne-accept--0c54ee64775c8a154cd98e3c.md) | 179 | `result-track:0c54ee64775c8a154cd98e3c71c6b7707998d9748fa6b7b5f07d695e439a479f` |
| 16 | `theorem` | [reject_ne_accept](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrence010636c749a443c6f1d5e540.lean/declarations/reject-ne-accept--3f2717e1c0a1f1139ce05a7e.md) | 183 | `result-track:3f2717e1c0a1f1139ce05a7ea952a698233cd83860b648d4d49ccef71d01b62a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
