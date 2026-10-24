# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoolIndicator.Variant378e2297a2757a5b687a3298e2d889c106dc167eca45a16a1d7c03b9a3f3cf48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d55d3638d246f7a1bff3d1247c14da9f5355051",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variant378e2297a2757a5b687a3298e2d889c106dc167eca45a16a1d7c03b9a3f3cf48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variant378e2297a2757a5b687a3298e2d889c106dc167eca45a16a1d7c03b9a3f3cf48.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variant378e2297a2757a5b687a3298e2d889c106dc167eca45a16a1d7c03b9a3f3cf48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d55d3638d246f7a1bff3d1247c14da9f5355051`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variant378e2297a2757a5b687a3298e2d889c106dc167eca45a16a1d7c03b9a3f3cf48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variant378e2297a2757a5b687a3298e2d889c106dc167eca45a16a1d7c03b9a3f3cf48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boolIndicator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variant378e2297a2757a5b687a3298e2d889c106dc167eca45a16a1d7c03b9a3f3cf48.lean/declarations/boolindicator--017cbde152aabb89c408f15d.md) | 23 | `declaration-track:017cbde152aabb89c408f15d42073446946ecd398d30aa7cd1225a16595bb428` |
| 2 | `theorem` | [mem_iff_boolIndicator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variant378e2297a2757a5b687a3298e2d889c106dc167eca45a16a1d7c03b9a3f3cf48.lean/declarations/mem-iff-boolindicator--9820fe8c1cfe3681e7765a3e.md) | 26 | `result-track:9820fe8c1cfe3681e7765a3e826949400dd8c6a4fcf08a01595069c9e7f91620` |
| 3 | `theorem` | [notMem_iff_boolIndicator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variant378e2297a2757a5b687a3298e2d889c106dc167eca45a16a1d7c03b9a3f3cf48.lean/declarations/notmem-iff-boolindicator--a02fc2ec53f1b964343fae11.md) | 30 | `result-track:a02fc2ec53f1b964343fae11500e9243fc37a62a212211e768e07013eb28ddfa` |
| 4 | `theorem` | [preimage_boolIndicator_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variant378e2297a2757a5b687a3298e2d889c106dc167eca45a16a1d7c03b9a3f3cf48.lean/declarations/preimage-boolindicator-true--cb50f4f6c96ad5c22229c7b8.md) | 36 | `result-track:cb50f4f6c96ad5c22229c7b8c996762eb071da1ec9b03f5f10e6fd9ee19e3a46` |
| 5 | `theorem` | [preimage_boolIndicator_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variant378e2297a2757a5b687a3298e2d889c106dc167eca45a16a1d7c03b9a3f3cf48.lean/declarations/preimage-boolindicator-false--707ff568fbbd99108a4e48ee.md) | 39 | `result-track:707ff568fbbd99108a4e48eef4b1957f24be73d808b5465ba23a222a5f1da039` |
| 6 | `theorem` | [preimage_boolIndicator_eq_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variant378e2297a2757a5b687a3298e2d889c106dc167eca45a16a1d7c03b9a3f3cf48.lean/declarations/preimage-boolindicator-eq-union--ece2477944a76e37b0546225.md) | 43 | `result-track:ece2477944a76e37b05462258ff348deb3289bcd9825a06d35b2627ba9895f9c` |
| 7 | `theorem` | [preimage_boolIndicator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variant378e2297a2757a5b687a3298e2d889c106dc167eca45a16a1d7c03b9a3f3cf48.lean/declarations/preimage-boolindicator--5380adc48ad993f333ba2e37.md) | 49 | `result-track:5380adc48ad993f333ba2e3719241e0ba47ce10ec342f1755b4362b3ec3676de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
