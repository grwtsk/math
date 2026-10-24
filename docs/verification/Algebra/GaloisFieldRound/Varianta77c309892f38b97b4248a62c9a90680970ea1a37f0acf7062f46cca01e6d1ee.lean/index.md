# Verification target: GRWTSK.Algebra.GaloisFieldRound.Varianta77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95b399593217b321fe2654386f10f351d6731b27",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GaloisFieldRound/Varianta77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GaloisFieldRound/Varianta77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee.lean/index.md) · [Full source](../../../../mathematics/Algebra/GaloisFieldRound/Varianta77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95b399593217b321fe2654386f10f351d6731b27`.

Source path: `GRWTSK/Algebra/GaloisFieldRound/Varianta77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GaloisFieldRound/Varianta77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.GaloisField` — import line 1; external provider; requires a separately pinned dependency.
- `BinaryMatrix.FiniteFieldRound` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bitCode](../../../../mathematics/Algebra/GaloisFieldRound/Varianta77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee.lean/declarations/bitcode--cfa577018c602c35de86499f.md) | 31 | `declaration-track:cfa577018c602c35de86499ff21bbaacec11c0a9d8e894c7ad5bbfe1990d83bd` |
| 2 | `theorem` | [bitCode_add](../../../../mathematics/Algebra/GaloisFieldRound/Varianta77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee.lean/declarations/bitcode-add--620fd2a0198be0c3cc1a7e1c.md) | 40 | `result-track:620fd2a0198be0c3cc1a7e1cdc66f92987ff63d7227c90287c9a718a1c7dad28` |
| 3 | `def` | [transportToMatrix](../../../../mathematics/Algebra/GaloisFieldRound/Varianta77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee.lean/declarations/transporttomatrix--9fd4e57c307343210a2f008e.md) | 62 | `declaration-track:9fd4e57c307343210a2f008e618e6d657492fb665171257a0ad11e29228e70d4` |
| 4 | `theorem` | [flatten_transportToMatrix](../../../../mathematics/Algebra/GaloisFieldRound/Varianta77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee.lean/declarations/flatten-transporttomatrix--dd37a20cb44e46005bade602.md) | 72 | `result-track:dd37a20cb44e46005bade602dfcdb40156e40df3d37cf71228235c1a0e2d5b6c` |
| 5 | `def` | [encodeFieldRound](../../../../mathematics/Algebra/GaloisFieldRound/Varianta77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee.lean/declarations/encodefieldround--f5bbaff41327da305282fcf3.md) | 83 | `declaration-track:f5bbaff41327da305282fcf3b39044d194e6dfecd5b0c7d62c32c9b83b7d0c0a` |
| 6 | `theorem` | [encodeFieldRound_bijective](../../../../mathematics/Algebra/GaloisFieldRound/Varianta77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee.lean/declarations/encodefieldround-bijective--a3f52651775b85e547c9df53.md) | 93 | `result-track:a3f52651775b85e547c9df53f185c0d0e8d2076943538426982f1e47dc776b5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
