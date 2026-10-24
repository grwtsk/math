# Verification target: GRWTSK.Analysis.ErrorBounds.EnclosedGramReadout

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "846a9ca65b8d8fda4bd372950e75e0bc69c4e3cc",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/EnclosedGramReadout.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/EnclosedGramReadout.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/EnclosedGramReadout.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `846a9ca65b8d8fda4bd372950e75e0bc69c4e3cc`.

Source path: `GRWTSK/Analysis/ErrorBounds/EnclosedGramReadout.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/EnclosedGramReadout.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.InexactAdjointGramWindow`](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [entryMajorant](../../../../mathematics/Analysis/ErrorBounds/EnclosedGramReadout.lean/declarations/entrymajorant--1aef36a2f9456103b77b6e2b.md) | 47 | `declaration-track:1aef36a2f9456103b77b6e2b86262d6b8dc7894798fdc564c2884e65af4be364` |
| 2 | `theorem` | [modulusMass_le_entryMajorant](../../../../mathematics/Analysis/ErrorBounds/EnclosedGramReadout.lean/declarations/modulusmass-le-entrymajorant--718f8fe5c3a52f7ecfa61731.md) | 51 | `result-track:718f8fe5c3a52f7ecfa61731e4dd221996e2a9b48b17840bc17841755de8e9fe` |
| 3 | `theorem` | [enclosed_test_bound](../../../../mathematics/Analysis/ErrorBounds/EnclosedGramReadout.lean/declarations/enclosed-test-bound--de882d9f2f70f772ecff3668.md) | 61 | `result-track:de882d9f2f70f772ecff36685d481b64d1e26f6b64238e11cb8251f616acb436` |
| 4 | `theorem` | [readout_uncertainty_identity](../../../../mathematics/Analysis/ErrorBounds/EnclosedGramReadout.lean/declarations/readout-uncertainty-identity--70e60b668f827e826977ba4e.md) | 72 | `result-track:70e60b668f827e826977ba4e1aef7d696d1117c98cfee1fd1652cf0ffe97598e` |
| 5 | `def` | [enclosureError](../../../../mathematics/Analysis/ErrorBounds/EnclosedGramReadout.lean/declarations/enclosureerror--994672454cfcf70fc35b7fcc.md) | 86 | `declaration-track:994672454cfcf70fc35b7fcc1357009bd34fc31b72e8cbd0d7640dbdb77757c1` |
| 6 | `theorem` | [readout_enclosure_bound](../../../../mathematics/Analysis/ErrorBounds/EnclosedGramReadout.lean/declarations/readout-enclosure-bound--41d7150fe5118146d59037e2.md) | 90 | `result-track:41d7150fe5118146d59037e2aba3b7cb17e76343157bc4dbbab56ba89afa5ebc` |
| 7 | `theorem` | [evaluated_readout_interval](../../../../mathematics/Analysis/ErrorBounds/EnclosedGramReadout.lean/declarations/evaluated-readout-interval--0100232571aef40be90f2e41.md) | 122 | `result-track:0100232571aef40be90f2e4155126d9b773bd041065f01b30901901bddb35583` |
| 8 | `def` | [terminalSourceDefect](../../../../mathematics/Analysis/ErrorBounds/EnclosedGramReadout.lean/declarations/terminalsourcedefect--5a3ad457e5177197e830c222.md) | 136 | `declaration-track:5a3ad457e5177197e830c222437d60a15b440a5e5342d0e67c42cfadd844c833` |
| 9 | `theorem` | [terminalSourceDefect_identity](../../../../mathematics/Analysis/ErrorBounds/EnclosedGramReadout.lean/declarations/terminalsourcedefect-identity--9525194553d89d7d1234ddb7.md) | 139 | `result-track:9525194553d89d7d1234ddb7ada4348368ea733a9d560ae97f20e0635caf29ee` |
| 10 | `theorem` | [no_fixed_negative_of_enclosed_window](../../../../mathematics/Analysis/ErrorBounds/EnclosedGramReadout.lean/declarations/no-fixed-negative-of-enclosed-window--155df3d54a402a46192fe56b.md) | 151 | `result-track:155df3d54a402a46192fe56b3319edf348b7b02240dc09954ca53506ccfbc88a` |
| 11 | `theorem` | [joint_uncertainty_fixture](../../../../mathematics/Analysis/ErrorBounds/EnclosedGramReadout.lean/declarations/joint-uncertainty-fixture--0bb2218c07f2a0e8126f8439.md) | 192 | `result-track:0bb2218c07f2a0e8126f8439ede40fc3fc52cce8c0c2253c8443135a11da3585` |
| 12 | `theorem` | [sharp_scalar_enclosure_fixture](../../../../mathematics/Analysis/ErrorBounds/EnclosedGramReadout.lean/declarations/sharp-scalar-enclosure-fixture--6313b39e56b0379fb2dd656f.md) | 199 | `result-track:6313b39e56b0379fb2dd656f619fca1337ec9f8edab04028fc225ba29d2eb74e` |
| 13 | `theorem` | [exact_center_fixture](../../../../mathematics/Analysis/ErrorBounds/EnclosedGramReadout.lean/declarations/exact-center-fixture--dd17b26dd092f87c491b19e5.md) | 206 | `result-track:dd17b26dd092f87c491b19e5860e4c364067cdbc3414f33cc3c05e025b6b1859` |
| 14 | `theorem` | [enclosure_costs_consume_margin_fixture](../../../../mathematics/Analysis/ErrorBounds/EnclosedGramReadout.lean/declarations/enclosure-costs-consume-margin-fixture--060862403ed52a6b40146231.md) | 210 | `result-track:060862403ed52a6b40146231d7d729c7eada57a04dac89181a106464d11c24ac` |
| 15 | `theorem` | [missing_source_not_zero_fixture](../../../../mathematics/Analysis/ErrorBounds/EnclosedGramReadout.lean/declarations/missing-source-not-zero-fixture--6e68da86bd06708cadcc3f3a.md) | 215 | `result-track:6e68da86bd06708cadcc3f3ad4696cfaf9e5abec7c29c63b82a1cb4a740d1142` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
