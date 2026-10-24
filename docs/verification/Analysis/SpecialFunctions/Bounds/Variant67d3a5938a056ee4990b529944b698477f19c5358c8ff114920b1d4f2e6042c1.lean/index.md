# Verification target: GRWTSK.Analysis.SpecialFunctions.Bounds.Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6a99b043c73ea5a1bfd993175b89baf7c38b45d",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6a99b043c73ea5a1bfd993175b89baf7c38b45d`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pi_gt_sqrtTwoAddSeries](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/declarations/pi-gt-sqrttwoaddseries--ee591ca889c8ff09a4504ca9.md) | 24 | `result-track:ee591ca889c8ff09a4504ca9008e092f2fbf1eb892ef48dec68f27435754c949` |
| 2 | `theorem` | [pi_lt_sqrtTwoAddSeries](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/declarations/pi-lt-sqrttwoaddseries--3a780b2f8ba67162466a3018.md) | 34 | `result-track:3a780b2f8ba67162466a3018734361fe0172ff471a5d85eeaf5f568f26afca26` |
| 3 | `theorem` | [pi_lower_bound_start](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/declarations/pi-lower-bound-start--ba00d2b7425f60ba26a29eb1.md) | 57 | `result-track:ba00d2b7425f60ba26a29eb1d4db159f84bc748e2b931a52c6512f55b3b1421a` |
| 4 | `theorem` | [sqrtTwoAddSeries_step_up](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/declarations/sqrttwoaddseries-step-up--db6f45f054bf6d868346997d.md) | 64 | `result-track:db6f45f054bf6d868346997dd4e2cd5e54428649848d79912adf36a47fdb5512` |
| 5 | `theorem` | [pi_upper_bound_start](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/declarations/pi-upper-bound-start--d8ea6a45365989f54be392ab.md) | 77 | `result-track:d8ea6a45365989f54be392ab912f8a0acabb75a40b8504e28285798b846ae1d9` |
| 6 | `theorem` | [sqrtTwoAddSeries_step_down](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/declarations/sqrttwoaddseries-step-down--6cab28e35a932c4049ab43d3.md) | 87 | `result-track:6cab28e35a932c4049ab43d3cddb9409f586c3f8d408a317f70316ce90628704` |
| 7 | `elab` | [(anonymous)](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/declarations/elab--8c4238b9066a50d776e1d07b.md) | 104 | `declaration-track:8c4238b9066a50d776e1d07bcbb788305744311b62bf18734d8b9a1f26d63a7d` |
| 8 | `elab` | [(anonymous)](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/declarations/elab--b6e9aa72ab37a207381cc3f2.md) | 117 | `declaration-track:b6e9aa72ab37a207381cc3f2d2b712dc0a9ef705d31d18056f818ce9971226ca` |
| 9 | `theorem` | [pi_gt_three](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/declarations/pi-gt-three--5600c2844050b345073028a8.md) | 151 | `result-track:5600c2844050b345073028a8b3528d42df0906928ebc899514a82d4d0ed3380f` |
| 10 | `theorem` | [pi_lt_four](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/declarations/pi-lt-four--23bd609b63f792913eca46c4.md) | 155 | `result-track:23bd609b63f792913eca46c406ba57abc3971c64dd34af6516e547c19e55849a` |
| 11 | `theorem` | [pi_gt_d2](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/declarations/pi-gt-d2--b90f8f88b9431befaeb26ac4.md) | 159 | `result-track:b90f8f88b9431befaeb26ac4b43bd3c065aadf2d2e9cfa5b37b37d351f9bb63d` |
| 12 | `theorem` | [pi_lt_d2](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/declarations/pi-lt-d2--46dfce28b594cc84e2447595.md) | 163 | `result-track:46dfce28b594cc84e2447595ecd9698f6cee6c9b107c36f2112ef7271d494f52` |
| 13 | `theorem` | [pi_gt_d4](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/declarations/pi-gt-d4--6cbfafb19714b5bf263018ea.md) | 167 | `result-track:6cbfafb19714b5bf263018ea791b890b3b31938eeec416af36ec22fe0a763c96` |
| 14 | `theorem` | [pi_lt_d4](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/declarations/pi-lt-d4--92989a0b7ef1e805631a2c13.md) | 172 | `result-track:92989a0b7ef1e805631a2c13d59d0f7c4197d15d760f2cded86cb9aaa14d7bb6` |
| 15 | `theorem` | [pi_gt_d6](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/declarations/pi-gt-d6--2e28513c708fb04491499e5e.md) | 178 | `result-track:2e28513c708fb04491499e5e375377e61b5a5e46a274542d49144e585feae9d0` |
| 16 | `theorem` | [pi_lt_d6](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/declarations/pi-lt-d6--ea7e5d3ed983a71c03d5a408.md) | 184 | `result-track:ea7e5d3ed983a71c03d5a408a1abd8dc50c750c5f87ee55f2ad15d5de2cc1aa3` |
| 17 | `theorem` | [pi_gt_d20](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/declarations/pi-gt-d20--7ab93e1d8d1584f101452283.md) | 190 | `result-track:7ab93e1d8d1584f101452283f7d7901d93e2b8cffae88c9a7c7c05e6aac426ce` |
| 18 | `theorem` | [pi_lt_d20](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/declarations/pi-lt-d20--751c9e12748236921dd87a63.md) | 206 | `result-track:751c9e12748236921dd87a6378028086d63089e3b48305814866dae2881dd8c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
