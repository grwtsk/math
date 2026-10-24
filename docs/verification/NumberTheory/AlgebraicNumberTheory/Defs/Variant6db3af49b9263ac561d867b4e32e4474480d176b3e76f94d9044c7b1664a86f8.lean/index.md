# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.Defs.Variant6db3af49b9263ac561d867b4e32e4474480d176b3e76f94d9044c7b1664a86f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbd563b1a5495d4651b3e49c55130d70b5debec9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Defs/Variant6db3af49b9263ac561d867b4e32e4474480d176b3e76f94d9044c7b1664a86f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Defs/Variant6db3af49b9263ac561d867b4e32e4474480d176b3e76f94d9044c7b1664a86f8.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Defs/Variant6db3af49b9263ac561d867b4e32e4474480d176b3e76f94d9044c7b1664a86f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbd563b1a5495d4651b3e49c55130d70b5debec9`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Defs/Variant6db3af49b9263ac561d867b4e32e4474480d176b3e76f94d9044c7b1664a86f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Defs/Variant6db3af49b9263ac561d867b4e32e4474480d176b3e76f94d9044c7b1664a86f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.ULift` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Fin.Fold` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.Pairwise` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.Range` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.NormTrace` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.Lemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [discr](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Defs/Variant6db3af49b9263ac561d867b4e32e4474480d176b3e76f94d9044c7b1664a86f8.lean/declarations/discr--d5f4a67b258eda327c98e1db.md) | 42 | `declaration-track:d5f4a67b258eda327c98e1db9b67413afd61e3635e36c06a70910d6e719271ae` |
| 2 | `theorem` | [coe_discr](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Defs/Variant6db3af49b9263ac561d867b4e32e4474480d176b3e76f94d9044c7b1664a86f8.lean/declarations/coe-discr--86c37be7e3a84f3b85302d11.md) | 44 | `result-track:86c37be7e3a84f3b85302d11bcbfd5a21f2807cb1e06b3babc045d07a16c5f3e` |
| 3 | `theorem` | [discr_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Defs/Variant6db3af49b9263ac561d867b4e32e4474480d176b3e76f94d9044c7b1664a86f8.lean/declarations/discr-ne-zero--426d55906e38dfec387e9f0b.md) | 47 | `result-track:426d55906e38dfec387e9f0b28e3bf02ae32eb69efed0f98161262cf9dac7020` |
| 4 | `theorem` | [discr_eq_discr](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Defs/Variant6db3af49b9263ac561d867b4e32e4474480d176b3e76f94d9044c7b1664a86f8.lean/declarations/discr-eq-discr--92365b22520d88516abd7161.md) | 51 | `result-track:92365b22520d88516abd7161609ab279d403b1c01274cd6db953b0024a882e0e` |
| 5 | `theorem` | [discr_eq_discr_of_algEquiv](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Defs/Variant6db3af49b9263ac561d867b4e32e4474480d176b3e76f94d9044c7b1664a86f8.lean/declarations/discr-eq-discr-of-algequiv--5fa2370bad389fc3e96b90f6.md) | 56 | `result-track:5fa2370bad389fc3e96b90f6ecadc3c60d812e9af0fc1a95d3ec4f6bd880dec6` |
| 6 | `theorem` | [numberField_discr](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Defs/Variant6db3af49b9263ac561d867b4e32e4474480d176b3e76f94d9044c7b1664a86f8.lean/declarations/numberfield-discr--14d42c0636616d1923122cd2.md) | 77 | `result-track:14d42c0636616d1923122cd28aa3c836265246aabcebcfba0946749eba0bd94e` |
| 7 | `theorem` | [Algebra.discr_eq_discr_of_toMatrix_coeff_isIntegral](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Defs/Variant6db3af49b9263ac561d867b4e32e4474480d176b3e76f94d9044c7b1664a86f8.lean/declarations/algebra-discr-eq-discr-of-tomatrix-coeff-isintegral--03838f5b9cefd101e12ad44f.md) | 100 | `result-track:03838f5b9cefd101e12ad44f68bb22b3c884000b8438d78abfcc63fab83c9b53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
