# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Preimage.Variantd781dbd4d03d4d1ae13239ece848398ddbe3b5cdaadeb21d121b8fb6d66cd221

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d353d2b0f9be71f23a300028c579360d0736fc2",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Preimage/Variantd781dbd4d03d4d1ae13239ece848398ddbe3b5cdaadeb21d121b8fb6d66cd221.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantd781dbd4d03d4d1ae13239ece848398ddbe3b5cdaadeb21d121b8fb6d66cd221.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantd781dbd4d03d4d1ae13239ece848398ddbe3b5cdaadeb21d121b8fb6d66cd221.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d353d2b0f9be71f23a300028c579360d0736fc2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Preimage/Variantd781dbd4d03d4d1ae13239ece848398ddbe3b5cdaadeb21d121b8fb6d66cd221.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Preimage/Variantd781dbd4d03d4d1ae13239ece848398ddbe3b5cdaadeb21d121b8fb6d66cd221.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Preimage` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_preimage'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantd781dbd4d03d4d1ae13239ece848398ddbe3b5cdaadeb21d121b8fb6d66cd221.lean/declarations/prod-preimage--29a8884d6eb7436fee4d5852.md) | 32 | `result-track:29a8884d6eb7436fee4d5852f1b1713f510d05efb8ffa8ae4787c446fd0240d0` |
| 2 | `lemma` | [prod_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantd781dbd4d03d4d1ae13239ece848398ddbe3b5cdaadeb21d121b8fb6d66cd221.lean/declarations/prod-preimage--5e30e0db3dea150abb4e67d8.md) | 41 | `result-track:5e30e0db3dea150abb4e67d8b9ae2a111a75dd31d785d2bf6bb5713750789ff2` |
| 3 | `lemma` | [prod_preimage_of_bij](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantd781dbd4d03d4d1ae13239ece848398ddbe3b5cdaadeb21d121b8fb6d66cd221.lean/declarations/prod-preimage-of-bij--f6a0f9240e9e7c58b68c394c.md) | 47 | `result-track:f6a0f9240e9e7c58b68c394c2261364af8d6b4603bbb4abe8d115696b1e0df87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
