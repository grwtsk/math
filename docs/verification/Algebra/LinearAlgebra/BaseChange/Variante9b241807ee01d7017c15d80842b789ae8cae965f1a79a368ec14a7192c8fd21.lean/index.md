# Verification target: GRWTSK.Algebra.LinearAlgebra.BaseChange.Variante9b241807ee01d7017c15d80842b789ae8cae965f1a79a368ec14a7192c8fd21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cf6c6d83287eaae5e5a123ffa5a1ebea0c22090",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variante9b241807ee01d7017c15d80842b789ae8cae965f1a79a368ec14a7192c8fd21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variante9b241807ee01d7017c15d80842b789ae8cae965f1a79a368ec14a7192c8fd21.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variante9b241807ee01d7017c15d80842b789ae8cae965f1a79a368ec14a7192c8fd21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cf6c6d83287eaae5e5a123ffa5a1ebea0c22090`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BaseChange/Variante9b241807ee01d7017c15d80842b789ae8cae965f1a79a368ec14a7192c8fd21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BaseChange/Variante9b241807ee01d7017c15d80842b789ae8cae965f1a79a368ec14a7192c8fd21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.RestrictScalars` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.TensorProduct` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bracket'](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variante9b241807ee01d7017c15d80842b789ae8cae965f1a79a368ec14a7192c8fd21.lean/declarations/bracket--8126695895716548dbd1d541.md) | 41 | `declaration-track:8126695895716548dbd1d541a5e256070860908129a1b1a2a9e1b105d78bfcda` |
| 2 | `theorem` | [bracket'_tmul](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variante9b241807ee01d7017c15d80842b789ae8cae965f1a79a368ec14a7192c8fd21.lean/declarations/bracket-tmul--41216ce7ec7a275fbf40027e.md) | 48 | `result-track:41216ce7ec7a275fbf40027e4b668e6f34b7795bbae24a586f88036706470850` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variante9b241807ee01d7017c15d80842b789ae8cae965f1a79a368ec14a7192c8fd21.lean/declarations/instance--793e4381eb3fd0fd1e8205db.md) | 51 | `declaration-track:793e4381eb3fd0fd1e8205dbe49806746c020a77ac5679510001c83954eb1c50` |
| 4 | `theorem` | [bracket_def](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variante9b241807ee01d7017c15d80842b789ae8cae965f1a79a368ec14a7192c8fd21.lean/declarations/bracket-def--74e68bce6fd41fed895313ad.md) | 53 | `result-track:74e68bce6fd41fed895313ad0dc8e8715a8adc411a100060a713fb43e21e0b86` |
| 5 | `theorem` | [bracket_tmul](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variante9b241807ee01d7017c15d80842b789ae8cae965f1a79a368ec14a7192c8fd21.lean/declarations/bracket-tmul--657a1e800b0102e573a55b56.md) | 57 | `result-track:657a1e800b0102e573a55b563546fc3ce8c684d90beb10d877bdfd41b6fa03c3` |
| 6 | `theorem` | [bracket_lie_self](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variante9b241807ee01d7017c15d80842b789ae8cae965f1a79a368ec14a7192c8fd21.lean/declarations/bracket-lie-self--e4d7e64bda464d750d8d28ac.md) | 60 | `result-track:e4d7e64bda464d750d8d28ac079c7990fad49e12247c71613deca6fdf8a72cfb` |
| 7 | `theorem` | [bracket_leibniz_lie](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variante9b241807ee01d7017c15d80842b789ae8cae965f1a79a368ec14a7192c8fd21.lean/declarations/bracket-leibniz-lie--6078b05f6f6a2fea9472b488.md) | 82 | `result-track:6078b05f6f6a2fea9472b48835cb174d9d6fedb19a27432a0e7c24f9339bf8ac` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variante9b241807ee01d7017c15d80842b789ae8cae965f1a79a368ec14a7192c8fd21.lean/declarations/instance--8a6a8c48acb9f056d0a3b334.md) | 106 | `declaration-track:8a6a8c48acb9f056d0a3b33443685bab7a4cb32e637e9e0a6afe33a30a8a188a` |
| 9 | `instance` | [lieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variante9b241807ee01d7017c15d80842b789ae8cae965f1a79a368ec14a7192c8fd21.lean/declarations/liealgebra--f3ba7b54fad975ab8b682dec.md) | 112 | `declaration-track:f3ba7b54fad975ab8b682decdeeafb02c3a340f0884c578c70d77437101a8af3` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variante9b241807ee01d7017c15d80842b789ae8cae965f1a79a368ec14a7192c8fd21.lean/declarations/instance--4bcfad968a2ea4175e5e3ae1.md) | 123 | `declaration-track:4bcfad968a2ea4175e5e3ae100497f8a5206bc8f6ea5753dd39035f6d1c52320` |
| 11 | `instance` | [lieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variante9b241807ee01d7017c15d80842b789ae8cae965f1a79a368ec14a7192c8fd21.lean/declarations/liealgebra--3d88876f8c46244c87fff0d6.md) | 128 | `declaration-track:3d88876f8c46244c87fff0d66b95c74ca88d97f4e74cf3e89b13d00036297644` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
