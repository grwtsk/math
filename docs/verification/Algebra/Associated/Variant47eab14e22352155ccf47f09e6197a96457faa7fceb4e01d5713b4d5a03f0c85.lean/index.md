# Verification target: GRWTSK.Algebra.Associated.Variant47eab14e22352155ccf47f09e6197a96457faa7fceb4e01d5713b4d5a03f0c85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a3879a425b852d9e3873236488cd5a0f2c78e9a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Associated/Variant47eab14e22352155ccf47f09e6197a96457faa7fceb4e01d5713b4d5a03f0c85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Associated/Variant47eab14e22352155ccf47f09e6197a96457faa7fceb4e01d5713b4d5a03f0c85.lean/index.md) · [Full source](../../../../mathematics/Algebra/Associated/Variant47eab14e22352155ccf47f09e6197a96457faa7fceb4e01d5713b4d5a03f0c85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a3879a425b852d9e3873236488cd5a0f2c78e9a`.

Source path: `GRWTSK/Algebra/Associated/Variant47eab14e22352155ccf47f09e6197a96457faa7fceb4e01d5713b4d5a03f0c85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Associated/Variant47eab14e22352155ccf47f09e6197a96457faa7fceb4e01d5713b4d5a03f0c85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Associated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Units` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [neg_left](../../../../mathematics/Algebra/Associated/Variant47eab14e22352155ccf47f09e6197a96457faa7fceb4e01d5713b4d5a03f0c85.lean/declarations/neg-left--999c466c29a878f1063e11a6.md) | 26 | `result-track:999c466c29a878f1063e11a6b9dbee1805d65e46525cb5d96f23f2cf21ced9c5` |
| 2 | `lemma` | [neg_right](../../../../mathematics/Algebra/Associated/Variant47eab14e22352155ccf47f09e6197a96457faa7fceb4e01d5713b4d5a03f0c85.lean/declarations/neg-right--09bdb8d4921d7200a37d9ce7.md) | 27 | `result-track:09bdb8d4921d7200a37d9ce7e3921d3d97bd0ee2b76f2fafb192c39f62b583fd` |
| 3 | `lemma` | [neg_neg](../../../../mathematics/Algebra/Associated/Variant47eab14e22352155ccf47f09e6197a96457faa7fceb4e01d5713b4d5a03f0c85.lean/declarations/neg-neg--e08bfb065f79734625a197a9.md) | 28 | `result-track:e08bfb065f79734625a197a962c0cae5be7d16609bd7304b465aed4c8db054ad` |
| 4 | `lemma` | [neg_left_iff](../../../../mathematics/Algebra/Associated/Variant47eab14e22352155ccf47f09e6197a96457faa7fceb4e01d5713b4d5a03f0c85.lean/declarations/neg-left-iff--cecb833c5eee427148d95d78.md) | 31 | `result-track:cecb833c5eee427148d95d7819a7b78cc943d4d75995cd0be52afa9ce921f550` |
| 5 | `lemma` | [neg_right_iff](../../../../mathematics/Algebra/Associated/Variant47eab14e22352155ccf47f09e6197a96457faa7fceb4e01d5713b4d5a03f0c85.lean/declarations/neg-right-iff--833ac3c9c79da539d6f7d99e.md) | 35 | `result-track:833ac3c9c79da539d6f7d99e8574d2e092d720ec861f0412b90ab796cd781c38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
