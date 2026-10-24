# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Tensor.Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21e8f444470e83ce87892baf3565b7b234e37df9",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21e8f444470e83ce87892baf3565b7b234e37df9`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.Grid` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SpectralTensor](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/spectraltensor--fff6588772a0d6d8d04e6ccd.md) | 21 | `declaration-track:fff6588772a0d6d8d04e6ccdac07d58821bed793244db25fee1c8767b6199735` |
| 2 | `theorem` | [ext](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/ext--7b864abb06cc5c6689da7d1e.md) | 27 | `result-track:7b864abb06cc5c6689da7d1e7489fd8d95026912222ce6baae2286728be564ba` |
| 3 | `def` | [zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/zero--5e5ed95375f1e4f5e49fe6c8.md) | 39 | `declaration-track:5e5ed95375f1e4f5e49fe6c8f26ec690f48127876af4dd2e85446747b39bf3af` |
| 4 | `def` | [add](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/add--5288ffe4e1d023dfa010350a.md) | 42 | `declaration-track:5288ffe4e1d023dfa010350aa406363fa8ff6b71109eaa39ecc0d3960e261237` |
| 5 | `def` | [sub](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/sub--e6309c6f1279b2cb45b10449.md) | 47 | `declaration-track:e6309c6f1279b2cb45b104490e08830b6b1fabc7607156041275c4f2ae84793f` |
| 6 | `def` | [smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/smul--c3b73fad333e8f9570fb96fe.md) | 52 | `declaration-track:c3b73fad333e8f9570fb96fe8e1c92c5b79779286b4bd5f188742d14b2c54c1e` |
| 7 | `def` | [constant](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/constant--c42efd6e0dd5dc563b38ccdf.md) | 58 | `declaration-track:c42efd6e0dd5dc563b38ccdf84795bd298287d9b1b69e85ba88ee4e959f2b460` |
| 8 | `def` | [mean](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/mean--f3060ffc13a96246fd2661f7.md) | 63 | `declaration-track:f3060ffc13a96246fd2661f71ec800f2a799d4aed3da99e6ef90ca11493fc520` |
| 9 | `def` | [visibleRange01](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/visiblerange01--232b782c505675e25f7f0243.md) | 69 | `declaration-track:232b782c505675e25f7f02433eec47435f169f0b49176c087a5d3a4c5935b339` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/instance--96f04aaaee8e27df4063c8e2.md) | 74 | `declaration-track:96f04aaaee8e27df4063c8e26cb9f1a75a934ff2341a28f341cde0427b0e30dd` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/instance--85c697d5ba479907cfb3d930.md) | 77 | `declaration-track:85c697d5ba479907cfb3d930305368a56d6a0f4c99b1da1afda53c0404442696` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/instance--08899574c74c76834cd9bc05.md) | 80 | `declaration-track:08899574c74c76834cd9bc05d301281016eda0a9790d8f369d57876c48b2b7be` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/instance--9ab1ebe621d4035f3f2a0db3.md) | 83 | `declaration-track:9ab1ebe621d4035f3f2a0db3a62c6d89a0729fbf4877efa68b8c8f2f7cb0622b` |
| 14 | `theorem` | [value_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/value-zero--c4bd5695e34d8a11b37cf3b7.md) | 87 | `result-track:c4bd5695e34d8a11b37cf3b70361ef2adf8fac577a1a6ef6462c5bd4e619fb8c` |
| 15 | `theorem` | [value_add](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/value-add--5ccc007c0bcf3d5ecdd84542.md) | 92 | `result-track:5ccc007c0bcf3d5ecdd8454252586435e8570a5da5354b890a3cef4342e9c03d` |
| 16 | `theorem` | [value_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/value-sub--9c68d750742fc00eba43a09d.md) | 100 | `result-track:9c68d750742fc00eba43a09d32472de09722243c33ea95dd12ac689b681a5d5f` |
| 17 | `theorem` | [value_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/value-smul--fc1795dd10108eb200b6d4b2.md) | 108 | `result-track:fc1795dd10108eb200b6d4b25fd2f881a301055ace2801bbd14dfb5aa288c621` |
| 18 | `theorem` | [value_constant](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/value-constant--00b97c80f972fb0c1fc90f65.md) | 117 | `result-track:00b97c80f972fb0c1fc90f65fa5173e598d0ec95ac557375931984e9d1f6444d` |
| 19 | `structure` | [DiracEigenDatum](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/diraceigendatum--73a1d523e65341dd561a6656.md) | 132 | `declaration-track:73a1d523e65341dd561a66565af4054cac991ffab3fb148f3832cec3419c11c1` |
| 20 | `structure` | [DiracSpectrum](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/diracspectrum--b79d83239ed60176f840f2c9.md) | 145 | `declaration-track:b79d83239ed60176f840f2c998751c2e7ed6933c37b8401292ccb206b4dc17c5` |
| 21 | `structure` | [DiracSpectrumObject](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/diracspectrumobject--301d0ea56eb1223c0e51173d.md) | 161 | `declaration-track:301d0ea56eb1223c0e51173d90cd3fbe631b8efb1733743ff41cad30cc9e6e01` |
| 22 | `theorem` | [dirac_spectrum_self_adjoint_like](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/dirac-spectrum-self-adjoint-like--e78a67a151f8461990638701.md) | 170 | `result-track:e78a67a151f8461990638701d0c13d0c7785034a7fd78e4d3e4635ecc8c689c7` |
| 23 | `theorem` | [dirac_spectrum_discrete](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/dirac-spectrum-discrete--b91e01ea730a238aa983f184.md) | 175 | `result-track:b91e01ea730a238aa983f184321006fe578e6dec5920e5f0190e82ced85e4594` |
| 24 | `theorem` | [dirac_spectrum_compact_resolvent_like](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/dirac-spectrum-compact-resolvent-like--064d1b0b185af7f86e7f4a30.md) | 180 | `result-track:064d1b0b185af7f86e7f4a3016f822f551c987cab74471c860985740e36214b3` |
| 25 | `theorem` | [dirac_spectrum_object_is_categorical](../../../../../mathematics/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/declarations/dirac-spectrum-object-is-categorical--16451c3b115be4b02899f4ee.md) | 185 | `result-track:16451c3b115be4b02899f4eec14c178fba2f5ae7f78ee7409225c32dbc385d9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
