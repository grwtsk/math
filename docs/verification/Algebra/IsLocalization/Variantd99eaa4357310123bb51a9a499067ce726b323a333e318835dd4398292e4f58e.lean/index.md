# Verification target: GRWTSK.Algebra.IsLocalization.Variantd99eaa4357310123bb51a9a499067ce726b323a333e318835dd4398292e4f58e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "097f5eae96fb7d53af6759423c8a61ada7399913",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsLocalization/Variantd99eaa4357310123bb51a9a499067ce726b323a333e318835dd4398292e4f58e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IsLocalization/Variantd99eaa4357310123bb51a9a499067ce726b323a333e318835dd4398292e4f58e.lean/index.md) · [Full source](../../../../mathematics/Algebra/IsLocalization/Variantd99eaa4357310123bb51a9a499067ce726b323a333e318835dd4398292e4f58e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `097f5eae96fb7d53af6759423c8a61ada7399913`.

Source path: `GRWTSK/Algebra/IsLocalization/Variantd99eaa4357310123bb51a9a499067ce726b323a333e318835dd4398292e4f58e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsLocalization/Variantd99eaa4357310123bb51a9a499067ce726b323a333e318835dd4398292e4f58e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Bilinear` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LocalizedModule.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isLocalizedModule_iff_isLocalization](../../../../mathematics/Algebra/IsLocalization/Variantd99eaa4357310123bb51a9a499067ce726b323a333e318835dd4398292e4f58e.lean/declarations/islocalizedmodule-iff-islocalization--97bb099d89dc701362cbe9d9.md) | 28 | `result-track:97bb099d89dc701362cbe9d9b58f9898e839be402903360680530087ec300df2` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IsLocalization/Variantd99eaa4357310123bb51a9a499067ce726b323a333e318835dd4398292e4f58e.lean/declarations/instance--8b54906ce72b822b876dfafa.md) | 40 | `declaration-track:8b54906ce72b822b876dfafa4fa2a87bbc0679e2d78af6db13e0352ee5ec5128` |
| 3 | `lemma` | [isLocalizedModule_iff_isLocalization'](../../../../mathematics/Algebra/IsLocalization/Variantd99eaa4357310123bb51a9a499067ce726b323a333e318835dd4398292e4f58e.lean/declarations/islocalizedmodule-iff-islocalization--589152eee48a35c6cbb9a428.md) | 48 | `result-track:589152eee48a35c6cbb9a4285b509035d270698760cd28ebfe8f4b1cdde5b862` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IsLocalization/Variantd99eaa4357310123bb51a9a499067ce726b323a333e318835dd4398292e4f58e.lean/declarations/instance--b71bf3a0f87097f56feafb37.md) | 53 | `declaration-track:b71bf3a0f87097f56feafb376873afa56d3eae44965b6e5708ec64b0d176d6fb` |
| 5 | `lemma` | [IsLocalization.mk'_algebraMap_eq_mk'](../../../../mathematics/Algebra/IsLocalization/Variantd99eaa4357310123bb51a9a499067ce726b323a333e318835dd4398292e4f58e.lean/declarations/islocalization-mk-algebramap-eq-mk--c06ae0f2c796ed1634fa665f.md) | 58 | `result-track:c06ae0f2c796ed1634fa665f26eaffb1c3b0673ea3a0f1a400d9838178b8d984` |
| 6 | `lemma` | [IsLocalization.mk'_eq_mk'](../../../../mathematics/Algebra/IsLocalization/Variantd99eaa4357310123bb51a9a499067ce726b323a333e318835dd4398292e4f58e.lean/declarations/islocalization-mk-eq-mk--6891f645a11d57d50af4de17.md) | 66 | `result-track:6891f645a11d57d50af4de17bb7036817a7609d7f0cf4bed22f4b7669a1a8e7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
