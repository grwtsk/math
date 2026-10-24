# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MajorityCrossing.Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c67d361997688018e4bfadf52108e49c4f68304",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c67d361997688018e4bfadf52108e49c4f68304`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [majorityThreshold](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean/declarations/majoritythreshold--f8ae4e9b430e98f24a0df514.md) | 21 | `declaration-track:f8ae4e9b430e98f24a0df51478cdf4549db9d5fda03bdc1443c5933d46c23a75` |
| 2 | `def` | [Crosses](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean/declarations/crosses--c83e33b93232aa1c54194597.md) | 24 | `declaration-track:c83e33b93232aa1c5419459730703239b409e595e5e38d601b91b7adf229e672` |
| 3 | `def` | [IsPrimitiveCrossing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean/declarations/isprimitivecrossing--9201cb63d54efc599dc90b6d.md) | 29 | `declaration-track:9201cb63d54efc599dc90b6d0faba3f8b98288f08a6b1e85ef42892e5c8fe37f` |
| 4 | `theorem` | [primitiveCrossing_crosses](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean/declarations/primitivecrossing-crosses--fa0586dcf224718f4620f203.md) | 35 | `result-track:fa0586dcf224718f4620f2030942ba0b78d2218d31679d1545795803cf3fba27` |
| 5 | `theorem` | [primitiveCrossing_minimal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean/declarations/primitivecrossing-minimal--3afa5fefea0608c11dba849e.md) | 46 | `result-track:3afa5fefea0608c11dba849e8cc4a30bf1095b112f59cb0e15820bda35cd342e` |
| 6 | `def` | [selectedCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean/declarations/selectedcount--6b1552e1659a0a2d58ec2a31.md) | 62 | `declaration-track:6b1552e1659a0a2d58ec2a31657cc67b66fda6f67b53fefd3fdf59088fc4a489` |
| 7 | `def` | [ProperPrefix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean/declarations/properprefix--269fa6aeb9c6a0aa135a5d9a.md) | 65 | `declaration-track:269fa6aeb9c6a0aa135a5d9aad2fed1ec46b3fbc30a380012478f58a002d3ef6` |
| 8 | `structure` | [IsFirstCrossingCode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean/declarations/isfirstcrossingcode--a759ba89b849a4dbc00e64b6.md) | 69 | `declaration-track:a759ba89b849a4dbc00e64b6f80945b14a1c3bf7ebba79ee87e6327910e6b056` |
| 9 | `structure` | [FirstCrossingCode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean/declarations/firstcrossingcode--28fa6be25810f5259d8004fe.md) | 89 | `declaration-track:28fa6be25810f5259d8004fe6a1982cbbeb0732ea80f944af2c4758b5c79c12f` |
| 10 | `theorem` | [firstCrossing_crosses](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean/declarations/firstcrossing-crosses--8a685f23e1981c5b1b24545f.md) | 96 | `result-track:8a685f23e1981c5b1b24545f4f57354a99f847f631c474cb4cf1b2c353fc0194` |
| 11 | `theorem` | [majority_crossing_prefix_free](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean/declarations/majority-crossing-prefix-free--13c0637f83f809eb0cf48186.md) | 106 | `result-track:13c0637f83f809eb0cf4818684882954067fa6f9f1d8628253ec13c05ee0fdbd` |
| 12 | `structure` | [MajorityCrossingBijectionCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean/declarations/majoritycrossingbijectioncertificate--b3e2fec3d5efb05d8a82dda3.md) | 128 | `declaration-track:b3e2fec3d5efb05d8a82dda32582d4b975be6e69027485d8c3947f13fe2e1c94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
