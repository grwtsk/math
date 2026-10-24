# Verification target: GRWTSK.Algebra.CommutativeAlgebra.UniqueFactorization.Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b19d550097f568d522124d676f3ca68c76132560",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b19d550097f568d522124d676f3ca68c76132560`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Content` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Finite` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.GCDMonoid` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean/declarations/instance--1c64cf86e7a8d0fc5740ba72.md) | 41 | `declaration-track:1c64cf86e7a8d0fc5740ba721d8e4aec3e05ef47917538ebd87170a5ec8d9ecb` |
| 2 | `theorem` | [exists_irreducible_of_degree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean/declarations/exists-irreducible-of-degree-pos--09ee573e9c45cdb787521c8f.md) | 72 | `result-track:09ee573e9c45cdb787521c8f007a008e211e033b516b4060b18ef671063352e2` |
| 3 | `theorem` | [exists_irreducible_of_natDegree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean/declarations/exists-irreducible-of-natdegree-pos--dbfc5de5b566d956263b385d.md) | 76 | `result-track:dbfc5de5b566d956263b385d276b9e0b831785d45fd2b16f2a94944ed4345dbc` |
| 4 | `theorem` | [exists_irreducible_of_natDegree_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean/declarations/exists-irreducible-of-natdegree-ne-zero--72080eaf7de436f382427bed.md) | 81 | `result-track:72080eaf7de436f382427bed0fec1f1cc970384d296ff4b6f27bd3f66c8429ae` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean/declarations/instance--7302272eb96d4a8fe38d65e5.md) | 95 | `declaration-track:7302272eb96d4a8fe38d65e50694db96f02d13dc0a5cb7db83fd4a4baeb23490` |
| 6 | `def` | [fintypeSubtypeMonicDvd](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean/declarations/fintypesubtypemonicdvd--716c0b44df1fb36c318de764.md) | 103 | `declaration-track:716c0b44df1fb36c318de76487493f82a6559152b2f453283f366e0198e065c1` |
| 7 | `theorem` | [uniqueFactorizationMonoid_of_fintype](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean/declarations/uniquefactorizationmonoid-of-fintype--901e84f944db2a27d47af51c.md) | 120 | `result-track:901e84f944db2a27d47af51c669ce337dfc404d7d8e61c32c0caf382850b148a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean/declarations/instance--0d953192cbb9101580fdba42.md) | 129 | `declaration-track:0d953192cbb9101580fdba42f9639d2ce004ce684d41688968cdacac347fe397` |
| 9 | `theorem` | [Polynomial.exists_monic_irreducible_factor](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean/declarations/polynomial-exists-monic-irreducible-factor--284ab3cbd20cef5af990fc0e.md) | 150 | `result-track:284ab3cbd20cef5af990fc0e440f20ef56c18e7f33ea7e4b82333049c74c0252` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
