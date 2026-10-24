# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Finite.Variant21e029baaf2201d79d1038fd411b040387834ee59cccc420398c93004b8ba80f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6d4a6735bd836c27fd74e7920c6785e3b95128c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Finite/Variant21e029baaf2201d79d1038fd411b040387834ee59cccc420398c93004b8ba80f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Finite/Variant21e029baaf2201d79d1038fd411b040387834ee59cccc420398c93004b8ba80f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Finite/Variant21e029baaf2201d79d1038fd411b040387834ee59cccc420398c93004b8ba80f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6d4a6735bd836c27fd74e7920c6785e3b95128c`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Finite/Variant21e029baaf2201d79d1038fd411b040387834ee59cccc420398c93004b8ba80f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Finite/Variant21e029baaf2201d79d1038fd411b040387834ee59cccc420398c93004b8ba80f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.Matrix` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Hermitian` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FiniteHilbert](../../../../../mathematics/Analysis/FunctionalAnalysis/Finite/Variant21e029baaf2201d79d1038fd411b040387834ee59cccc420398c93004b8ba80f.lean/declarations/finitehilbert--6349a002d84d918f1b08831d.md) | 21 | `declaration-track:6349a002d84d918f1b08831df5884b882ecac206f5c8fa789278b20a5d8caf58` |
| 2 | `abbrev` | [FiniteOperator](../../../../../mathematics/Analysis/FunctionalAnalysis/Finite/Variant21e029baaf2201d79d1038fd411b040387834ee59cccc420398c93004b8ba80f.lean/declarations/finiteoperator--72545f45b6ccfb1652e66c1a.md) | 25 | `declaration-track:72545f45b6ccfb1652e66c1a04ba4fefe667c710cd3f4a9b2785a163d76fcad2` |
| 3 | `def` | [FiniteOperator.toLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Finite/Variant21e029baaf2201d79d1038fd411b040387834ee59cccc420398c93004b8ba80f.lean/declarations/finiteoperator-tolinearmap--85af5781bf8eeb023921fbf3.md) | 29 | `declaration-track:85af5781bf8eeb023921fbf3a476cc730beeb8f34c3f85a7f985195f005265fd` |
| 4 | `theorem` | [FiniteOperator.isSymmetric_toLinearMap_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Finite/Variant21e029baaf2201d79d1038fd411b040387834ee59cccc420398c93004b8ba80f.lean/declarations/finiteoperator-issymmetric-tolinearmap-iff--8b98876935353db4d010ece2.md) | 37 | `result-track:8b98876935353db4d010ece26985d82cd90222182ebf8693dd9488d450a70bc9` |
| 5 | `theorem` | [FiniteOperator.conjTranspose_toLinearMap_eq_adjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/Finite/Variant21e029baaf2201d79d1038fd411b040387834ee59cccc420398c93004b8ba80f.lean/declarations/finiteoperator-conjtranspose-tolinearmap-eq-adjoint--df9dedb6f6f25f8249c13142.md) | 44 | `result-track:df9dedb6f6f25f8249c13142aa26587b932e03edd77f5cd46e56108b3429225a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
