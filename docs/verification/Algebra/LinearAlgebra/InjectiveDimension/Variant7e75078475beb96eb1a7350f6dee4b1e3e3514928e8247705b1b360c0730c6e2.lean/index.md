# Verification target: GRWTSK.Algebra.LinearAlgebra.InjectiveDimension.Variant7e75078475beb96eb1a7350f6dee4b1e3e3514928e8247705b1b360c0730c6e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f02efd21f2b7b98b88f977c0a803868b1a08c2aa",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InjectiveDimension/Variant7e75078475beb96eb1a7350f6dee4b1e3e3514928e8247705b1b360c0730c6e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InjectiveDimension/Variant7e75078475beb96eb1a7350f6dee4b1e3e3514928e8247705b1b360c0730c6e2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InjectiveDimension/Variant7e75078475beb96eb1a7350f6dee4b1e3e3514928e8247705b1b360c0730c6e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f02efd21f2b7b98b88f977c0a803868b1a08c2aa`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InjectiveDimension/Variant7e75078475beb96eb1a7350f6dee4b1e3e3514928e8247705b1b360c0730c6e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InjectiveDimension/Variant7e75078475beb96eb1a7350f6dee4b1e3e3514928e8247705b1b360c0730c6e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InjectiveDimension/Variant7e75078475beb96eb1a7350f6dee4b1e3e3514928e8247705b1b360c0730c6e2.lean/declarations/instance--072c9d3cf78686252dbc8dd2.md) | 42 | `declaration-track:072c9d3cf78686252dbc8dd263ec367780bdf4a1228d58b1a4098d0c444debb7` |
| 2 | `lemma` | [localizedModule_hasInjectiveDimensionLE](../../../../../mathematics/Algebra/LinearAlgebra/InjectiveDimension/Variant7e75078475beb96eb1a7350f6dee4b1e3e3514928e8247705b1b360c0730c6e2.lean/declarations/localizedmodule-hasinjectivedimensionle--850a4b8ff9e2b4d9f315f54e.md) | 50 | `result-track:850a4b8ff9e2b4d9f315f54e5281e743c1757ebbca1980b96375d75f720c1458` |
| 3 | `lemma` | [injectiveDimension_le_injectiveDimension_of_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/InjectiveDimension/Variant7e75078475beb96eb1a7350f6dee4b1e3e3514928e8247705b1b360c0730c6e2.lean/declarations/injectivedimension-le-injectivedimension-of-islocalizedmodule--37134ea3178a6ddbe22c95bb.md) | 77 | `result-track:37134ea3178a6ddbe22c95bb6a7f60b92afd599e87eb041ab5f14c0fe8b587d8` |
| 4 | `lemma` | [hasInjectiveDimensionLE_iff_forall_maximalSpectrum](../../../../../mathematics/Algebra/LinearAlgebra/InjectiveDimension/Variant7e75078475beb96eb1a7350f6dee4b1e3e3514928e8247705b1b360c0730c6e2.lean/declarations/hasinjectivedimensionle-iff-forall-maximalspectrum--02882bea088f978696753797.md) | 96 | `result-track:02882bea088f97869675379771db94bdc4771b678a492aa714225d94b67e1630` |
| 5 | `lemma` | [hasInjectiveDimensionLE_iff_forall_primeSpectrum](../../../../../mathematics/Algebra/LinearAlgebra/InjectiveDimension/Variant7e75078475beb96eb1a7350f6dee4b1e3e3514928e8247705b1b360c0730c6e2.lean/declarations/hasinjectivedimensionle-iff-forall-primespectrum--a9121bf6b882a448a005abf1.md) | 134 | `result-track:a9121bf6b882a448a005abf1ab20b51fafa7aab1145db35c6b65bdd62d5ca911` |
| 6 | `lemma` | [injectiveDimension_eq_iSup_localizedModule_prime](../../../../../mathematics/Algebra/LinearAlgebra/InjectiveDimension/Variant7e75078475beb96eb1a7350f6dee4b1e3e3514928e8247705b1b360c0730c6e2.lean/declarations/injectivedimension-eq-isup-localizedmodule-prime--ea819a1254fff088d2a84ecb.md) | 141 | `result-track:ea819a1254fff088d2a84ecbd49b5daed9a539d5ba1016a43c108af6336b3080` |
| 7 | `lemma` | [injectiveDimension_eq_iSup_localizedModule_maximal](../../../../../mathematics/Algebra/LinearAlgebra/InjectiveDimension/Variant7e75078475beb96eb1a7350f6dee4b1e3e3514928e8247705b1b360c0730c6e2.lean/declarations/injectivedimension-eq-isup-localizedmodule-maximal--bf62b2d0105e1b1eaea7e333.md) | 163 | `result-track:bf62b2d0105e1b1eaea7e3333610f2b5f33f05b9417ea1740d4e64136ea8d2fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
