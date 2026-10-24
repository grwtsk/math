# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Union.Variantf46564e4b5948e036576bc91eb5a053ddd9a7d6bb91e4d088cc284373b281637

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abcf5a2921176283ef917e197d31177db4d4e97d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Union/Variantf46564e4b5948e036576bc91eb5a053ddd9a7d6bb91e4d088cc284373b281637.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Union/Variantf46564e4b5948e036576bc91eb5a053ddd9a7d6bb91e4d088cc284373b281637.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Union/Variantf46564e4b5948e036576bc91eb5a053ddd9a7d6bb91e4d088cc284373b281637.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abcf5a2921176283ef917e197d31177db4d4e97d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Union/Variantf46564e4b5948e036576bc91eb5a053ddd9a7d6bb91e4d088cc284373b281637.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Union/Variantf46564e4b5948e036576bc91eb5a053ddd9a7d6bb91e4d088cc284373b281637.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Fold` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Union` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sup_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Union/Variantf46564e4b5948e036576bc91eb5a053ddd9a7d6bb91e4d088cc284373b281637.lean/declarations/sup-biunion--ff234cdc9bb1a5c65921f5bf.md) | 39 | `result-track:ff234cdc9bb1a5c65921f5bf6907299bd9704d921e6bcfd47fd8da73c837de39` |
| 2 | `theorem` | [inf_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Union/Variantf46564e4b5948e036576bc91eb5a053ddd9a7d6bb91e4d088cc284373b281637.lean/declarations/inf-biunion--23c37cdd3e9bd5f5a99a408f.md) | 49 | `result-track:23c37cdd3e9bd5f5a99a408f05076f951f68cf1f7f041ffdfa58f72d0ff28fd2` |
| 3 | `theorem` | [sup'_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Union/Variantf46564e4b5948e036576bc91eb5a053ddd9a7d6bb91e4d088cc284373b281637.lean/declarations/sup-biunion--93c7a4fb4bb797aee7903a20.md) | 61 | `result-track:93c7a4fb4bb797aee7903a2096805e62077fe493517fdfe9a2acc8ba32c6e4d3` |
| 4 | `theorem` | [inf'_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Union/Variantf46564e4b5948e036576bc91eb5a053ddd9a7d6bb91e4d088cc284373b281637.lean/declarations/inf-biunion--f1dcc1f61cc7ae4a2ad07fc9.md) | 74 | `result-track:f1dcc1f61cc7ae4a2ad07fc9cc48d98f2ee4df44d518bd9ea127d255f2109ed7` |
| 5 | `theorem` | [sup_eq_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Union/Variantf46564e4b5948e036576bc91eb5a053ddd9a7d6bb91e4d088cc284373b281637.lean/declarations/sup-eq-biunion--c524a9b803b051c330a342a7.md) | 83 | `result-track:c524a9b803b051c330a342a7a6f5bcfbd7135ff368eed7dcb58b76a07b1e53ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
