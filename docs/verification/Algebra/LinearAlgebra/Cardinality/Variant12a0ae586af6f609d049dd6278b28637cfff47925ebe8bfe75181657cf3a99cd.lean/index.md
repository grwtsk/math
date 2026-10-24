# Verification target: GRWTSK.Algebra.LinearAlgebra.Cardinality.Variant12a0ae586af6f609d049dd6278b28637cfff47925ebe8bfe75181657cf3a99cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0def74cdb7fdeeef889ba4ca2e66d5b97eebcbfd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant12a0ae586af6f609d049dd6278b28637cfff47925ebe8bfe75181657cf3a99cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant12a0ae586af6f609d049dd6278b28637cfff47925ebe8bfe75181657cf3a99cd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant12a0ae586af6f609d049dd6278b28637cfff47925ebe8bfe75181657cf3a99cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0def74cdb7fdeeef889ba4ca2e66d5b97eebcbfd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant12a0ae586af6f609d049dd6278b28637cfff47925ebe8bfe75181657cf3a99cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Cardinality/Variant12a0ae586af6f609d049dd6278b28637cfff47925ebe8bfe75181657cf3a99cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Cardinality` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DFinsupp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.StdBasis` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_fin'](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant12a0ae586af6f609d049dd6278b28637cfff47925ebe8bfe75181657cf3a99cd.lean/declarations/exists-fin--2c8413bac7cd04fbd191114d.md) | 43 | `result-track:2c8413bac7cd04fbd191114d818edcd116ff0457ea96d81673d06dd9df289491` |
| 2 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.ExistsFinPrime.Variant2e8ad0e93fd74b59cfec4e33b12b3853a89855ac26ca0b367c6c4c3161132a9f.Module.finite_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant12a0ae586af6f609d049dd6278b28637cfff47925ebe8bfe75181657cf3a99cd.lean/declarations/root-grwtsk-algebra-linearalgebra-existsfinprime-variant2e8ad0e93fd74b59--5a4da5e832ef4524eecbda7d.md) | 50 | `result-track:5a4da5e832ef4524eecbda7d520f2c1556841f595c28cd96081aa16f535d555f` |
| 3 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.ExistsFinPrime.Variant2e8ad0e93fd74b59cfec4e33b12b3853a89855ac26ca0b367c6c4c3161132a9f.Module.finite_iff_finite](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant12a0ae586af6f609d049dd6278b28637cfff47925ebe8bfe75181657cf3a99cd.lean/declarations/root-grwtsk-algebra-linearalgebra-existsfinprime-variant2e8ad0e93fd74b59--cb1de4a6dfa1fc6f43393519.md) | 60 | `result-track:cb1de4a6dfa1fc6f43393519153dc80cf829b8f579c52c6df9b05d2b13c81453` |
| 4 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.ExistsFinPrime.Variant2e8ad0e93fd74b59cfec4e33b12b3853a89855ac26ca0b367c6c4c3161132a9f.Set.Finite.submoduleSpan](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant12a0ae586af6f609d049dd6278b28637cfff47925ebe8bfe75181657cf3a99cd.lean/declarations/root-grwtsk-algebra-linearalgebra-existsfinprime-variant2e8ad0e93fd74b59--85a1877a00886a266c424149.md) | 64 | `result-track:85a1877a00886a266c424149d43d29973b0985b3ce8a5d4f9b7620bec98fbf8a` |
| 5 | `lemma` | [finite_basis](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant12a0ae586af6f609d049dd6278b28637cfff47925ebe8bfe75181657cf3a99cd.lean/declarations/finite-basis--bf8fa57c98cc0b4fad9ae013.md) | 72 | `result-track:bf8fa57c98cc0b4fad9ae0136a3f716aed3bbbea51f57044c6784f8970db4b17` |
| 6 | `lemma` | [not_finite_of_infinite_basis](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant12a0ae586af6f609d049dd6278b28637cfff47925ebe8bfe75181657cf3a99cd.lean/declarations/not-finite-of-infinite-basis--3b0ecc3114ba3fb6cbbe9d45.md) | 81 | `result-track:3b0ecc3114ba3fb6cbbe9d4565deb502282e4d5dc009ed7221f36801cb8f922b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
