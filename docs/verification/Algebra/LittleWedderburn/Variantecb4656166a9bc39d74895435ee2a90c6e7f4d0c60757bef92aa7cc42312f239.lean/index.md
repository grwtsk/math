# Verification target: GRWTSK.Algebra.LittleWedderburn.Variantecb4656166a9bc39d74895435ee2a90c6e7f4d0c60757bef92aa7cc42312f239

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a41aca1f64c3866e6960370e30e95a34df5f036e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LittleWedderburn/Variantecb4656166a9bc39d74895435ee2a90c6e7f4d0c60757bef92aa7cc42312f239.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LittleWedderburn/Variantecb4656166a9bc39d74895435ee2a90c6e7f4d0c60757bef92aa7cc42312f239.lean/index.md) · [Full source](../../../../mathematics/Algebra/LittleWedderburn/Variantecb4656166a9bc39d74895435ee2a90c6e7f4d0c60757bef92aa7cc42312f239.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a41aca1f64c3866e6960370e30e95a34df5f036e`.

Source path: `GRWTSK/Algebra/LittleWedderburn/Variantecb4656166a9bc39d74895435ee2a90c6e7f4d0c60757bef92aa7cc42312f239.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LittleWedderburn/Variantecb4656166a9bc39d74895435ee2a90c6e7f4d0c60757bef92aa7cc42312f239.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Center` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.ClassEquation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Eval` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InductionHyp](../../../../mathematics/Algebra/LittleWedderburn/Variantecb4656166a9bc39d74895435ee2a90c6e7f4d0c60757bef92aa7cc42312f239.lean/declarations/inductionhyp--d47c05447737067f0445e3bf.md) | 45 | `declaration-track:d47c05447737067f0445e3bf86658d24c452a95b4459114de72064c1d8b20e1a` |
| 2 | `def` | [field](../../../../mathematics/Algebra/LittleWedderburn/Variantecb4656166a9bc39d74895435ee2a90c6e7f4d0c60757bef92aa7cc42312f239.lean/declarations/field--13689850efbbc4aa5298ba1f.md) | 54 | `declaration-track:13689850efbbc4aa5298ba1f75152dd81c9c538ce726d79da301a2f8f1d4a5b8` |
| 3 | `theorem` | [center_eq_top](../../../../mathematics/Algebra/LittleWedderburn/Variantecb4656166a9bc39d74895435ee2a90c6e7f4d0c60757bef92aa7cc42312f239.lean/declarations/center-eq-top--90a11e91b94189b96e408dca.md) | 61 | `result-track:90a11e91b94189b96e408dca03a7f81a63ffef6f9d094166cdc7482cee658fb1` |
| 4 | `theorem` | [center_eq_top](../../../../mathematics/Algebra/LittleWedderburn/Variantecb4656166a9bc39d74895435ee2a90c6e7f4d0c60757bef92aa7cc42312f239.lean/declarations/center-eq-top--1d87e7a062143f34697212e6.md) | 138 | `result-track:1d87e7a062143f34697212e6b4e167ead6f16c03612eec6d50cbd30af4c90f80` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LittleWedderburn/Variantecb4656166a9bc39d74895435ee2a90c6e7f4d0c60757bef92aa7cc42312f239.lean/declarations/instance--7bd7a3a033c1f867945eac3b.md) | 160 | `declaration-track:7bd7a3a033c1f867945eac3bfe72c0ee71981daf40b66d787904849a7ad29e9a` |
| 6 | `theorem` | [Finite.isDomain_to_isField](../../../../mathematics/Algebra/LittleWedderburn/Variantecb4656166a9bc39d74895435ee2a90c6e7f4d0c60757bef92aa7cc42312f239.lean/declarations/finite-isdomain-to-isfield--4b879f32586ce0860e411284.md) | 167 | `result-track:4b879f32586ce0860e411284e4e9cb58a03cf777a7703f4252ba538c561c61f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
