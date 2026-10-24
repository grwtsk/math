# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variante208e1e4837b25154937b903f8656e78a78c28db1d77f8f3fceb628adea734eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c57adb439a5f16d8c3f880e9501d54dbfe5b5ead",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variante208e1e4837b25154937b903f8656e78a78c28db1d77f8f3fceb628adea734eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variante208e1e4837b25154937b903f8656e78a78c28db1d77f8f3fceb628adea734eb.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variante208e1e4837b25154937b903f8656e78a78c28db1d77f8f3fceb628adea734eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c57adb439a5f16d8c3f880e9501d54dbfe5b5ead`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variante208e1e4837b25154937b903f8656e78a78c28db1d77f8f3fceb628adea734eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variante208e1e4837b25154937b903f8656e78a78c28db1d77f8f3fceb628adea734eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Canonical` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cast_finsetSup'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variante208e1e4837b25154937b903f8656e78a78c28db1d77f8f3fceb628adea734eb.lean/declarations/cast-finsetsup--eb2588e31620fb47f51bae40.md) | 24 | `result-track:eb2588e31620fb47f51bae40164338a6cfd37172693016df4a3a88a88a0501fc` |
| 2 | `lemma` | [cast_finsetInf'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variante208e1e4837b25154937b903f8656e78a78c28db1d77f8f3fceb628adea734eb.lean/declarations/cast-finsetinf--c32acf3ae6814f38793583e9.md) | 29 | `result-track:c32acf3ae6814f38793583e971a5b682ee1ca7df7474ebabc40ade266b145bcd` |
| 3 | `lemma` | [cast_finsetSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variante208e1e4837b25154937b903f8656e78a78c28db1d77f8f3fceb628adea734eb.lean/declarations/cast-finsetsup--e544320ff8a3edbe691305c8.md) | 33 | `result-track:e544320ff8a3edbe691305c8b334f7021768e25316d4cb99c40c33b0fde02278` |
| 4 | `lemma` | [Finset.mul_sup₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variante208e1e4837b25154937b903f8656e78a78c28db1d77f8f3fceb628adea734eb.lean/declarations/finset-mul-sup--5a5547d014d32c13b3a85ba2.md) | 46 | `result-track:5a5547d014d32c13b3a85ba272fe7a7ad42ef1cd77e43da1cc329f9e896949bc` |
| 5 | `lemma` | [Finset.sup_mul₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variante208e1e4837b25154937b903f8656e78a78c28db1d77f8f3fceb628adea734eb.lean/declarations/finset-sup-mul--416c1d40493c954b8d63c994.md) | 54 | `result-track:416c1d40493c954b8d63c994a998f427dabda6c863663087d1b160896957e946` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
