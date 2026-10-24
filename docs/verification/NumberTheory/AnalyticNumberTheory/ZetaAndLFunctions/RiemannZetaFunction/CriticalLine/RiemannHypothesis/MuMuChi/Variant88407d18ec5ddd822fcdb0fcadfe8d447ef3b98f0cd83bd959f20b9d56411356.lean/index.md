# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MuMuChi.Variant88407d18ec5ddd822fcdb0fcadfe8d447ef3b98f0cd83bd959f20b9d56411356

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1166eda0c9f917460939fab9809839d538c53e2",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMuChi/Variant88407d18ec5ddd822fcdb0fcadfe8d447ef3b98f0cd83bd959f20b9d56411356.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMuChi/Variant88407d18ec5ddd822fcdb0fcadfe8d447ef3b98f0cd83bd959f20b9d56411356.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMuChi/Variant88407d18ec5ddd822fcdb0fcadfe8d447ef3b98f0cd83bd959f20b9d56411356.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1166eda0c9f917460939fab9809839d538c53e2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMuChi/Variant88407d18ec5ddd822fcdb0fcadfe8d447ef3b98f0cd83bd959f20b9d56411356.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMuChi/Variant88407d18ec5ddd822fcdb0fcadfe8d447ef3b98f0cd83bd959f20b9d56411356.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.PrimeSideChi` — import line 15; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB.PPKernel` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [abs_inner_sub_le_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMuChi/Variant88407d18ec5ddd822fcdb0fcadfe8d447ef3b98f0cd83bd959f20b9d56411356.lean/declarations/abs-inner-sub-le-chi--f174945a483e3b2e7d84ee68.md) | 38 | `result-track:f174945a483e3b2e7d84ee680838d125e51b7167ea38a6783e7ab3db756e4d69` |
| 2 | `theorem` | [mumu_core_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMuChi/Variant88407d18ec5ddd822fcdb0fcadfe8d447ef3b98f0cd83bd959f20b9d56411356.lean/declarations/mumu-core-chi--af1596a07fdf1259d3e46ea0.md) | 150 | `result-track:af1596a07fdf1259d3e46ea0eb837875b8bc16a8a7684ceacdf0080498e5e798` |
| 3 | `theorem` | [prop_mumu_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMuChi/Variant88407d18ec5ddd822fcdb0fcadfe8d447ef3b98f0cd83bd959f20b9d56411356.lean/declarations/prop-mumu-chi--1e5236b3096b86d504e273b4.md) | 213 | `result-track:1e5236b3096b86d504e273b4f6faa3c5ff4eff0c61dc0fd9d907b1c1ac469ab3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
