# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Mobius.Variantaf0d80861238501ab6d89f752b82012a33298ca599dd8e8a7e2260f88ef54d3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0f679d821ddb0e673b6928ab1231ce41cf972a4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantaf0d80861238501ab6d89f752b82012a33298ca599dd8e8a7e2260f88ef54d3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantaf0d80861238501ab6d89f752b82012a33298ca599dd8e8a7e2260f88ef54d3f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantaf0d80861238501ab6d89f752b82012a33298ca599dd8e8a7e2260f88ef54d3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0f679d821ddb0e673b6928ab1231ce41cf972a4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantaf0d80861238501ab6d89f752b82012a33298ca599dd8e8a7e2260f88ef54d3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantaf0d80861238501ab6d89f752b82012a33298ca599dd8e8a7e2260f88ef54d3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Number.EulerProduct` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteMobiusWindow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantaf0d80861238501ab6d89f752b82012a33298ca599dd8e8a7e2260f88ef54d3f.lean/declarations/finitemobiuswindow--5a98ff6ddcf268666692d955.md) | 24 | `declaration-track:5a98ff6ddcf268666692d955db59569674bd84ae2454fe2c957e059ac7c16ae7` |
| 2 | `theorem` | [finite_mobius_window_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantaf0d80861238501ab6d89f752b82012a33298ca599dd8e8a7e2260f88ef54d3f.lean/declarations/finite-mobius-window-sound--186ddc087b4abe429b02d2ea.md) | 32 | `result-track:186ddc087b4abe429b02d2ea453841a75733bf690fbbb76f2cf4dc5680bb33dc` |
| 3 | `def` | [FiniteMobiusWindow.toArithmeticPayload](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantaf0d80861238501ab6d89f752b82012a33298ca599dd8e8a7e2260f88ef54d3f.lean/declarations/finitemobiuswindow-toarithmeticpayload--13ded9c6dd413b82e2c72532.md) | 38 | `declaration-track:13ded9c6dd413b82e2c7253277279cd2cd0437f9545165b9b6ec8233e6138d9c` |
| 4 | `theorem` | [finiteMobius_toPayload_weight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantaf0d80861238501ab6d89f752b82012a33298ca599dd8e8a7e2260f88ef54d3f.lean/declarations/finitemobius-topayload-weight--ff22b5920b2802f5fb1cd9a1.md) | 50 | `result-track:ff22b5920b2802f5fb1cd9a12c290847a7c57dc22393ec9912ba5c91a8efa42c` |
| 5 | `theorem` | [finiteMobius_toPayload_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantaf0d80861238501ab6d89f752b82012a33298ca599dd8e8a7e2260f88ef54d3f.lean/declarations/finitemobius-topayload-support--39ed7ad8bd3b3cae3a0ed5d3.md) | 57 | `result-track:39ed7ad8bd3b3cae3a0ed5d36391ea774b6fb9c4300d73fd5774e050281729b5` |
| 6 | `def` | [FiniteMobiusWindowProvesAnalyticIdentity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantaf0d80861238501ab6d89f752b82012a33298ca599dd8e8a7e2260f88ef54d3f.lean/declarations/finitemobiuswindowprovesanalyticidentity--9b6547a92b82763b45be6df7.md) | 65 | `declaration-track:9b6547a92b82763b45be6df752acc3f7cddec2f83554f300dde0329e7d487d86` |
| 7 | `theorem` | [finite_mobius_window_not_analytic_identity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantaf0d80861238501ab6d89f752b82012a33298ca599dd8e8a7e2260f88ef54d3f.lean/declarations/finite-mobius-window-not-analytic-identity--3d5ecbc8c55c4190225c9187.md) | 69 | `result-track:3d5ecbc8c55c4190225c91874ee10074c8bac786aa3311a8882875e71ef5bb2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
