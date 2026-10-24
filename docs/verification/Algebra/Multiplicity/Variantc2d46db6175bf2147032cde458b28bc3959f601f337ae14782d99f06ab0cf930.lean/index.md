# Verification target: GRWTSK.Algebra.Multiplicity.Variantc2d46db6175bf2147032cde458b28bc3959f601f337ae14782d99f06ab0cf930

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13a543fa0fd8e430f8ec1c116ee893509490fda1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Multiplicity/Variantc2d46db6175bf2147032cde458b28bc3959f601f337ae14782d99f06ab0cf930.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Multiplicity/Variantc2d46db6175bf2147032cde458b28bc3959f601f337ae14782d99f06ab0cf930.lean/index.md) · [Full source](../../../../mathematics/Algebra/Multiplicity/Variantc2d46db6175bf2147032cde458b28bc3959f601f337ae14782d99f06ab0cf930.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13a543fa0fd8e430f8ec1c116ee893509490fda1`.

Source path: `GRWTSK/Algebra/Multiplicity/Variantc2d46db6175bf2147032cde458b28bc3959f601f337ae14782d99f06ab0cf930.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Multiplicity/Variantc2d46db6175bf2147032cde458b28bc3959f601f337ae14782d99f06ab0cf930.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Multiplicity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.NormalizedFactors` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [WfDvdMonoid.max_power_factor'](../../../../mathematics/Algebra/Multiplicity/Variantc2d46db6175bf2147032cde458b28bc3959f601f337ae14782d99f06ab0cf930.lean/declarations/wfdvdmonoid-max-power-factor--d31968f7fb906d539eddd206.md) | 25 | `result-track:d31968f7fb906d539eddd2061e7d88ed4389593dcd26bdc013bfb58e71ce7a90` |
| 2 | `theorem` | [WfDvdMonoid.max_power_factor](../../../../mathematics/Algebra/Multiplicity/Variantc2d46db6175bf2147032cde458b28bc3959f601f337ae14782d99f06ab0cf930.lean/declarations/wfdvdmonoid-max-power-factor--5952b0966d9b9db9bdec8b6d.md) | 33 | `result-track:5952b0966d9b9db9bdec8b6d23b9b00250bca4b0bfe37cf9264d799452ee6acf` |
| 3 | `theorem` | [FiniteMultiplicity.of_not_isUnit](../../../../mathematics/Algebra/Multiplicity/Variantc2d46db6175bf2147032cde458b28bc3959f601f337ae14782d99f06ab0cf930.lean/declarations/finitemultiplicity-of-not-isunit--2bec57ac7c15f86bf6216980.md) | 37 | `result-track:2bec57ac7c15f86bf62169802840e22bd6a425e43627de7779deaeade2d372c3` |
| 4 | `theorem` | [FiniteMultiplicity.of_prime_left](../../../../mathematics/Algebra/Multiplicity/Variantc2d46db6175bf2147032cde458b28bc3959f601f337ae14782d99f06ab0cf930.lean/declarations/finitemultiplicity-of-prime-left--b7f624ec5975584f27e72368.md) | 45 | `result-track:b7f624ec5975584f27e723683b4f6be0b4918c8de1ec119db3ce42fb18d7d0ba` |
| 5 | `theorem` | [le_emultiplicity_iff_replicate_le_normalizedFactors](../../../../mathematics/Algebra/Multiplicity/Variantc2d46db6175bf2147032cde458b28bc3959f601f337ae14782d99f06ab0cf930.lean/declarations/le-emultiplicity-iff-replicate-le-normalizedfactors--b702e0871db85109036028e8.md) | 64 | `result-track:b702e0871db85109036028e8252bd22dc2992850b107bdcc5d3ce1ca3ac36065` |
| 6 | `theorem` | [emultiplicity_eq_count_normalizedFactors](../../../../mathematics/Algebra/Multiplicity/Variantc2d46db6175bf2147032cde458b28bc3959f601f337ae14782d99f06ab0cf930.lean/declarations/emultiplicity-eq-count-normalizedfactors--3062a8b5579baf58a4ca58ea.md) | 88 | `result-track:3062a8b5579baf58a4ca58eaff33f44761cc180486ff28edf6bd125890fafb6f` |
| 7 | `theorem` | [count_normalizedFactors_eq](../../../../mathematics/Algebra/Multiplicity/Variantc2d46db6175bf2147032cde458b28bc3959f601f337ae14782d99f06ab0cf930.lean/declarations/count-normalizedfactors-eq--a39a7a545d56e7a7251bc1e4.md) | 104 | `result-track:a39a7a545d56e7a7251bc1e482cd2ee2deaa702e5737da4a16384426a37ef338` |
| 8 | `theorem` | [count_normalizedFactors_eq'](../../../../mathematics/Algebra/Multiplicity/Variantc2d46db6175bf2147032cde458b28bc3959f601f337ae14782d99f06ab0cf930.lean/declarations/count-normalizedfactors-eq--1065b6966edbae27c4a4cb75.md) | 120 | `result-track:1065b6966edbae27c4a4cb75a93b716c01f3b3ad0c09a79e896f2bf178301057` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
