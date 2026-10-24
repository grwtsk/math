# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ShapleyAttribution.Variant47ff8b8708c679538fb025b4558b36502e16ce09bc2481d38454e98545b55849

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f75beeb55ab91c83916ee55b6a05f7412fef949",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variant47ff8b8708c679538fb025b4558b36502e16ce09bc2481d38454e98545b55849.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variant47ff8b8708c679538fb025b4558b36502e16ce09bc2481d38454e98545b55849.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variant47ff8b8708c679538fb025b4558b36502e16ce09bc2481d38454e98545b55849.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f75beeb55ab91c83916ee55b6a05f7412fef949`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variant47ff8b8708c679538fb025b4558b36502e16ce09bc2481d38454e98545b55849.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variant47ff8b8708c679538fb025b4558b36502e16ce09bc2481d38454e98545b55849.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.MobiusInteraction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shapleyWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variant47ff8b8708c679538fb025b4558b36502e16ce09bc2481d38454e98545b55849.lean/declarations/shapleyweight--4db7bc7e4fcb8cd93dc7b473.md) | 25 | `declaration-track:4db7bc7e4fcb8cd93dc7b473a423140732db5cb23af411d95f10d18c45d7788d` |
| 2 | `def` | [shapleyDefect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variant47ff8b8708c679538fb025b4558b36502e16ce09bc2481d38454e98545b55849.lean/declarations/shapleydefect--917cb4cf6902d1a59be2b2e3.md) | 36 | `declaration-track:917cb4cf6902d1a59be2b2e3bfa7b6c9ac6c3f9d22446a5df683699ed4d4f0ca` |
| 3 | `structure` | [ShapleyWeightCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variant47ff8b8708c679538fb025b4558b36502e16ce09bc2481d38454e98545b55849.lean/declarations/shapleyweightcertificate--2c1ae26d88e662612f8311ba.md) | 49 | `declaration-track:2c1ae26d88e662612f8311ba9b7b3aa63af4361cbfa4af91130ad47921ba7e41` |
| 4 | `theorem` | [shapleyDefect_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variant47ff8b8708c679538fb025b4558b36502e16ce09bc2481d38454e98545b55849.lean/declarations/shapleydefect-nonnegative--d9fb6622d499581c8666344c.md) | 61 | `result-track:d9fb6622d499581c8666344cdc0058d72f854b8ce87b6370ec93652f0d5313a7` |
| 5 | `structure` | [ShapleyEfficiencyCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variant47ff8b8708c679538fb025b4558b36502e16ce09bc2481d38454e98545b55849.lean/declarations/shapleyefficiencycertificate--35e08184b819f348392c404d.md) | 85 | `declaration-track:35e08184b819f348392c404dbdc1b315847f61e58146c9ea043293a9e1c76ffe` |
| 6 | `theorem` | [shapley_efficiency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variant47ff8b8708c679538fb025b4558b36502e16ce09bc2481d38454e98545b55849.lean/declarations/shapley-efficiency--f30a57b226b643ce300d9390.md) | 99 | `result-track:f30a57b226b643ce300d9390c82dc625e5851729f4a8f272745d5ba1840bdaf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
