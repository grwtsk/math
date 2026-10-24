# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba8fb7cc4ada4f7b7c36836c687ea22b2e31ae16",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba8fb7cc4ada4f7b7c36836c687ea22b2e31ae16`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.CriticalReflection`](../../../../../mathematics/Analysis/ComplexAnalysis/CriticalReflection__SourceOccurrencea153b0b637ddbb38a27f21e0.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Norm` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NontrivialZetaZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean/declarations/nontrivialzetazero--4bf98f96261e958d8b4b054a.md) | 18 | `declaration-track:4bf98f96261e958d8b4b054aeb59a40811ae4da68d4259fa968a2b4f627572bb` |
| 2 | `def` | [zeroConjugate](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean/declarations/zeroconjugate--644877b958cd6b7ee83156a5.md) | 22 | `declaration-track:644877b958cd6b7ee83156a5ee0dcc03c6845a21d90566882436c849eacc3586` |
| 3 | `def` | [zeroReflect](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean/declarations/zeroreflect--69a4666971d71e0f4cf8bd00.md) | 25 | `declaration-track:69a4666971d71e0f4cf8bd00922cf0942a189735be95c71e5e21745f0efa4a11` |
| 4 | `def` | [rhDefect](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean/declarations/rhdefect--ba0e479c8bdc14f804858462.md) | 28 | `declaration-track:ba0e479c8bdc14f8048584628fa6547b2c856ed9e7e0a330ab4bd7ec8f58f5cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
