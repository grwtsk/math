# Verification target: GRWTSK.Analysis.Completion.Variant0ed30314ddce05dbece639d780d45f807aa6f598adda6568b8f11f7aa94c75fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9f77a15cf94cba107044672086010ce61b7e7f2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Completion/Variant0ed30314ddce05dbece639d780d45f807aa6f598adda6568b8f11f7aa94c75fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Completion/Variant0ed30314ddce05dbece639d780d45f807aa6f598adda6568b8f11f7aa94c75fd.lean/index.md) · [Full source](../../../../mathematics/Analysis/Completion/Variant0ed30314ddce05dbece639d780d45f807aa6f598adda6568b8f11f7aa94c75fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9f77a15cf94cba107044672086010ce61b7e7f2`.

Source path: `GRWTSK/Analysis/Completion/Variant0ed30314ddce05dbece639d780d45f807aa6f598adda6568b8f11f7aa94c75fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Completion/Variant0ed30314ddce05dbece639d780d45f807aa6f598adda6568b8f11f7aa94c75fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Completion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformRing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Variant0ed30314ddce05dbece639d780d45f807aa6f598adda6568b8f11f7aa94c75fd.lean/declarations/instance--aa07a309cd87b85913bf0a76.md) | 33 | `declaration-track:aa07a309cd87b85913bf0a76e980a6cd767b9252aba5ae8befda546b42092783` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Variant0ed30314ddce05dbece639d780d45f807aa6f598adda6568b8f11f7aa94c75fd.lean/declarations/instance--e16a9c9acd754bc241f17ab8.md) | 38 | `declaration-track:e16a9c9acd754bc241f17ab85385014f35d02e6d4640a33f77e5bd12213b5d97` |
| 3 | `def` | [toComplₗᵢ](../../../../mathematics/Analysis/Completion/Variant0ed30314ddce05dbece639d780d45f807aa6f598adda6568b8f11f7aa94c75fd.lean/declarations/tocompl--891181d7307ea688cbdafc38.md) | 49 | `declaration-track:891181d7307ea688cbdafc38406de0ef72065a9e217945e324acf7f378add28f` |
| 4 | `theorem` | [coe_toComplₗᵢ](../../../../mathematics/Analysis/Completion/Variant0ed30314ddce05dbece639d780d45f807aa6f598adda6568b8f11f7aa94c75fd.lean/declarations/coe-tocompl--2571f05ca9fc33170379eaf6.md) | 57 | `result-track:2571f05ca9fc33170379eaf6d7d85cc2e33ea82f684e45a59fb2567004ebc292` |
| 5 | `def` | [toComplL](../../../../mathematics/Analysis/Completion/Variant0ed30314ddce05dbece639d780d45f807aa6f598adda6568b8f11f7aa94c75fd.lean/declarations/tocompll--879f101f43483fcc83281651.md) | 62 | `declaration-track:879f101f43483fcc83281651d781a1ab76032205f2a7ad7c2d0c03049d6385c7` |
| 6 | `theorem` | [coe_toComplL](../../../../mathematics/Analysis/Completion/Variant0ed30314ddce05dbece639d780d45f807aa6f598adda6568b8f11f7aa94c75fd.lean/declarations/coe-tocompll--91aae7441805b5006ca3dd48.md) | 68 | `result-track:91aae7441805b5006ca3dd482c66be978def47a3e396a8b9e1ae77a832c9cb78` |
| 7 | `theorem` | [norm_toComplL](../../../../mathematics/Analysis/Completion/Variant0ed30314ddce05dbece639d780d45f807aa6f598adda6568b8f11f7aa94c75fd.lean/declarations/norm-tocompll--571717c3f45f72115bf4a11b.md) | 74 | `result-track:571717c3f45f72115bf4a11b36d05430593761669097c12c5c81931b59619dfd` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Variant0ed30314ddce05dbece639d780d45f807aa6f598adda6568b8f11f7aa94c75fd.lean/declarations/instance--ffc137aa0a8e4781f7c06073.md) | 84 | `declaration-track:ffc137aa0a8e4781f7c0607359357a935aede6217a759acf9bc29de948e620c7` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Variant0ed30314ddce05dbece639d780d45f807aa6f598adda6568b8f11f7aa94c75fd.lean/declarations/instance--2134116b826185fa7da649c6.md) | 103 | `declaration-track:2134116b826185fa7da649c64e38a25145bacfade21fc6264589d2c093821c09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
