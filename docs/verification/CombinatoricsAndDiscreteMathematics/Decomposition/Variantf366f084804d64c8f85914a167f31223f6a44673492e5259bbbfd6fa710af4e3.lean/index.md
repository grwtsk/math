# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Decomposition.Variantf366f084804d64c8f85914a167f31223f6a44673492e5259bbbfd6fa710af4e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7120e111ec4c8b12f722b2f9af07f91bc48bcb51",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Decomposition/Variantf366f084804d64c8f85914a167f31223f6a44673492e5259bbbfd6fa710af4e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Decomposition/Variantf366f084804d64c8f85914a167f31223f6a44673492e5259bbbfd6fa710af4e3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Decomposition/Variantf366f084804d64c8f85914a167f31223f6a44673492e5259bbbfd6fa710af4e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7120e111ec4c8b12f722b2f9af07f91bc48bcb51`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Decomposition/Variantf366f084804d64c8f85914a167f31223f6a44673492e5259bbbfd6fa710af4e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Decomposition/Variantf366f084804d64c8f85914a167f31223f6a44673492e5259bbbfd6fa710af4e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.DoldKan.PInfty` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [decomposition_Q](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Decomposition/Variantf366f084804d64c8f85914a167f31223f6a44673492e5259bbbfd6fa710af4e3.lean/declarations/decomposition-q--f7527c46073d4820ea560193.md) | 50 | `result-track:f7527c46073d4820ea5601936ff8a8bdb9fff4eff4ffa234f19d606cb9f0b206` |
| 2 | `structure` | [MorphComponents](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Decomposition/Variantf366f084804d64c8f85914a167f31223f6a44673492e5259bbbfd6fa710af4e3.lean/declarations/morphcomponents--c146828fc5fc5da5ac9178ae.md) | 88 | `declaration-track:c146828fc5fc5da5ac9178aeebc9f1b3b8a75021e767e78d0507f547eb58be1c` |
| 3 | `def` | [φ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Decomposition/Variantf366f084804d64c8f85914a167f31223f6a44673492e5259bbbfd6fa710af4e3.lean/declarations/anonymous--9248f3634f6d365e8d48868b.md) | 97 | `declaration-track:9248f3634f6d365e8d48868b081bd690be56d6a6a22dcc474b749da64bf40ce8` |
| 4 | `def` | [id](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Decomposition/Variantf366f084804d64c8f85914a167f31223f6a44673492e5259bbbfd6fa710af4e3.lean/declarations/id--6d106b1b06d236d471649997.md) | 106 | `declaration-track:6d106b1b06d236d471649997ac4675f933100c5f94ed3eb3f3fbf92fc9227e6a` |
| 5 | `theorem` | [id_φ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Decomposition/Variantf366f084804d64c8f85914a167f31223f6a44673492e5259bbbfd6fa710af4e3.lean/declarations/id--2bb48bad2637496cc3369ad3.md) | 111 | `result-track:2bb48bad2637496cc3369ad3ef6c710015d4d11d3ec4373ef90e2105f757e172` |
| 6 | `def` | [postComp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Decomposition/Variantf366f084804d64c8f85914a167f31223f6a44673492e5259bbbfd6fa710af4e3.lean/declarations/postcomp--baa315bb777e862238c2dd93.md) | 121 | `declaration-track:baa315bb777e862238c2dd9344912a9d48e62969afe8b74bc326975bdda2f4e3` |
| 7 | `theorem` | [postComp_φ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Decomposition/Variantf366f084804d64c8f85914a167f31223f6a44673492e5259bbbfd6fa710af4e3.lean/declarations/postcomp--726811246e42732ba18f02f3.md) | 126 | `result-track:726811246e42732ba18f02f39e44f3fecb01bc8d7e452677a9541f6b502530ff` |
| 8 | `def` | [preComp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Decomposition/Variantf366f084804d64c8f85914a167f31223f6a44673492e5259bbbfd6fa710af4e3.lean/declarations/precomp--a3652653d3d96cde543326a2.md) | 132 | `declaration-track:a3652653d3d96cde543326a2ba170f749c3a08dc70b1c3b99ccb96905f0d6ae4` |
| 9 | `theorem` | [preComp_φ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Decomposition/Variantf366f084804d64c8f85914a167f31223f6a44673492e5259bbbfd6fa710af4e3.lean/declarations/precomp--cba38830c1676bb198cf8c4f.md) | 137 | `result-track:cba38830c1676bb198cf8c4f612330a92719a1ce155ef2aa0f7af41e272fe77c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
