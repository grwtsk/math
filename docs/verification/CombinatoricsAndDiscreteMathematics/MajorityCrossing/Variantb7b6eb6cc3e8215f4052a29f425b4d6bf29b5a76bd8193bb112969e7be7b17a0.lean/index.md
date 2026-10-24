# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MajorityCrossing.Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73efe2675e3d4194e494af3cf7a463fb1ee0c9e3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73efe2675e3d4194e494af3cf7a463fb1ee0c9e3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [majorityThreshold](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0.lean/declarations/majoritythreshold--73bfef1b98b1f893710a4ce1.md) | 13 | `declaration-track:73bfef1b98b1f893710a4ce1a6f590681893cf167f24215e8c0e81746a8a1067` |
| 2 | `def` | [Crosses](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0.lean/declarations/crosses--4577ef16d0d96939f48d9eb9.md) | 16 | `declaration-track:4577ef16d0d96939f48d9eb97234af11ae080a9b10db05c4ac7d36c7e4284e78` |
| 3 | `def` | [IsPrimitiveCrossing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0.lean/declarations/isprimitivecrossing--652749295c37cb16ba8cdea6.md) | 21 | `declaration-track:652749295c37cb16ba8cdea63ceceaacd634398a6f6cda146d4883cedd9c4a7a` |
| 4 | `theorem` | [primitiveCrossing_crosses](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0.lean/declarations/primitivecrossing-crosses--21e60b3465a35c868ad85f9b.md) | 27 | `result-track:21e60b3465a35c868ad85f9b3acfd3243a3c3432384686d894670f8bda440e34` |
| 5 | `theorem` | [primitiveCrossing_minimal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0.lean/declarations/primitivecrossing-minimal--df09525654d77b4b2cd19b7d.md) | 38 | `result-track:df09525654d77b4b2cd19b7d058559560cd8e82e5d775aae7718f838b78f0c8c` |
| 6 | `def` | [selectedCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0.lean/declarations/selectedcount--77aba8ba64e0bf592ce3a6f8.md) | 54 | `declaration-track:77aba8ba64e0bf592ce3a6f87e3f6e585f19c94d84641bc5437cd8640294f7e2` |
| 7 | `def` | [ProperPrefix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0.lean/declarations/properprefix--f820878ed16f8fa6a6008305.md) | 57 | `declaration-track:f820878ed16f8fa6a6008305b0f4f2c9fff2d0137d922dfed9a7a9e09f7c73cf` |
| 8 | `structure` | [IsFirstCrossingCode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0.lean/declarations/isfirstcrossingcode--c6ffb928756cf925740af9fe.md) | 61 | `declaration-track:c6ffb928756cf925740af9febc393d974d2713b12e982d64e69e6eddd36737f2` |
| 9 | `structure` | [FirstCrossingCode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0.lean/declarations/firstcrossingcode--b7e3dd1d018b2ef1fac3db01.md) | 81 | `declaration-track:b7e3dd1d018b2ef1fac3db010d722d239196d7d01f4888408506c6a980215012` |
| 10 | `theorem` | [firstCrossing_crosses](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0.lean/declarations/firstcrossing-crosses--e398b28016dd1e7a7f84fe4f.md) | 88 | `result-track:e398b28016dd1e7a7f84fe4f1b3b3bcd8c940f11fa1e67205f9d3ceaa98e321e` |
| 11 | `theorem` | [majority_crossing_prefix_free](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0.lean/declarations/majority-crossing-prefix-free--6185103c70dc78840320b3d8.md) | 98 | `result-track:6185103c70dc78840320b3d8700d6fa77155187558d2504e7b4662abd14c70b8` |
| 12 | `structure` | [MajorityCrossingBijectionCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0.lean/declarations/majoritycrossingbijectioncertificate--81051a90b36ef459624c10b0.md) | 120 | `declaration-track:81051a90b36ef459624c10b04fcf9f6730ccaee7198fa2cf8b48807716cdbec3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
