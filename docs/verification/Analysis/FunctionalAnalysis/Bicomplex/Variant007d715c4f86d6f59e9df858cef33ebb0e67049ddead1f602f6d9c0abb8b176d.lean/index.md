# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Bicomplex.Variant007d715c4f86d6f59e9df858cef33ebb0e67049ddead1f602f6d9c0abb8b176d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a775e99325a914fd6458938d9c58ae6515093ca0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Bicomplex/Variant007d715c4f86d6f59e9df858cef33ebb0e67049ddead1f602f6d9c0abb8b176d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Bicomplex/Variant007d715c4f86d6f59e9df858cef33ebb0e67049ddead1f602f6d9c0abb8b176d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Bicomplex/Variant007d715c4f86d6f59e9df858cef33ebb0e67049ddead1f602f6d9c0abb8b176d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a775e99325a914fd6458938d9c58ae6515093ca0`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Bicomplex/Variant007d715c4f86d6f59e9df858cef33ebb0e67049ddead1f602f6d9c0abb8b176d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Bicomplex/Variant007d715c4f86d6f59e9df858cef33ebb0e67049ddead1f602f6d9c0abb8b176d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Hilbert.DifferentialComplex` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteBicomplex](../../../../../mathematics/Analysis/FunctionalAnalysis/Bicomplex/Variant007d715c4f86d6f59e9df858cef33ebb0e67049ddead1f602f6d9c0abb8b176d.lean/declarations/finitebicomplex--f32378531e586aac4f001732.md) | 20 | `declaration-track:f32378531e586aac4f001732faf21ac7963b1411ae5379f4a864f606bf9c4ff0` |
| 2 | `def` | [totalDifferential](../../../../../mathematics/Analysis/FunctionalAnalysis/Bicomplex/Variant007d715c4f86d6f59e9df858cef33ebb0e67049ddead1f602f6d9c0abb8b176d.lean/declarations/totaldifferential--dc220926891227cd57326462.md) | 35 | `declaration-track:dc220926891227cd57326462700f5dac6822a7f0225fc59befbd5d6397a32a2e` |
| 3 | `theorem` | [totalDifferential_sq_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Bicomplex/Variant007d715c4f86d6f59e9df858cef33ebb0e67049ddead1f602f6d9c0abb8b176d.lean/declarations/totaldifferential-sq-zero--fcec1718448dd44dfc42754b.md) | 40 | `result-track:fcec1718448dd44dfc42754bb6fbb425a1bb5636d8a419b8e07809ef4b5a35f1` |
| 4 | `def` | [toDifferentialComplex](../../../../../mathematics/Analysis/FunctionalAnalysis/Bicomplex/Variant007d715c4f86d6f59e9df858cef33ebb0e67049ddead1f602f6d9c0abb8b176d.lean/declarations/todifferentialcomplex--867c9a6e1050c948429f30d8.md) | 57 | `declaration-track:867c9a6e1050c948429f30d81405849a7281a6bb94839a20cf067ebeecb9d80e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
