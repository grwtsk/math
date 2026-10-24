# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ZeroLEOne.Variant63b48309c89474841067d0ee1236648976d6b3b8dded62c33d4b3f81b53f5cd6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a066a42b08a69fa1e66b05c46d62bbe32bad486",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variant63b48309c89474841067d0ee1236648976d6b3b8dded62c33d4b3f81b53f5cd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variant63b48309c89474841067d0ee1236648976d6b3b8dded62c33d4b3f81b53f5cd6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variant63b48309c89474841067d0ee1236648976d6b3b8dded62c33d4b3f81b53f5cd6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a066a42b08a69fa1e66b05c46d62bbe32bad486`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variant63b48309c89474841067d0ee1236648976d6b3b8dded62c33d4b3f81b53f5cd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variant63b48309c89474841067d0ee1236648976d6b3b8dded62c33d4b3f81b53f5cd6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ZeroLEOneClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variant63b48309c89474841067d0ee1236648976d6b3b8dded62c33d4b3f81b53f5cd6.lean/declarations/zeroleoneclass--7cc2d98b7d09cdf9cb6a02fb.md) | 17 | `declaration-track:7cc2d98b7d09cdf9cb6a02fb7e14b1d09744ffc9d720726ac002dc0971d13824` |
| 2 | `lemma` | [zero_le_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variant63b48309c89474841067d0ee1236648976d6b3b8dded62c33d4b3f81b53f5cd6.lean/declarations/zero-le-one--26f1ebca67e505f75b1ef36d.md) | 22 | `result-track:26f1ebca67e505f75b1ef36d21eb69b0e41a1ca0018d17a891cebd0e3f966ce5` |
| 3 | `instance` | [ZeroLEOneClass.factZeroLeOne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variant63b48309c89474841067d0ee1236648976d6b3b8dded62c33d4b3f81b53f5cd6.lean/declarations/zeroleoneclass-factzeroleone--76515bad39acaba43d354d8e.md) | 25 | `declaration-track:76515bad39acaba43d354d8e74c48592cb0b64615cef8ccc8a801f981f853078` |
| 4 | `lemma` | [zero_le_one'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variant63b48309c89474841067d0ee1236648976d6b3b8dded62c33d4b3f81b53f5cd6.lean/declarations/zero-le-one--5bce6f426f013de25b0e6aa9.md) | 30 | `result-track:5bce6f426f013de25b0e6aa9ed4ebe7bf3576311de41dd5e285ea10cb4b20659` |
| 5 | `lemma` | [zero_lt_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variant63b48309c89474841067d0ee1236648976d6b3b8dded62c33d4b3f81b53f5cd6.lean/declarations/zero-lt-one--d977721a8397c77b62abbcbb.md) | 37 | `result-track:d977721a8397c77b62abbcbb148be8b254051ac0418d2573a7f1606e188c072e` |
| 6 | `instance` | [ZeroLEOneClass.factZeroLtOne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variant63b48309c89474841067d0ee1236648976d6b3b8dded62c33d4b3f81b53f5cd6.lean/declarations/zeroleoneclass-factzeroltone--deaaf1a1f23dd3d74e1e9394.md) | 39 | `declaration-track:deaaf1a1f23dd3d74e1e9394ee32a03dd43e4bf4150642a99b20c01ccd1f9e60` |
| 7 | `lemma` | [zero_lt_one'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variant63b48309c89474841067d0ee1236648976d6b3b8dded62c33d4b3f81b53f5cd6.lean/declarations/zero-lt-one--ef00162d4b463a0087ae551b.md) | 45 | `result-track:ef00162d4b463a0087ae551b42cf0ad2ab11b92eeda007f6dfc451fb30b537a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
