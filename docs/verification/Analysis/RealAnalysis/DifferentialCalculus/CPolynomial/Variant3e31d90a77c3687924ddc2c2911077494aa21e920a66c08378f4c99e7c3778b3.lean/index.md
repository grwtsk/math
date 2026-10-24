# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CPolynomial.Variant3e31d90a77c3687924ddc2c2911077494aa21e920a66c08378f4c99e7c3778b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75ba4b2e775a74008e1287da48a94310cbdc8242",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CPolynomial/Variant3e31d90a77c3687924ddc2c2911077494aa21e920a66c08378f4c99e7c3778b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CPolynomial/Variant3e31d90a77c3687924ddc2c2911077494aa21e920a66c08378f4c99e7c3778b3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CPolynomial/Variant3e31d90a77c3687924ddc2c2911077494aa21e920a66c08378f4c99e7c3778b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75ba4b2e775a74008e1287da48a94310cbdc8242`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CPolynomial/Variant3e31d90a77c3687924ddc2c2911077494aa21e920a66c08378f4c99e7c3778b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CPolynomial/Variant3e31d90a77c3687924ddc2c2911077494aa21e920a66c08378f4c99e7c3778b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [CPolynomialOn.contDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CPolynomial/Variant3e31d90a77c3687924ddc2c2911077494aa21e920a66c08378f4c99e7c3778b3.lean/declarations/cpolynomialon-contdiffon--a4931db8bb6b681801c76eac.md) | 32 | `result-track:a4931db8bb6b681801c76eac1cd7a1f12405c4a4d7c366f1ee9b608e37c1fad8` |
| 2 | `theorem` | [CPolynomialAt.contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CPolynomial/Variant3e31d90a77c3687924ddc2c2911077494aa21e920a66c08378f4c99e7c3778b3.lean/declarations/cpolynomialat-contdiffat--b6f2e6a488244dede4504e4b.md) | 42 | `result-track:b6f2e6a488244dede4504e4b7c4be0d7860a3aeba33f3053795fa8e84632259f` |
| 3 | `lemma` | [contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CPolynomial/Variant3e31d90a77c3687924ddc2c2911077494aa21e920a66c08378f4c99e7c3778b3.lean/declarations/contdiffat--c662a18876df036a8aedd3c1.md) | 56 | `result-track:c662a18876df036a8aedd3c1b0cb8f03554a3c70c138d88dcbbbbd842097c66c` |
| 4 | `lemma` | [contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CPolynomial/Variant3e31d90a77c3687924ddc2c2911077494aa21e920a66c08378f4c99e7c3778b3.lean/declarations/contdiff--dd77812febe240367d8894f6.md) | 58 | `result-track:dd77812febe240367d8894f694629982510a77e53370ebefb878b2d85dbdf5a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
