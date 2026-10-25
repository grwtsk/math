# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.Presheaf.Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df75f7318a0696a5ab1220ad92134ef1b781d417",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df75f7318a0696a5ab1220ad92134ef1b781d417`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Differentials.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Derivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean/declarations/derivation--6c7bde22eef4d9377078d4b9.md) | 61 | `declaration-track:6c7bde22eef4d9377078d4b92af599be6aa9c9926587aca7debcbb66c6f65d0e` |
| 2 | `lemma` | [congr_d](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean/declarations/congr-d--aea04c0e009e57038df99999.md) | 77 | `result-track:aea04c0e009e57038df9999980f56c000ffeb011c6159437c10eb2f67408575d` |
| 3 | `lemma` | [d_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean/declarations/d-one--99effbc866b98c5b6f7d9f3c.md) | 82 | `result-track:99effbc866b98c5b6f7d9f3c67e63179857ccdcd9666e32441fb6e1d739eefcf` |
| 4 | `def` | [postcomp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean/declarations/postcomp--0e1c98659ff75d6aaa246517.md) | 87 | `declaration-track:0e1c98659ff75d6aaa246517dec59c4485a18e12b802c0a9964565769277ad0e` |
| 5 | `structure` | [Universal](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean/declarations/universal--dbc2a1f34a52fa6e197af37d.md) | 98 | `declaration-track:dbc2a1f34a52fa6e197af37d36b325d4ebbe9e9a924144bf474f04ca7a0a35d3` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean/declarations/instance--c155608348163d30c7986409.md) | 109 | `declaration-track:c155608348163d30c79864099a1f0531f99cda0d48efe0049d7cdfc8006fad92` |
| 7 | `class` | [HasDifferentials](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean/declarations/hasdifferentials--e843424678a85caa32c237a9.md) | 126 | `declaration-track:e843424678a85caa32c237a96cd57a48fab5ec9a1e31b1c6b96dce7543a5c619` |
| 8 | `abbrev` | [Derivation'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean/declarations/derivation--4108e2d58c90a42a38d47aad.md) | 132 | `declaration-track:4108e2d58c90a42a38d47aad246de0a904f6e77b92335b8dd841979c591aabf1` |
| 9 | `lemma` | [d_app](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean/declarations/d-app--91a3e5f97602231ff5e945b8.md) | 139 | `result-track:91a3e5f97602231ff5e945b8d3d468c27908c01b6c21c925dadd58b190a47ce6` |
| 10 | `def` | [app](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean/declarations/app--282b4140f04daf2046c50c49.md) | 145 | `declaration-track:282b4140f04daf2046c50c496539bd829d26ef82e0a20108633034d8edb41e66` |
| 11 | `lemma` | [app_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean/declarations/app-apply--5de8faa9a498fa001b66081a.md) | 149 | `result-track:5de8faa9a498fa001b66081a0d036478d9ff1bcf651a696403bdbeadca296060` |
| 12 | `def` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean/declarations/mk--f83ce12b5ffee07a4b7d98f3.md) | 159 | `declaration-track:f83ce12b5ffee07a4b7d98f3ccf07823021b2093b42fea5743e98e06781607b2` |
| 13 | `lemma` | [mk_app](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean/declarations/mk-app--9316bc793d57c5ee017313cf.md) | 167 | `result-track:9316bc793d57c5ee017313cf5b751e3c5c19a7ef75b1e2cfaf32fb8693fe986e` |
| 14 | `def` | [Universal.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean/declarations/universal-mk--dcf5a184a131e029223f3c07.md) | 170 | `declaration-track:dcf5a184a131e029223f3c07dde01f317539d691ec7ac42a2cd8260ced5097a1` |
| 15 | `def` | [relativeDifferentials'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean/declarations/relativedifferentials--47c68640784120c9a5bae503.md) | 190 | `declaration-track:47c68640784120c9a5bae503bb95f7d160a1c373b089c82eb62d423d38624702` |
| 16 | `lemma` | [relativeDifferentials'_map_d](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean/declarations/relativedifferentials-map-d--6fbf66d57459c6f6bcfd3b0f.md) | 202 | `result-track:6fbf66d57459c6f6bcfd3b0fbc67843c156cd4cb13194e808a5972436a22524b` |
| 17 | `def` | [derivation'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean/declarations/derivation--937086006173a6ad29f52256.md) | 211 | `declaration-track:937086006173a6ad29f522562e8405443a59d7284378d983b86f85b633cba675` |
| 18 | `def` | [isUniversal'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean/declarations/isuniversal--07f0cda4e27100bcdc1dbf46.md) | 216 | `declaration-track:07f0cda4e27100bcdc1dbf46680e20ef3201d9ff846e4e71d29d8b0ab4ca2094` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant0b14e5c56861c5eb9b82f8077dad3c6f30bd35b57bd22f0f9cc637252d7e06b6.lean/declarations/instance--909b580a90d33b0a01360884.md) | 235 | `declaration-track:909b580a90d33b0a01360884497528a5eb0f12f062eaac668d22d0f3b5424bd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
