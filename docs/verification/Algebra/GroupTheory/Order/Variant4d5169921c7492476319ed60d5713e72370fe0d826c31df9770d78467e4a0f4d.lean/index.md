# Verification target: GRWTSK.Algebra.GroupTheory.Order.Variant4d5169921c7492476319ed60d5713e72370fe0d826c31df9770d78467e4a0f4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7d1e508bc745b4e616188fc62b40ca67466dbcf",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Order/Variant4d5169921c7492476319ed60d5713e72370fe0d826c31df9770d78467e4a0f4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Order/Variant4d5169921c7492476319ed60d5713e72370fe0d826c31df9770d78467e4a0f4d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Order/Variant4d5169921c7492476319ed60d5713e72370fe0d826c31df9770d78467e4a0f4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7d1e508bc745b4e616188fc62b40ca67466dbcf`.

Source path: `GRWTSK/Algebra/GroupTheory/Order/Variant4d5169921c7492476319ed60d5713e72370fe0d826c31df9770d78467e4a0f4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Order/Variant4d5169921c7492476319ed60d5713e72370fe0d826c31df9770d78467e4a0f4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subsemigroup.Operations` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mabs_mem_iff](../../../../../mathematics/Algebra/GroupTheory/Order/Variant4d5169921c7492476319ed60d5713e72370fe0d826c31df9770d78467e4a0f4d.lean/declarations/mabs-mem-iff--dd0b1984c255e9683973a3ad.md) | 19 | `result-track:dd0b1984c255e9683973a3ad7c328ec27432c6ff8487d838291486a75cc07cc9` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Order/Variant4d5169921c7492476319ed60d5713e72370fe0d826c31df9770d78467e4a0f4d.lean/declarations/instance--505e9a661ae6b2ac4a7c86a9.md) | 28 | `declaration-track:505e9a661ae6b2ac4a7c86a9e438a71ae52e707db6e83d1b4c06d35c90c543ca` |
| 3 | `theorem` | [NormalizerCondition.normal_of_coatom](../../../../../mathematics/Algebra/GroupTheory/Order/Variant4d5169921c7492476319ed60d5713e72370fe0d826c31df9770d78467e4a0f4d.lean/declarations/normalizercondition-normal-of-coatom--d154c6d54447f24fc0fdf5a3.md) | 43 | `result-track:d154c6d54447f24fc0fdf5a39be2cddf9e9af82b35b980c09b2add6cee957baf` |
| 4 | `theorem` | [isCoatom_comap](../../../../../mathematics/Algebra/GroupTheory/Order/Variant4d5169921c7492476319ed60d5713e72370fe0d826c31df9770d78467e4a0f4d.lean/declarations/iscoatom-comap--32cfaf05c22a893facfe4f31.md) | 48 | `result-track:32cfaf05c22a893facfe4f31bd219203c811b179a6aa74cd866b17c78fc57a08` |
| 5 | `theorem` | [isCoatom_map](../../../../../mathematics/Algebra/GroupTheory/Order/Variant4d5169921c7492476319ed60d5713e72370fe0d826c31df9770d78467e4a0f4d.lean/declarations/iscoatom-map--86a4f00ff51c39c194d96e77.md) | 53 | `result-track:86a4f00ff51c39c194d96e77980f15f5789cf5f33ea7864d29b8b38f1e06aaa4` |
| 6 | `lemma` | [isCoatom_comap_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Order/Variant4d5169921c7492476319ed60d5713e72370fe0d826c31df9770d78467e4a0f4d.lean/declarations/iscoatom-comap-of-surjective--0cf2b9fe1221425097131275.md) | 57 | `result-track:0cf2b9fe1221425097131275072954190116f1f686a6461679eff966cc5fd3c9` |
| 7 | `instance` | [toIsOrderedMonoid](../../../../../mathematics/Algebra/GroupTheory/Order/Variant4d5169921c7492476319ed60d5713e72370fe0d826c31df9770d78467e4a0f4d.lean/declarations/toisorderedmonoid--59f7dbd71e85bf43d784cec2.md) | 77 | `declaration-track:59f7dbd71e85bf43d784cec281ff5f4750a10275bd396210f0b9fc4d213bca45` |
| 8 | `lemma` | [Subsemigroup.strictMono_topEquiv](../../../../../mathematics/Algebra/GroupTheory/Order/Variant4d5169921c7492476319ed60d5713e72370fe0d826c31df9770d78467e4a0f4d.lean/declarations/subsemigroup-strictmono-topequiv--7fa5e8c70e1d476edcdffb7d.md) | 84 | `result-track:7fa5e8c70e1d476edcdffb7d557be8d8f378978b8c28349a16725058878d9696` |
| 9 | `lemma` | [MulEquiv.strictMono_subsemigroupCongr](../../../../../mathematics/Algebra/GroupTheory/Order/Variant4d5169921c7492476319ed60d5713e72370fe0d826c31df9770d78467e4a0f4d.lean/declarations/mulequiv-strictmono-subsemigroupcongr--c841b4b55b6cb264d2ecd4b5.md) | 88 | `result-track:c841b4b55b6cb264d2ecd4b5de87b2321e0a30f95a74a08ea3db5f0a353c0315` |
| 10 | `lemma` | [MulEquiv.strictMono_symm](../../../../../mathematics/Algebra/GroupTheory/Order/Variant4d5169921c7492476319ed60d5713e72370fe0d826c31df9770d78467e4a0f4d.lean/declarations/mulequiv-strictmono-symm--f9157e3c572edd7f6120d913.md) | 93 | `result-track:f9157e3c572edd7f6120d913ccd8e369c162cccb5163df3b499e98af52b22bac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
