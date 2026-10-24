# Verification target: GRWTSK.NumberTheory.Zeta.DyadicGreenReturn

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c475c915aa736e291f70afc0b90c6401b0b35eef",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/DyadicGreenReturn.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Zeta/DyadicGreenReturn.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Zeta/DyadicGreenReturn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c475c915aa736e291f70afc0b90c6401b0b35eef`.

Source path: `GRWTSK/NumberTheory/Zeta/DyadicGreenReturn.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/DyadicGreenReturn.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.GreenMellinContinuation`](../../../../mathematics/NumberTheory/Zeta/GreenMellinContinuation.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.LogDerivativeZeroExclusion`](../../../../mathematics/NumberTheory/Zeta/LogDerivativeZeroExclusion.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [riemannHypothesis_of_energy](../../../../mathematics/NumberTheory/Zeta/DyadicGreenReturn.lean/declarations/riemannhypothesis-of-energy--64b0796ffde4b79f8750e438.md) | 27 | `result-track:64b0796ffde4b79f8750e43832deee7140e9cc404cbf5d1c0ff4e48cbca866ac` |
| 2 | `theorem` | [dyadicGreenReturn](../../../../mathematics/NumberTheory/Zeta/DyadicGreenReturn.lean/declarations/dyadicgreenreturn--9efcd2b741f4598e8dee83f8.md) | 33 | `result-track:9efcd2b741f4598e8dee83f80878d4531d5d573fe21ccb9412bda979fb9ace33` |
| 3 | `theorem` | [not_energy_of_offline_zero](../../../../mathematics/NumberTheory/Zeta/DyadicGreenReturn.lean/declarations/not-energy-of-offline-zero--0e42fe3adcf42878d889eb36.md) | 37 | `result-track:0e42fe3adcf42878d889eb36a0bf62ff9418802573aeb4d30b0ccb99e90b0fa6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
