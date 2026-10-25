# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CbvEvalExt.Variant74ebb4f59b1e1ee0f32f0feacdfd411777661556e556f5b938433207b48aee1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c95aea0f910de01de321b9da766c07b7106cb617",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variant74ebb4f59b1e1ee0f32f0feacdfd411777661556e556f5b938433207b48aee1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variant74ebb4f59b1e1ee0f32f0feacdfd411777661556e556f5b938433207b48aee1f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variant74ebb4f59b1e1ee0f32f0feacdfd411777661556e556f5b938433207b48aee1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c95aea0f910de01de321b9da766c07b7106cb617`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variant74ebb4f59b1e1ee0f32f0feacdfd411777661556e556f5b938433207b48aee1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variant74ebb4f59b1e1ee0f32f0feacdfd411777661556e556f5b938433207b48aee1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.AuxLemma` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.AppBuilder` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Theorem.declName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variant74ebb4f59b1e1ee0f32f0feacdfd411777661556e556f5b938433207b48aee1f.lean/declarations/theorem-declname--dd7e689816f53fb0b02b3b58.md) | 29 | `declaration-track:dd7e689816f53fb0b02b3b58323be742b9b7a01ff3a57fa584c4e2d15f77d3e1` |
| 2 | `structure` | [CbvEvalEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variant74ebb4f59b1e1ee0f32f0feacdfd411777661556e556f5b938433207b48aee1f.lean/declarations/cbvevalentry--16991fc0f6692e42b3cd347e.md) | 41 | `declaration-track:16991fc0f6692e42b3cd347ed8595584dc40ab6ec9b83669f872df7b3890459c` |
| 3 | `def` | [mkCbvTheoremFromConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variant74ebb4f59b1e1ee0f32f0feacdfd411777661556e556f5b938433207b48aee1f.lean/declarations/mkcbvtheoremfromconst--632f2ed5ad1ee2b69ddb08c0.md) | 49 | `declaration-track:632f2ed5ad1ee2b69ddb08c09a89342da18852f9c5cbe173f1351720a692ebde` |
| 4 | `structure` | [CbvEvalState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variant74ebb4f59b1e1ee0f32f0feacdfd411777661556e556f5b938433207b48aee1f.lean/declarations/cbvevalstate--b94eb6aa9086806b0ecb1e8d.md) | 69 | `declaration-track:b94eb6aa9086806b0ecb1e8dd985695cddac70bd43d67a1b49811c608ddb1e97` |
| 5 | `def` | [CbvEvalState.addEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variant74ebb4f59b1e1ee0f32f0feacdfd411777661556e556f5b938433207b48aee1f.lean/declarations/cbvevalstate-addentry--af511c4611ea669b775d209b.md) | 74 | `declaration-track:af511c4611ea669b775d209b618e9d7b7c51b852b65675ad164e3c2ffebf84c8` |
| 6 | `def` | [CbvEvalState.rebuildLemmas](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variant74ebb4f59b1e1ee0f32f0feacdfd411777661556e556f5b938433207b48aee1f.lean/declarations/cbvevalstate-rebuildlemmas--362083d8f6c1940244994502.md) | 82 | `declaration-track:362083d8f6c1940244994502003ff296cdab97db441956941c678d8c9e537dea` |
| 7 | `def` | [CbvEvalState.erase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variant74ebb4f59b1e1ee0f32f0feacdfd411777661556e556f5b938433207b48aee1f.lean/declarations/cbvevalstate-erase--0215c4b1796c122abdebb61b.md) | 90 | `declaration-track:0215c4b1796c122abdebb61be6d7132ac16ecb7fb3b7a9f2a05d82a465a38d3a` |
| 8 | `abbrev` | [CbvEvalExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variant74ebb4f59b1e1ee0f32f0feacdfd411777661556e556f5b938433207b48aee1f.lean/declarations/cbvevalextension--106041e94a2bb8a3b506fbd8.md) | 100 | `declaration-track:106041e94a2bb8a3b506fbd8ad1a5421b84be7612b11e0460667fbb305da7435` |
| 9 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variant74ebb4f59b1e1ee0f32f0feacdfd411777661556e556f5b938433207b48aee1f.lean/declarations/builtin-initialize--ed0b809616f798b1ffce4dff.md) | 102 | `declaration-track:ed0b809616f798b1ffce4dfff5db1558603d5c45037ab67a1ff85090b97c2656` |
| 10 | `def` | [getCbvEvalLemmas](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variant74ebb4f59b1e1ee0f32f0feacdfd411777661556e556f5b938433207b48aee1f.lean/declarations/getcbvevallemmas--80295e4a3aa7b90f438e2c79.md) | 115 | `declaration-track:80295e4a3aa7b90f438e2c795059a29cd151817ca1157caae1a306d58110d907` |
| 11 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variant74ebb4f59b1e1ee0f32f0feacdfd411777661556e556f5b938433207b48aee1f.lean/declarations/builtin-initialize--1e182251975d98fedde9db64.md) | 119 | `declaration-track:1e182251975d98fedde9db64df23f90b7169083c7dec76a2bd7de86777c1840b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
