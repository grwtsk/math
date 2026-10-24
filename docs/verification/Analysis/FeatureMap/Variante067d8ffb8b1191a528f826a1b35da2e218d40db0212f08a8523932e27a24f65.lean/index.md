# Verification target: GRWTSK.Analysis.FeatureMap.Variante067d8ffb8b1191a528f826a1b35da2e218d40db0212f08a8523932e27a24f65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "085883d661e5dc2e0c2a4951da50345d9563f198",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FeatureMap/Variante067d8ffb8b1191a528f826a1b35da2e218d40db0212f08a8523932e27a24f65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FeatureMap/Variante067d8ffb8b1191a528f826a1b35da2e218d40db0212f08a8523932e27a24f65.lean/index.md) · [Full source](../../../../mathematics/Analysis/FeatureMap/Variante067d8ffb8b1191a528f826a1b35da2e218d40db0212f08a8523932e27a24f65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `085883d661e5dc2e0c2a4951da50345d9563f198`.

Source path: `GRWTSK/Analysis/FeatureMap/Variante067d8ffb8b1191a528f826a1b35da2e218d40db0212f08a8523932e27a24f65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FeatureMap/Variante067d8ffb8b1191a528f826a1b35da2e218d40db0212f08a8523932e27a24f65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Hilbert.Completion` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernelVector](../../../../mathematics/Analysis/FeatureMap/Variante067d8ffb8b1191a528f826a1b35da2e218d40db0212f08a8523932e27a24f65.lean/declarations/kernelvector--521486ca3df3fbfca537e819.md) | 23 | `declaration-track:521486ca3df3fbfca537e81935ab659a433a1259aea099b7a05da64f3a1f342e` |
| 2 | `def` | [rawToKernelSpace](../../../../mathematics/Analysis/FeatureMap/Variante067d8ffb8b1191a528f826a1b35da2e218d40db0212f08a8523932e27a24f65.lean/declarations/rawtokernelspace--6750434cf2abb40f71bc49cf.md) | 30 | `declaration-track:6750434cf2abb40f71bc49cfe956d9f4b192345817ba936f2c829f87a6f2843d` |
| 3 | `theorem` | [rawToKernelSpace_basisVector](../../../../mathematics/Analysis/FeatureMap/Variante067d8ffb8b1191a528f826a1b35da2e218d40db0212f08a8523932e27a24f65.lean/declarations/rawtokernelspace-basisvector--3c971238cd38546638724720.md) | 35 | `result-track:3c971238cd3854663872472099cf007924e20b758877f92d36220502fb85641e` |
| 4 | `theorem` | [inner_rawToKernelSpace](../../../../mathematics/Analysis/FeatureMap/Variante067d8ffb8b1191a528f826a1b35da2e218d40db0212f08a8523932e27a24f65.lean/declarations/inner-rawtokernelspace--ee5c7a70e8eb1c8e4fdc14c6.md) | 42 | `result-track:ee5c7a70e8eb1c8e4fdc14c6d8629cfe13b70c8c5bea6d0663a609ead663c936` |
| 5 | `theorem` | [inner_kernelVector](../../../../mathematics/Analysis/FeatureMap/Variante067d8ffb8b1191a528f826a1b35da2e218d40db0212f08a8523932e27a24f65.lean/declarations/inner-kernelvector--b476fb22a6379857f02a0dae.md) | 53 | `result-track:b476fb22a6379857f02a0dae4531c257b04a783f20f08ad4315b2b9d3fca81d1` |
| 6 | `theorem` | [norm_kernelVector_sq](../../../../mathematics/Analysis/FeatureMap/Variante067d8ffb8b1191a528f826a1b35da2e218d40db0212f08a8523932e27a24f65.lean/declarations/norm-kernelvector-sq--3eadbe6402c8a3aa0e689815.md) | 62 | `result-track:3eadbe6402c8a3aa0e6898151b52ecfe16403db5a8258e776d7d198ae9022d42` |
| 7 | `def` | [kernelSpan](../../../../mathematics/Analysis/FeatureMap/Variante067d8ffb8b1191a528f826a1b35da2e218d40db0212f08a8523932e27a24f65.lean/declarations/kernelspan--f303ec418a0a5469c787dfa9.md) | 69 | `declaration-track:f303ec418a0a5469c787dfa97fcd15524600f6479fdcd5973007362e6d8336fb` |
| 8 | `theorem` | [rawToKernelSpace_mem_span](../../../../mathematics/Analysis/FeatureMap/Variante067d8ffb8b1191a528f826a1b35da2e218d40db0212f08a8523932e27a24f65.lean/declarations/rawtokernelspace-mem-span--72390bdeed7f810331c30871.md) | 73 | `result-track:72390bdeed7f810331c3087140159d27c315a48b16495af2771206f00a35f18a` |
| 9 | `theorem` | [kernelVector_denseSpan](../../../../mathematics/Analysis/FeatureMap/Variante067d8ffb8b1191a528f826a1b35da2e218d40db0212f08a8523932e27a24f65.lean/declarations/kernelvector-densespan--6ac1181ed49299a7d229ee6f.md) | 97 | `result-track:6ac1181ed49299a7d229ee6f7e39a66267f1df6b7e0e1b00f6052a3b51de5a53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
