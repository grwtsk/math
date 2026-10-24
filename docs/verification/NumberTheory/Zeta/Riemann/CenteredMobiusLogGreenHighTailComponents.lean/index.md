# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenHighTailComponents

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15b5c6d3b417bbb4220af72a925f50b58343a680",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHighTailComponents.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHighTailComponents.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHighTailComponents.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15b5c6d3b417bbb4220af72a925f50b58343a680`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHighTailComponents.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHighTailComponents.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenResidualSquareBounds`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualSquareBounds.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Analysis.PSeries` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_reciprocalSquareFourthPartialSumBounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHighTailComponents.lean/declarations/exists-reciprocalsquarefourthpartialsumbounds--d567e45488f791baff0e6633.md) | 17 | `result-track:d567e45488f791baff0e6633a70068f69eaf218375f6e5c9fb7d66261de400e6` |
| 2 | `def` | [greenHighA2Majorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHighTailComponents.lean/declarations/greenhigha2majorant--e1433420b9380bd8008b4fb9.md) | 30 | `declaration-track:e1433420b9380bd8008b4fb90321a365ab9787abcb020bc514c08f06f0811375` |
| 3 | `def` | [greenHighC2Majorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHighTailComponents.lean/declarations/greenhighc2majorant--9341039006af22b4ca6008ec.md) | 37 | `declaration-track:9341039006af22b4ca6008ec0c755bbf4946cc0b2985d2d9ab8159c687664d33` |
| 4 | `theorem` | [greenHighB2_eq_residueMajorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHighTailComponents.lean/declarations/greenhighb2-eq-residuemajorant--4e8738fb7e90fc7e5832fc7a.md) | 44 | `result-track:4e8738fb7e90fc7e5832fc7aa789db1e185d8144e0789a63ca038ced9ec537d9` |
| 5 | `theorem` | [greenHighA2Majorant_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHighTailComponents.lean/declarations/greenhigha2majorant-le--dc92d2eb8f8c5da50853c72e.md) | 71 | `result-track:dc92d2eb8f8c5da50853c72ebbf704bafd420612b58095d8a61a7c9c8e939885` |
| 6 | `theorem` | [greenHighC2Majorant_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHighTailComponents.lean/declarations/greenhighc2majorant-le--341465f4c1207e77214c5f6c.md) | 102 | `result-track:341465f4c1207e77214c5f6c2b4e2a2c3ac172998fd825e4ce56cc7baf885b2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
