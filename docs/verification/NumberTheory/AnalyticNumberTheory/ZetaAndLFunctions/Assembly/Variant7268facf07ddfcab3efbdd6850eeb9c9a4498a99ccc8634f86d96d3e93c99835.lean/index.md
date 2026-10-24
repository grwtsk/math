# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Assembly.Variant7268facf07ddfcab3efbdd6850eeb9c9a4498a99ccc8634f86d96d3e93c99835

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a12034caaca72861b6c509bd757acde49aa2e05c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7268facf07ddfcab3efbdd6850eeb9c9a4498a99ccc8634f86d96d3e93c99835.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7268facf07ddfcab3efbdd6850eeb9c9a4498a99ccc8634f86d96d3e93c99835.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7268facf07ddfcab3efbdd6850eeb9c9a4498a99ccc8634f86d96d3e93c99835.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a12034caaca72861b6c509bd757acde49aa2e05c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7268facf07ddfcab3efbdd6850eeb9c9a4498a99ccc8634f86d96d3e93c99835.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7268facf07ddfcab3efbdd6850eeb9c9a4498a99ccc8634f86d96d3e93c99835.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PrimitiveCharacterHalfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7268facf07ddfcab3efbdd6850eeb9c9a4498a99ccc8634f86d96d3e93c99835.lean/declarations/primitivecharacterhalfplusepsilonfamily--6c4358963a6ba35981c9a5da.md) | 27 | `declaration-track:6c4358963a6ba35981c9a5da44e82e5b1bcc4f2d3a29231ec22ff6f955e055f5` |
| 2 | `def` | [UniformHybridDirichletHalfPlusEpsilon](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7268facf07ddfcab3efbdd6850eeb9c9a4498a99ccc8634f86d96d3e93c99835.lean/declarations/uniformhybriddirichlethalfplusepsilon--24fad6e7e18377b6cf114946.md) | 37 | `declaration-track:24fad6e7e18377b6cf1149469072350b1d3a7ac52aebad3a31728e46adeca79d` |
| 3 | `theorem` | [primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7268facf07ddfcab3efbdd6850eeb9c9a4498a99ccc8634f86d96d3e93c99835.lean/declarations/primitivecharacterhalfplusepsilonfamily-implies-dirichletgrh--756c73d612a90b24ad1eb66f.md) | 51 | `result-track:756c73d612a90b24ad1eb66f23b74c7acd8b29cae5aa4c1c64d958e03d22299d` |
| 4 | `theorem` | [dirichletGRH_implies_primitiveCharacterHalfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7268facf07ddfcab3efbdd6850eeb9c9a4498a99ccc8634f86d96d3e93c99835.lean/declarations/dirichletgrh-implies-primitivecharacterhalfplusepsilonfamily--1821b5fb8a7a46d7fcb296b4.md) | 71 | `result-track:1821b5fb8a7a46d7fcb296b441ae38db8b0440f2e850147ce648cef8f18f7308` |
| 5 | `theorem` | [dirichletGRH_iff_halfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7268facf07ddfcab3efbdd6850eeb9c9a4498a99ccc8634f86d96d3e93c99835.lean/declarations/dirichletgrh-iff-halfplusepsilonfamily--44ba435c47fa018cc48772d4.md) | 91 | `result-track:44ba435c47fa018cc48772d4dae11a751f442cd349d9cfa9b6592b43d8fe1639` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
