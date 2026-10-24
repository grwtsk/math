# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sections.Variantc7685a0f4915559b323be1e593db3a0076e0fd573c4c211cb51b768aaf33d38d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37534ce84d29a0d413f8fdb6e332b284df2a4541",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sections/Variantc7685a0f4915559b323be1e593db3a0076e0fd573c4c211cb51b768aaf33d38d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sections/Variantc7685a0f4915559b323be1e593db3a0076e0fd573c4c211cb51b768aaf33d38d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sections/Variantc7685a0f4915559b323be1e593db3a0076e0fd573c4c211cb51b768aaf33d38d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37534ce84d29a0d413f8fdb6e332b284df2a4541`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sections/Variantc7685a0f4915559b323be1e593db3a0076e0fd573c4c211cb51b768aaf33d38d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sections/Variantc7685a0f4915559b323be1e593db3a0076e0fd573c4c211cb51b768aaf33d38d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Bind` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sections](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sections/Variantc7685a0f4915559b323be1e593db3a0076e0fd573c4c211cb51b768aaf33d38d.lean/declarations/sections--811a5381c3b2982b980b19c5.md) | 25 | `declaration-track:811a5381c3b2982b980b19c5dce6978be658ec93e8930368dbd2d4f16eb39e0d` |
| 2 | `theorem` | [sections_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sections/Variantc7685a0f4915559b323be1e593db3a0076e0fd573c4c211cb51b768aaf33d38d.lean/declarations/sections-zero--11959b31b1e3f87b09ef53d6.md) | 31 | `result-track:11959b31b1e3f87b09ef53d63461cd31dd2fb5fc71b8d0776f9f74f36b183750` |
| 3 | `theorem` | [sections_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sections/Variantc7685a0f4915559b323be1e593db3a0076e0fd573c4c211cb51b768aaf33d38d.lean/declarations/sections-cons--10585acb3331395ff45e90c0.md) | 36 | `result-track:10585acb3331395ff45e90c068976cb425ee7409e96b7406c4122c55fefd5090` |
| 4 | `theorem` | [coe_sections](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sections/Variantc7685a0f4915559b323be1e593db3a0076e0fd573c4c211cb51b768aaf33d38d.lean/declarations/coe-sections--58074e5853614608bb71b80c.md) | 41 | `result-track:58074e5853614608bb71b80c8ab438059242ca322ee649bc1d3102165cc8ecda` |
| 5 | `theorem` | [sections_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sections/Variantc7685a0f4915559b323be1e593db3a0076e0fd573c4c211cb51b768aaf33d38d.lean/declarations/sections-add--34c550c9fe34042dafa708d9.md) | 53 | `result-track:34c550c9fe34042dafa708d9d2f0c29813f53f4c23f38b5f18a21b27d8fbff12` |
| 6 | `theorem` | [mem_sections](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sections/Variantc7685a0f4915559b323be1e593db3a0076e0fd573c4c211cb51b768aaf33d38d.lean/declarations/mem-sections--8cac471fc56dff06e9e08aeb.md) | 59 | `result-track:8cac471fc56dff06e9e08aebe7fefe6c3c5cabd9e6a3d7054afe258aefad7acc` |
| 7 | `theorem` | [card_sections](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sections/Variantc7685a0f4915559b323be1e593db3a0076e0fd573c4c211cb51b768aaf33d38d.lean/declarations/card-sections--e6279f236da0b75c06be0cde.md) | 66 | `result-track:e6279f236da0b75c06be0cde4f3515d1aa024f4179eee29ff03dfae6e6814332` |
| 8 | `theorem` | [prod_map_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sections/Variantc7685a0f4915559b323be1e593db3a0076e0fd573c4c211cb51b768aaf33d38d.lean/declarations/prod-map-sum--49f11cf55547f67cb401c69d.md) | 70 | `result-track:49f11cf55547f67cb401c69d8b36ba11b954a916a977bc4c8b704342d5dbc1bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
