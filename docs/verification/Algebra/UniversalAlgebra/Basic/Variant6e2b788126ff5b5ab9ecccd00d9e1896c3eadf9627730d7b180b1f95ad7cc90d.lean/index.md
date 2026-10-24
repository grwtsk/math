# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant6e2b788126ff5b5ab9ecccd00d9e1896c3eadf9627730d7b180b1f95ad7cc90d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e21f00bca66f819d5611aec16513ea9f4f063738",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant6e2b788126ff5b5ab9ecccd00d9e1896c3eadf9627730d7b180b1f95ad7cc90d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant6e2b788126ff5b5ab9ecccd00d9e1896c3eadf9627730d7b180b1f95ad7cc90d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant6e2b788126ff5b5ab9ecccd00d9e1896c3eadf9627730d7b180b1f95ad7cc90d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e21f00bca66f819d5611aec16513ea9f4f063738`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant6e2b788126ff5b5ab9ecccd00d9e1896c3eadf9627730d7b180b1f95ad7cc90d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant6e2b788126ff5b5ab9ecccd00d9e1896c3eadf9627730d7b180b1f95ad7cc90d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mul_zero_subset](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant6e2b788126ff5b5ab9ecccd00d9e1896c3eadf9627730d7b180b1f95ad7cc90d.lean/declarations/mul-zero-subset--c4558de33710bcd1daa39360.md) | 42 | `result-track:c4558de33710bcd1daa39360a57a85e444bdc60f0c7d2f4d793f7d91aa2b5112` |
| 2 | `lemma` | [zero_mul_subset](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant6e2b788126ff5b5ab9ecccd00d9e1896c3eadf9627730d7b180b1f95ad7cc90d.lean/declarations/zero-mul-subset--bb622f41b5c7153d1e05897c.md) | 43 | `result-track:bb622f41b5c7153d1e05897c8746620cf10eed2ca81d233516dfd21752daace0` |
| 3 | `lemma` | [Nonempty.mul_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant6e2b788126ff5b5ab9ecccd00d9e1896c3eadf9627730d7b180b1f95ad7cc90d.lean/declarations/nonempty-mul-zero--3792ac1307a6a6e9f926ee6b.md) | 45 | `result-track:3792ac1307a6a6e9f926ee6b6534c9980a7eff17b60e59b515ade88c7cce8f4b` |
| 4 | `lemma` | [Nonempty.zero_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant6e2b788126ff5b5ab9ecccd00d9e1896c3eadf9627730d7b180b1f95ad7cc90d.lean/declarations/nonempty-zero-mul--bd72f3f9ee666421b07b5a18.md) | 48 | `result-track:bd72f3f9ee666421b07b5a183fd6153fdf19ab449fa21d437e02d03852d3029d` |
| 5 | `lemma` | [div_zero_subset](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant6e2b788126ff5b5ab9ecccd00d9e1896c3eadf9627730d7b180b1f95ad7cc90d.lean/declarations/div-zero-subset--31e0768e5ad9a9b2a08bf7b8.md) | 56 | `result-track:31e0768e5ad9a9b2a08bf7b88fbaa4cbfa50d1ce640940153bcec2219d1d892a` |
| 6 | `lemma` | [zero_div_subset](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant6e2b788126ff5b5ab9ecccd00d9e1896c3eadf9627730d7b180b1f95ad7cc90d.lean/declarations/zero-div-subset--1413f4babf413b8610ce0a8b.md) | 57 | `result-track:1413f4babf413b8610ce0a8bf4f3d4250ad61cf5a5939d5ab04c636068665936` |
| 7 | `lemma` | [Nonempty.div_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant6e2b788126ff5b5ab9ecccd00d9e1896c3eadf9627730d7b180b1f95ad7cc90d.lean/declarations/nonempty-div-zero--a137a3bdf5cf273f93571b00.md) | 59 | `result-track:a137a3bdf5cf273f93571b002b6b029df944b49325531bebdac3b934becac489` |
| 8 | `lemma` | [Nonempty.zero_div](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant6e2b788126ff5b5ab9ecccd00d9e1896c3eadf9627730d7b180b1f95ad7cc90d.lean/declarations/nonempty-zero-div--41c8bb6a67c8daa62a0ad44f.md) | 62 | `result-track:41c8bb6a67c8daa62a0ad44f61124b7adadd215648216c49e54bed163705ff13` |
| 9 | `lemma` | [inv_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant6e2b788126ff5b5ab9ecccd00d9e1896c3eadf9627730d7b180b1f95ad7cc90d.lean/declarations/inv-zero--a22926df15726d0d4122310a.md) | 65 | `result-track:a22926df15726d0d4122310aaf3673d6d700041a40234092d8a79ef2cfdeed96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
