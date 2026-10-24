# Verification target: GRWTSK.Algebra.GroupTheory.Min.Variantf3c5f57aa9098f68324b1c38e0814d7ada7342bfccf89de8738caab9074b2e15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9a8c6041e998cdecf4f00ac1474c5d404f4aa52",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Min/Variantf3c5f57aa9098f68324b1c38e0814d7ada7342bfccf89de8738caab9074b2e15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Min/Variantf3c5f57aa9098f68324b1c38e0814d7ada7342bfccf89de8738caab9074b2e15.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Min/Variantf3c5f57aa9098f68324b1c38e0814d7ada7342bfccf89de8738caab9074b2e15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9a8c6041e998cdecf4f00ac1474c5d404f4aa52`.

Source path: `GRWTSK/Algebra/GroupTheory/Min/Variantf3c5f57aa9098f68324b1c38e0814d7ada7342bfccf89de8738caab9074b2e15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Min/Variantf3c5f57aa9098f68324b1c38e0814d7ada7342bfccf89de8738caab9074b2e15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Torsion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Lattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [minOrder](../../../../../mathematics/Algebra/GroupTheory/Min/Variantf3c5f57aa9098f68324b1c38e0814d7ada7342bfccf89de8738caab9074b2e15.lean/declarations/minorder--f3acc265da83ae2479b8836e.md) | 42 | `declaration-track:f3acc265da83ae2479b8836e7ff5ef20892bef48c2835eb8878b5dfdc72cd9bd` |
| 2 | `lemma` | [minOrder_eq_top](../../../../../mathematics/Algebra/GroupTheory/Min/Variantf3c5f57aa9098f68324b1c38e0814d7ada7342bfccf89de8738caab9074b2e15.lean/declarations/minorder-eq-top--8e982c84a3c8f83e5512b726.md) | 47 | `result-track:8e982c84a3c8f83e5512b7268f3c80d40c9c18143e89f51bc848dcf1d4583a4e` |
| 3 | `lemma` | [le_minOrder](../../../../../mathematics/Algebra/GroupTheory/Min/Variantf3c5f57aa9098f68324b1c38e0814d7ada7342bfccf89de8738caab9074b2e15.lean/declarations/le-minorder--c739e124ef137a2fbbc4c944.md) | 52 | `result-track:c739e124ef137a2fbbc4c944ec22e6768649e72ae976dbf51b6ce09b3b98bbc9` |
| 4 | `lemma` | [minOrder_le_orderOf](../../../../../mathematics/Algebra/GroupTheory/Min/Variantf3c5f57aa9098f68324b1c38e0814d7ada7342bfccf89de8738caab9074b2e15.lean/declarations/minorder-le-orderof--d54f121d70f3aa0fdca83a8e.md) | 56 | `result-track:d54f121d70f3aa0fdca83a8e821639f2bdcdd727f564cc7169d2eb0aaebf78d8` |
| 5 | `lemma` | [le_minOrder_iff_forall_subgroup](../../../../../mathematics/Algebra/GroupTheory/Min/Variantf3c5f57aa9098f68324b1c38e0814d7ada7342bfccf89de8738caab9074b2e15.lean/declarations/le-minorder-iff-forall-subgroup--cbe5b2148b0bba4275b89345.md) | 64 | `result-track:cbe5b2148b0bba4275b89345bb6ac4f6a00ca377f4d00343e21687076f6f6587` |
| 6 | `lemma` | [minOrder_le_natCard](../../../../../mathematics/Algebra/GroupTheory/Min/Variantf3c5f57aa9098f68324b1c38e0814d7ada7342bfccf89de8738caab9074b2e15.lean/declarations/minorder-le-natcard--56bd087e55604fa6af62e97a.md) | 75 | `result-track:56bd087e55604fa6af62e97a008d9facb1f64c61a3de765ef8f4a8b6e86073e7` |
| 7 | `lemma` | [minOrder](../../../../../mathematics/Algebra/GroupTheory/Min/Variantf3c5f57aa9098f68324b1c38e0814d7ada7342bfccf89de8738caab9074b2e15.lean/declarations/minorder--e84860f1455a12da6065e5f6.md) | 85 | `result-track:e84860f1455a12da6065e5f6adf36767c83e4a764cc468364dde0a7ef1d167c0` |
| 8 | `lemma` | [minOrder_of_prime](../../../../../mathematics/Algebra/GroupTheory/Min/Variantf3c5f57aa9098f68324b1c38e0814d7ada7342bfccf89de8738caab9074b2e15.lean/declarations/minorder-of-prime--b61d4b625f9d27d47bdd2273.md) | 102 | `result-track:b61d4b625f9d27d47bdd227334c6d67315bb347b3cb34e1eb037f7c37ebd7eac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
