# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalFiniteEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1cb00b3f68aee81fbfdeb1821f6d1115d1ede9f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1cb00b3f68aee81fbfdeb1821f6d1115d1ede9f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalPowerEvaluation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPowerEvaluation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalPairCheck`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gproduct](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/declarations/gproduct--a4b6d5f47a82372d61c9ee95.md) | 27 | `declaration-track:a4b6d5f47a82372d61c9ee957d5e1012d784dbe01f1b7a22359f0fc7172be616` |
| 2 | `lemma` | [gproduct_value](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/declarations/gproduct-value--7bf0bf28b3ea7e3169e57640.md) | 32 | `result-track:7bf0bf28b3ea7e3169e57640c5e645c99d26bec14e66e97bc5efcc090223c817` |
| 3 | `def` | [weight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/declarations/weight--98a69081535302ab5314d415.md) | 39 | `declaration-track:98a69081535302ab5314d41516ab091d1a83f2b3bb79d92286b1fb5cdb029637` |
| 4 | `def` | [weightC](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/declarations/weightc--1277d142fbed28b0496a71bd.md) | 48 | `declaration-track:1277d142fbed28b0496a71bddfacdaa763a700da8a2bc7d1f575d00f7e96b93d` |
| 5 | `lemma` | [weight_value](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/declarations/weight-value--c365ec9a82c4bcc233ba86ac.md) | 53 | `result-track:c365ec9a82c4bcc233ba86ac82d752156d92081b61229247497a8c2c6a6cf368` |
| 6 | `theorem` | [finiteModel_regroup](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/declarations/finitemodel-regroup--224c704eacc79bf2dd89d541.md) | 59 | `result-track:224c704eacc79bf2dd89d541933b4c9f532bea22cc14e46b06b92f036d192273` |
| 7 | `structure` | [Data](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/declarations/data--9ef71882d67600892c98eb9c.md) | 74 | `declaration-track:9ef71882d67600892c98eb9c0ee92415eb5783d8fae23d0400ac4c1adbff5d65` |
| 8 | `def` | [item](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/declarations/item--0e7095fbc8ea6729414c4a7c.md) | 80 | `declaration-track:0e7095fbc8ea6729414c4a7c8a821901fa4b6f6fc1564bd126bf187cd251b0eb` |
| 9 | `def` | [Guard](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/declarations/guard--d32b067fa652c93cf62f73a2.md) | 83 | `declaration-track:d32b067fa652c93cf62f73a2a83cc4dfababb7f81a030fa1edf3451e7603c8d9` |
| 10 | `def` | [check](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/declarations/check--aae1cf28cc055fe9c3decc0b.md) | 87 | `declaration-track:aae1cf28cc055fe9c3decc0bf49b4632584638d3eb70d6c0ade247347b2d5ca5` |
| 11 | `lemma` | [check_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/declarations/check-iff--1ee286a73eefb223559661e3.md) | 88 | `result-track:1ee286a73eefb223559661e3d211c7e5523e5b81e97c2a369349d2faee6f6211` |
| 12 | `def` | [center](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/declarations/center--af71c6f2a15655306bd874f5.md) | 91 | `declaration-track:af71c6f2a15655306bd874f5242ba23bd6e387d925b284d601fe78142fa16aef` |
| 13 | `def` | [radius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/declarations/radius--d7b60e2a18bd4f3dddbe3d27.md) | 97 | `declaration-track:d7b60e2a18bd4f3dddbe3d27d004f3d30d20e89d38117b349c8fb8244beea588` |
| 14 | `lemma` | [radius_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/declarations/radius-nonneg--9122d70c77dbd01992d91eb2.md) | 101 | `result-track:9122d70c77dbd01992d91eb211d52da6d2f7fd0a3d24916f97c990560d22f0ea` |
| 15 | `theorem` | [encloses](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/declarations/encloses--62b2bee6ecb306180db7f165.md) | 111 | `result-track:62b2bee6ecb306180db7f165c81f9193a73eaf76e2d335c206ed07cdbb204d00` |
| 16 | `def` | [rawData](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/declarations/rawdata--bbee4794008dee10ffdd5aa1.md) | 149 | `declaration-track:bbee4794008dee10ffdd5aa19563c54853a9e3639e8a140924d0dec3c39c109b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
