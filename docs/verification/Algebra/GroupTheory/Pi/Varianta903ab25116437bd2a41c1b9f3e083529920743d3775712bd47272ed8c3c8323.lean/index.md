# Verification target: GRWTSK.Algebra.GroupTheory.Pi.Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b34177e9078d024c493cc1670aae834924d49c69",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b34177e9078d024c493cc1670aae834924d49c69`.

Source path: `GRWTSK/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Faithful` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Piecewise` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [smul'](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/declarations/smul--cfb932b7d6dae7bd48aca600.md) | 30 | `declaration-track:cfb932b7d6dae7bd48aca6003db3a6635390f410fa7972fef65c9e87c783d829` |
| 2 | `lemma` | [smul_def'](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/declarations/smul-def--c3c8f4422cabe9faf8bb1201.md) | 33 | `result-track:c3c8f4422cabe9faf8bb1201c398ec78c1e4bbdeaf87d9baf542c2a2c0169556` |
| 3 | `lemma` | [smul_apply'](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/declarations/smul-apply--15f8562829e294c012b1ee93.md) | 37 | `result-track:15f8562829e294c012b1ee93890f66f24d1a1c0c041aeaf756a6516f69861747` |
| 4 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/declarations/isscalartower--0d6861639f4a53c02b3d89a8.md) | 41 | `declaration-track:0d6861639f4a53c02b3d89a814023e5c2db862ec94cc21fe030a347c87aa68e5` |
| 5 | `instance` | [isScalarTower'](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/declarations/isscalartower--603d1e2839dd81003fcc1eae.md) | 46 | `declaration-track:603d1e2839dd81003fcc1eae9e5df5be427ea503b2a9243b83b8c0a3db6f9f39` |
| 6 | `instance` | [isScalarTower''](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/declarations/isscalartower--c9b03750aa8ff70e4f53adda.md) | 51 | `declaration-track:c9b03750aa8ff70e4f53addae7806858190baa0affbec850883684c70a497483` |
| 7 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/declarations/smulcommclass--51b91c26ee582186e4df818f.md) | 56 | `declaration-track:51b91c26ee582186e4df818f23b0750b0e2f88d98c308c11b4090fea8c91b44b` |
| 8 | `instance` | [smulCommClass'](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/declarations/smulcommclass--5ab05003b5543559cded9b98.md) | 61 | `declaration-track:5ab05003b5543559cded9b987b1b7b8f26630a29b6490e8b5760f7a278b535eb` |
| 9 | `instance` | [smulCommClass''](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/declarations/smulcommclass--dc82e46c75a4cdd84bb4d029.md) | 66 | `declaration-track:dc82e46c75a4cdd84bb4d0291bd00a9b3dc0cbf0fe3fa8a3677f9c9f8f8d49bc` |
| 10 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/declarations/iscentralscalar--7f099b21521d6f32f5bb135e.md) | 71 | `declaration-track:7f099b21521d6f32f5bb135e3e292010c8c788db9864abb6d45b3d7c757d165c` |
| 11 | `lemma` | [faithfulSMul_at](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/declarations/faithfulsmul-at--88b63a25441c70137bae8e31.md) | 80 | `result-track:88b63a25441c70137bae8e3152f725cdb3e5f7a3e08b6949f678b25515408405` |
| 12 | `instance` | [faithfulSMul](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/declarations/faithfulsmul--bbe528192c4363ef072642c6.md) | 88 | `declaration-track:bbe528192c4363ef072642c6090e551243d5d2c1cc450666af3f8c215bae2d54` |
| 13 | `instance` | [mulAction](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/declarations/mulaction--be73879dc4dec79828ef41c5.md) | 94 | `declaration-track:be73879dc4dec79828ef41c5eb466b82b86e52161a090f5faa998b9c188eb9ad` |
| 14 | `instance` | [mulAction'](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/declarations/mulaction--c892ff5c851807b81af4f4d8.md) | 100 | `declaration-track:c892ff5c851807b81af4f4d80f135a3cb4cf54ad218adaf26a39332596828d73` |
| 15 | `instance` | [hasSMul](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/declarations/hassmul--ca6e18245e7d0beb3f558276.md) | 116 | `declaration-track:ca6e18245e7d0beb3f5582765dfcbc27fd1cbb83ec4b2dc2109aceef0c1f1966` |
| 16 | `instance` | [if](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/declarations/if--aeb5d1acd272e7a9c5fd2785.md) | 122 | `declaration-track:aeb5d1acd272e7a9c5fd2785427e08c565e5711a7279786c23ac2b2bd56013e9` |
| 17 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/declarations/smulcommclass--d0be1371d2741033678cf8ea.md) | 123 | `declaration-track:d0be1371d2741033678cf8eada49e554a4f54bc63c60bfb0d93ef9ab4ce750c4` |
| 18 | `lemma` | [update_smul](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/declarations/update-smul--a7e4772f099d0c23cab74f03.md) | 127 | `result-track:a7e4772f099d0c23cab74f0344907858152efa08e66ed545078bdbf7d6b08632` |
| 19 | `lemma` | [extend_smul](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/declarations/extend-smul--157998391dfca609ed917fb7.md) | 132 | `result-track:157998391dfca609ed917fb75e0e5b87b8ccd0ff581001ee7d255f85b1579672` |
| 20 | `lemma` | [piecewise_smul](../../../../../mathematics/Algebra/GroupTheory/Pi/Varianta903ab25116437bd2a41c1b9f3e083529920743d3775712bd47272ed8c3c8323.lean/declarations/piecewise-smul--ee68c8c839d0cec840973d97.md) | 144 | `result-track:ee68c8c839d0cec840973d977563eda10ae9a3bc43be3feca04ff4039cde57a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
