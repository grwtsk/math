# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variante335e72409ede4a14255ede3a40f6e840c2a6235ca67af30a6d60bc357777e38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "810d0be432acc50e4b3384b4323a68cf5f779e9f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante335e72409ede4a14255ede3a40f6e840c2a6235ca67af30a6d60bc357777e38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante335e72409ede4a14255ede3a40f6e840c2a6235ca67af30a6d60bc357777e38.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante335e72409ede4a14255ede3a40f6e840c2a6235ca67af30a6d60bc357777e38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `810d0be432acc50e4b3384b4323a68cf5f779e9f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante335e72409ede4a14255ede3a40f6e840c2a6235ca67af30a6d60bc357777e38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variante335e72409ede4a14255ede3a40f6e840c2a6235ca67af30a6d60bc357777e38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Hall.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.CofilteredSystem` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rel` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hallMatchingsOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante335e72409ede4a14255ede3a40f6e840c2a6235ca67af30a6d60bc357777e38.lean/declarations/hallmatchingson--9796ce208fcf5587c75a859e.md) | 58 | `declaration-track:9796ce208fcf5587c75a859eaf7a59765ac00135a6ba55abd8dbbf5c4f890ae4` |
| 2 | `def` | [hallMatchingsOn.restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante335e72409ede4a14255ede3a40f6e840c2a6235ca67af30a6d60bc357777e38.lean/declarations/hallmatchingson-restrict--70de0babb52a1a1f35f20502.md) | 62 | `declaration-track:70de0babb52a1a1f35f20502c748f2ba2aed4671cdbdbd007c7de194fcb6a4ab` |
| 3 | `theorem` | [hallMatchingsOn.nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante335e72409ede4a14255ede3a40f6e840c2a6235ca67af30a6d60bc357777e38.lean/declarations/hallmatchingson-nonempty--6d46414cbd55063fd9542441.md) | 72 | `result-track:6d46414cbd55063fd9542441781b9edbdcc4f5a24df719ac5de9512337362da1` |
| 4 | `def` | [hallMatchingsFunctor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante335e72409ede4a14255ede3a40f6e840c2a6235ca67af30a6d60bc357777e38.lean/declarations/hallmatchingsfunctor--a86b89a1b863266f83ed8214.md) | 85 | `declaration-track:a86b89a1b863266f83ed8214138549047fc88c405eee1ded545c43e142f269d2` |
| 5 | `instance` | [hallMatchingsOn.finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante335e72409ede4a14255ede3a40f6e840c2a6235ca67af30a6d60bc357777e38.lean/declarations/hallmatchingson-finite--932cb85bf774668cdbb6a8b4.md) | 90 | `declaration-track:932cb85bf774668cdbb6a8b4046feb57480384669082fc8157c09df5725903a5` |
| 6 | `theorem` | [Finset.all_card_le_biUnion_card_iff_exists_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante335e72409ede4a14255ede3a40f6e840c2a6235ca67af30a6d60bc357777e38.lean/declarations/finset-all-card-le-biunion-card-iff-exists-injective--6e510ca823199eea19fa17a0.md) | 115 | `result-track:6e510ca823199eea19fa17a05ba0eab65fcf9c29d7c8cf12db0f634fe4d30aff` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante335e72409ede4a14255ede3a40f6e840c2a6235ca67af30a6d60bc357777e38.lean/declarations/instance--bb579a2a6bdc5455d6aae8bf.md) | 159 | `declaration-track:bb579a2a6bdc5455d6aae8bf0133da163e6101cea76ec4707a58a16d78575213` |
| 8 | `theorem` | [Fintype.all_card_le_rel_image_card_iff_exists_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante335e72409ede4a14255ede3a40f6e840c2a6235ca67af30a6d60bc357777e38.lean/declarations/fintype-all-card-le-rel-image-card-iff-exists-injective--f9684d9f0803a0b4208187a3.md) | 177 | `result-track:f9684d9f0803a0b4208187a313abcc81409d2a7cf255512694b0cf284846c28f` |
| 9 | `theorem` | [Fintype.all_card_le_filter_rel_iff_exists_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante335e72409ede4a14255ede3a40f6e840c2a6235ca67af30a6d60bc357777e38.lean/declarations/fintype-all-card-le-filter-rel-iff-exists-injective--373e8523be015299615311be.md) | 199 | `result-track:373e8523be015299615311be6aade4b892ae8733270e44b7566f80a80596472f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
