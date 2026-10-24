# Verification target: GRWTSK.Algebra.CommutativeAlgebra.RationalRoot.Variant156352decffc0f55b4acd19fd7691ddba0ec71f11dc12b14591ccee2d8e5f427

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a4d74e4b0cc67ff48f853f6a54a125e9f54b498",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/RationalRoot/Variant156352decffc0f55b4acd19fd7691ddba0ec71f11dc12b14591ccee2d8e5f427.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/RationalRoot/Variant156352decffc0f55b4acd19fd7691ddba0ec71f11dc12b14591ccee2d8e5f427.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/RationalRoot/Variant156352decffc0f55b4acd19fd7691ddba0ec71f11dc12b14591ccee2d8e5f427.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a4d74e4b0cc67ff48f853f6a54a125e9f54b498`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/RationalRoot/Variant156352decffc0f55b4acd19fd7691ddba0ec71f11dc12b14591ccee2d8e5f427.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/RationalRoot/Variant156352decffc0f55b4acd19fd7691ddba0ec71f11dc12b14591ccee2d8e5f427.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IntegralClosure.IntegrallyClosed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.NumDen` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.ScaleRoots` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [scaleRoots_aeval_eq_zero_of_aeval_mk'_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/RationalRoot/Variant156352decffc0f55b4acd19fd7691ddba0ec71f11dc12b14591ccee2d8e5f427.lean/declarations/scaleroots-aeval-eq-zero-of-aeval-mk-eq-zero--262fca6d07a64b4050847d69.md) | 38 | `result-track:262fca6d07a64b4050847d69c403c93ff57451ec05f41300e25963b7fbfe4e75` |
| 2 | `theorem` | [num_isRoot_scaleRoots_of_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/RationalRoot/Variant156352decffc0f55b4acd19fd7691ddba0ec71f11dc12b14591ccee2d8e5f427.lean/declarations/num-isroot-scaleroots-of-aeval-eq-zero--7d50ebf889607ed772eb7d04.md) | 47 | `result-track:7d50ebf889607ed772eb7d04017504b123576759e34fb6ce388536dc30702fb1` |
| 3 | `theorem` | [num_dvd_of_is_root](../../../../../mathematics/Algebra/CommutativeAlgebra/RationalRoot/Variant156352decffc0f55b4acd19fd7691ddba0ec71f11dc12b14591ccee2d8e5f427.lean/declarations/num-dvd-of-is-root--bdb5ae815cc8f4eff475ea83.md) | 66 | `result-track:bdb5ae815cc8f4eff475ea834e4c30a3cf44253051ec3d27dae65ba2a973cdd7` |
| 4 | `theorem` | [den_dvd_of_is_root](../../../../../mathematics/Algebra/CommutativeAlgebra/RationalRoot/Variant156352decffc0f55b4acd19fd7691ddba0ec71f11dc12b14591ccee2d8e5f427.lean/declarations/den-dvd-of-is-root--45ef55a8eef57440bd5354a7.md) | 86 | `result-track:45ef55a8eef57440bd5354a7261d3caf7f036c7d8dcb6234dfe141f59d6d48b4` |
| 5 | `theorem` | [isInteger_of_is_root_of_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/RationalRoot/Variant156352decffc0f55b4acd19fd7691ddba0ec71f11dc12b14591ccee2d8e5f427.lean/declarations/isinteger-of-is-root-of-monic--1521014872fa252e69b5d40c.md) | 112 | `result-track:1521014872fa252e69b5d40c6927d7f4364e135d604db12fbe3d82f68bb5e20c` |
| 6 | `theorem` | [exists_integer_of_is_root_of_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/RationalRoot/Variant156352decffc0f55b4acd19fd7691ddba0ec71f11dc12b14591ccee2d8e5f427.lean/declarations/exists-integer-of-is-root-of-monic--2a0835205ddde39d44d46d20.md) | 116 | `result-track:2a0835205ddde39d44d46d20ea750220d36900ae8bf83ce76603b0ea6d09271c` |
| 7 | `theorem` | [integer_of_integral](../../../../../mathematics/Algebra/CommutativeAlgebra/RationalRoot/Variant156352decffc0f55b4acd19fd7691ddba0ec71f11dc12b14591ccee2d8e5f427.lean/declarations/integer-of-integral--fc0d4c0cbdbbdae5cfae831d.md) | 132 | `result-track:fc0d4c0cbdbbdae5cfae831ddb2fd35e3cbf1c8f9561fea9d185c46ddc353cee` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/RationalRoot/Variant156352decffc0f55b4acd19fd7691ddba0ec71f11dc12b14591ccee2d8e5f427.lean/declarations/instance--7101683b3644f7e553f22007.md) | 136 | `declaration-track:7101683b3644f7e553f22007891228d60ff475f3ba4fb43d15e4330c1f112c94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
