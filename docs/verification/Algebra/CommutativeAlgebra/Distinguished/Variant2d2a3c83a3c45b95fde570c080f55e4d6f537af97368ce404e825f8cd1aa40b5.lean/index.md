# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Distinguished.Variant2d2a3c83a3c45b95fde570c080f55e4d6f537af97368ce404e825f8cd1aa40b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7706e6025a1431f0ceba9d9703117ce7479940aa",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Distinguished/Variant2d2a3c83a3c45b95fde570c080f55e4d6f537af97368ce404e825f8cd1aa40b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Distinguished/Variant2d2a3c83a3c45b95fde570c080f55e4d6f537af97368ce404e825f8cd1aa40b5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Distinguished/Variant2d2a3c83a3c45b95fde570c080f55e4d6f537af97368ce404e825f8cd1aa40b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7706e6025a1431f0ceba9d9703117ce7479940aa`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Distinguished/Variant2d2a3c83a3c45b95fde570c080f55e4d6f537af97368ce404e825f8cd1aa40b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Distinguished/Variant2d2a3c83a3c45b95fde570c080f55e4d6f537af97368ce404e825f8cd1aa40b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Eisenstein.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Order` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Polynomial.IsDistinguishedAt](../../../../../mathematics/Algebra/CommutativeAlgebra/Distinguished/Variant2d2a3c83a3c45b95fde570c080f55e4d6f537af97368ce404e825f8cd1aa40b5.lean/declarations/polynomial-isdistinguishedat--c48f300cdfb7e1ab82eb112b.md) | 36 | `declaration-track:c48f300cdfb7e1ab82eb112b5bfb705cefedc5fa07168166a37aad9c4fbf6871` |
| 2 | `lemma` | [map_eq_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Distinguished/Variant2d2a3c83a3c45b95fde570c080f55e4d6f537af97368ce404e825f8cd1aa40b5.lean/declarations/map-eq-x-pow--5813a2b6ad63b75811f21a30.md) | 42 | `result-track:5813a2b6ad63b75811f21a30c7f780091bc973007f2d6c0ab87fb22ba005cd67` |
| 3 | `lemma` | [map_ne_zero_of_eq_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Distinguished/Variant2d2a3c83a3c45b95fde570c080f55e4d6f537af97368ce404e825f8cd1aa40b5.lean/declarations/map-ne-zero-of-eq-mul--c123464004756c84eb2b2ce4.md) | 58 | `result-track:c123464004756c84eb2b2ce4613951da7e494b5c79c7417dc90667d41f0ca4d4` |
| 4 | `lemma` | [degree_eq_coe_lift_order_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Distinguished/Variant2d2a3c83a3c45b95fde570c080f55e4d6f537af97368ce404e825f8cd1aa40b5.lean/declarations/degree-eq-coe-lift-order-map--fe31443843d091e6dfb6c349.md) | 67 | `result-track:fe31443843d091e6dfb6c349a27bcfcc9b3a4a69641f675bf192510b9a03707a` |
| 5 | `lemma` | [coe_natDegree_eq_order_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Distinguished/Variant2d2a3c83a3c45b95fde570c080f55e4d6f537af97368ce404e825f8cd1aa40b5.lean/declarations/coe-natdegree-eq-order-map--a25dee5aa544fa03e4ad30d0.md) | 89 | `result-track:a25dee5aa544fa03e4ad30d099fa8261f436ed957ddfc0ac9a47b42df6ff3621` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
