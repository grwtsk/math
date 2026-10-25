# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OverflowAware.Variant2c427f5870e4d28098e889235e06671f30e0fedf0b91dfc5b2c3a24c6505cada

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6dcbed5d1f3e3171b18a3a21d5c5081f22c5aa4",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variant2c427f5870e4d28098e889235e06671f30e0fedf0b91dfc5b2c3a24c6505cada.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variant2c427f5870e4d28098e889235e06671f30e0fedf0b91dfc5b2c3a24c6505cada.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variant2c427f5870e4d28098e889235e06671f30e0fedf0b91dfc5b2c3a24c6505cada.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6dcbed5d1f3e3171b18a3a21d5c5081f22c5aa4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variant2c427f5870e4d28098e889235e06671f30e0fedf0b91dfc5b2c3a24c6505cada.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variant2c427f5870e4d28098e889235e06671f30e0fedf0b91dfc5b2c3a24c6505cada.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Fin.Lemmas` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [addNat?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variant2c427f5870e4d28098e889235e06671f30e0fedf0b91dfc5b2c3a24c6505cada.lean/declarations/addnat--38f91233f277b8815f5cb021.md) | 26 | `declaration-track:38f91233f277b8815f5cb0218884ebfbcf1cbf21acde7b578fc2575e2bf38eb7` |
| 2 | `theorem` | [addNat?_eq_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variant2c427f5870e4d28098e889235e06671f30e0fedf0b91dfc5b2c3a24c6505cada.lean/declarations/addnat-eq-some--281672cf630ec3bbe745c8b6.md) | 29 | `result-track:281672cf630ec3bbe745c8b6c2cbba2ed21e9df78e17e26d46e438cddd263ffa` |
| 3 | `theorem` | [addNat?_eq_some_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variant2c427f5870e4d28098e889235e06671f30e0fedf0b91dfc5b2c3a24c6505cada.lean/declarations/addnat-eq-some-iff--b8ecb1160a236b2d2eee1a1b.md) | 32 | `result-track:b8ecb1160a236b2d2eee1a1b3f4666eafa448e573bf756984693e9fc0ff5f564` |
| 4 | `theorem` | [addNat?_eq_none_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variant2c427f5870e4d28098e889235e06671f30e0fedf0b91dfc5b2c3a24c6505cada.lean/declarations/addnat-eq-none-iff--e4c63ae8e1fa98d9800ef120.md) | 38 | `result-track:e4c63ae8e1fa98d9800ef120a1eeac718fb2d3f520ef3690bf60684414724ea2` |
| 5 | `theorem` | [addNat?_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variant2c427f5870e4d28098e889235e06671f30e0fedf0b91dfc5b2c3a24c6505cada.lean/declarations/addnat-zero--1ba1eccf2e29201cadb86782.md) | 43 | `result-track:1ba1eccf2e29201cadb8678292a717ada986c9c36bd2a571c2515f4f222bf365` |
| 6 | `theorem` | [addNat?_eq_dif](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variant2c427f5870e4d28098e889235e06671f30e0fedf0b91dfc5b2c3a24c6505cada.lean/declarations/addnat-eq-dif--44e8e09353a5563b50266cdd.md) | 47 | `result-track:44e8e09353a5563b50266cdd085248f3d0211e5b762af10591ab5abfe2feb172` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
