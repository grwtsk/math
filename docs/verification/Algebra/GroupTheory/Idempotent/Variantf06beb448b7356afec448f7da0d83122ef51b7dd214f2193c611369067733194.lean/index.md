# Verification target: GRWTSK.Algebra.GroupTheory.Idempotent.Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b39d1c0e7e0f6643aa18dd6446d1d9a3a38ab87",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b39d1c0e7e0f6643aa18dd6446d1d9a3a38ab87`.

Source path: `GRWTSK/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Subtype` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Conv` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsIdempotentElem](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean/declarations/isidempotentelem--9c04a4f53a99bb941c983872.md) | 42 | `declaration-track:9c04a4f53a99bb941c9838727a1e52d07f972ef7c294b822d676356cee8c37ed` |
| 2 | `lemma` | [of_isIdempotent](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean/declarations/of-isidempotent--e9f51436d7327dc7b137fb37.md) | 48 | `result-track:e9f51436d7327dc7b137fb3713b5e4a2717ae84fd513c52d5c5eeae7969ba02d` |
| 3 | `lemma` | [eq](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean/declarations/eq--67b35677b2328d46ecabf638.md) | 51 | `result-track:67b35677b2328d46ecabf63824c22bed58fdfe28a658ea9ff25f4f19a13984e6` |
| 4 | `lemma` | [mul_of_commute](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean/declarations/mul-of-commute--6604d726477fecafc4c6ad20.md) | 58 | `result-track:6604d726477fecafc4c6ad2048ce1b2e219076162f6f17b5d63bb254e767fd80` |
| 5 | `lemma` | [mul](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean/declarations/mul--0ab4e655f52b5ce2f144d16e.md) | 66 | `result-track:0ab4e655f52b5ce2f144d16e3a89b53eb776b8a2e39995b529415ee0f8761d9f` |
| 6 | `lemma` | [one](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean/declarations/one--c245a6cc44ba86f8529aead3.md) | 74 | `result-track:c245a6cc44ba86f8529aead36adc05a5cb292703a705779a44995b9f5f565f27` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean/declarations/instance--6c9146accedb56693f7054df.md) | 76 | `declaration-track:6c9146accedb56693f7054df667fcf965a9d7854f1fe593a333aa275ed4553d9` |
| 8 | `lemma` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean/declarations/coe-one--4aea81cbe47c0daf7a40a472.md) | 78 | `result-track:4aea81cbe47c0daf7a40a472c3aa35974117a188e9a20fa7862708d79cbfc2da` |
| 9 | `lemma` | [pow](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean/declarations/pow--703b1ed19b9f3e44884b30ac.md) | 85 | `result-track:703b1ed19b9f3e44884b30accdb61324c32ed8a7c21a3f654c99c1c2a16f1264` |
| 10 | `lemma` | [pow_succ_eq](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean/declarations/pow-succ-eq--2777b6ab8f18855d9e60611c.md) | 91 | `result-track:2777b6ab8f18855d9e60611cbc8b0f5771ec8c03536ae4a31ab6a494abccadf6` |
| 11 | `theorem` | [iff_eq_one_of_isUnit](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean/declarations/iff-eq-one-of-isunit--28f051127593538a2f8320a0.md) | 94 | `result-track:28f051127593538a2f8320a0460384212607b79c8641b892f3458326119bdac2` |
| 12 | `lemma` | [iff_eq_one](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean/declarations/iff-eq-one--12d09faac249a2aed8aa4d80.md) | 105 | `result-track:12d09faac249a2aed8aa4d80d9206807698beb0f02fffd3a2a83114a1bf92dc2` |
| 13 | `lemma` | [map](../../../../../mathematics/Algebra/GroupTheory/Idempotent/Variantf06beb448b7356afec448f7da0d83122ef51b7dd214f2193c611369067733194.lean/declarations/map--32caf4f79ec1e616fc5f1ba3.md) | 109 | `result-track:32caf4f79ec1e616fc5f1ba3156de2c0699d655b3d94398a12c1a4423c0e2856` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
