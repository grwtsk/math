# Verification target: GRWTSK.Algebra.LinearAlgebra.Irreducible.Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d8b16e25977ba4c11e5cd2217a26e8243f68dcd",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d8b16e25977ba4c11e5cd2217a26e8243f68dcd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.RootPositive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.WeylGroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Submodule` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invtRootSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/declarations/invtrootsubmodule--90b8c0556920e1391fdfa425.md) | 44 | `declaration-track:90b8c0556920e1391fdfa4257e1b98232467ec77f62e0db09d0245fde84146fc` |
| 2 | `lemma` | [mem_invtRootSubmodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/declarations/mem-invtrootsubmodule-iff--f3c643a2b5cf910993730b22.md) | 47 | `result-track:f3c643a2b5cf910993730b22ff5d38ea6802e74a1acd57d92efda4e91cc8936e` |
| 3 | `lemma` | [invtRootSubmodule.top_mem](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/declarations/invtrootsubmodule-top-mem--cf84679abc5d7c7ad83cd8da.md) | 51 | `result-track:cf84679abc5d7c7ad83cd8dacf768fe152e4d9c6f04ed6a03a3ef7187c480241` |
| 4 | `lemma` | [invtRootSubmodule.bot_mem](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/declarations/invtrootsubmodule-bot-mem--5aac2e10748372a4243c56c1.md) | 54 | `result-track:5aac2e10748372a4243c56c121a0dd2e6246f2863d8a7d3f7ce55a3e0a9552f9` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/declarations/instance--0c4a50bb859ac56a99e136d9.md) | 57 | `declaration-track:0c4a50bb859ac56a99e136d97fa35d3436d9e1754dbdbf54f4b98f3e84a2b6e2` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/declarations/instance--338e25297138eea3ffe8939f.md) | 63 | `declaration-track:338e25297138eea3ffe8939f846ec30eaddb10e600e69360016a93142f0db4a3` |
| 7 | `lemma` | [isSimpleModule_weylGroupRootRep_iff](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/declarations/issimplemodule-weylgrouprootrep-iff--2e6436f873e9b69622ff857f.md) | 66 | `result-track:2e6436f873e9b69622ff857f8ae6cf0110fc0fd211eb0e40aeffc15fe6e6d415` |
| 8 | `class` | [IsIrreducible](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/declarations/isirreducible--6a2724bb5797ab4fe88f7b0c.md) | 89 | `declaration-track:6a2724bb5797ab4fe88f7b0cd8867b22a6479d937fde74f6892d4d15e3242242` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/declarations/instance--c4e19648ee1479c54ba1932f.md) | 97 | `declaration-track:c4e19648ee1479c54ba1932fa3e1e14d08dc445a68780ad16ce1939a00ce3ab0` |
| 10 | `lemma` | [isSimpleModule_weylGroupRootRep](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/declarations/issimplemodule-weylgrouprootrep--c598883124f7c6d630bfc0e4.md) | 103 | `result-track:c598883124f7c6d630bfc0e4014028ec9909d3916a87a2448fd7091ffc8cdea2` |
| 11 | `def` | [toRootSystem](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/declarations/torootsystem--bb624b8dc709238b9430c07b.md) | 109 | `declaration-track:bb624b8dc709238b9430c07b1408b523214c039d26b8ec7156fbb359e4be7fb6` |
| 12 | `lemma` | [invtSubmodule_reflection_of_invtSubmodule_coreflection](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/declarations/invtsubmodule-reflection-of-invtsubmodule-coreflection--4d851c24491715a1878e645a.md) | 116 | `result-track:4d851c24491715a1878e645ac9941a04e62a55a96a721fb73fd51e9a443fc15e` |
| 13 | `lemma` | [IsIrreducible.mk'](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/declarations/isirreducible-mk--7d4176e1b82f107cb2758b25.md) | 125 | `result-track:7d4176e1b82f107cb2758b25c86c0456b72d83d0c5703d8b1aee3b51f518e9f8` |
| 14 | `lemma` | [isIrreducible_iff_invtRootSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/declarations/isirreducible-iff-invtrootsubmodule--e19844eecbbbc285f76eece3.md) | 139 | `result-track:e19844eecbbbc285f76eece326e6d9fc2f03974a736c985b2b561a7ca89333ce` |
| 15 | `lemma` | [exist_set_root_not_disjoint_and_le_ker_coroot'_of_invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/declarations/exist-set-root-not-disjoint-and-le-ker-coroot-of-invtsubmodule--90ecabca1b730ed6b2b18fd4.md) | 153 | `result-track:90ecabca1b730ed6b2b18fd4652860c89a1f87ce69991fde65ab6723f4984ba5` |
| 16 | `lemma` | [span_orbit_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/declarations/span-orbit-eq-top--e0f9cfaf254d6d68b96c263f.md) | 164 | `result-track:e0f9cfaf254d6d68b96c263f2945e977c0ce386ba549c35c2490636bef5e24c3` |
| 17 | `lemma` | [exists_form_eq_form_and_form_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/declarations/exists-form-eq-form-and-form-ne-zero--d9b1c7f74f6c9bdb105663be.md) | 171 | `result-track:d9b1c7f74f6c9bdb105663be70c766f4a8278ac2d4e4a646b78479d52728d583` |
| 18 | `lemma` | [span_root_image_eq_top_of_forall_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/declarations/span-root-image-eq-top-of-forall-orthogonal--a3d8394f90a689726143cb23.md) | 183 | `result-track:a3d8394f90a689726143cb237e3ace7641aa9fe06853381b3d087d561e256637` |
| 19 | `lemma` | [eq_top_of_mem_invtSubmodule_of_forall_eq_univ](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/declarations/eq-top-of-mem-invtsubmodule-of-forall-eq-univ--ee6c5fca0ca34f0e59a45955.md) | 205 | `result-track:ee6c5fca0ca34f0e59a4595531a459f25ba8a0f8565bfd285154723fc8b1bec9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
