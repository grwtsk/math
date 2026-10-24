# Verification target: GRWTSK.Algebra.Basis.Variant1630e0172f5bd37ebd34349760048155e62a61d8ae044f249fceb902a69f719f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9ca5e6a3d630b930a285e65e97837e2be9cf010",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basis/Variant1630e0172f5bd37ebd34349760048155e62a61d8ae044f249fceb902a69f719f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basis/Variant1630e0172f5bd37ebd34349760048155e62a61d8ae044f249fceb902a69f719f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basis/Variant1630e0172f5bd37ebd34349760048155e62a61d8ae044f249fceb902a69f719f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9ca5e6a3d630b930a285e65e97837e2be9cf010`.

Source path: `GRWTSK/Algebra/Basis/Variant1630e0172f5bd37ebd34349760048155e62a61d8ae044f249fceb902a69f719f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basis/Variant1630e0172f5bd37ebd34349760048155e62a61d8ae044f249fceb902a69f719f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Bilinear` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Submodule` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Span` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [basisSpanSingleton](../../../../mathematics/Algebra/Basis/Variant1630e0172f5bd37ebd34349760048155e62a61d8ae044f249fceb902a69f719f.lean/declarations/basisspansingleton--8036f79d01990d6cdd28b12a.md) | 30 | `declaration-track:8036f79d01990d6cdd28b12a37d2f6df3b87cd69998b122038df2be1e0ab12ab` |
| 2 | `theorem` | [basisSpanSingleton_apply](../../../../mathematics/Algebra/Basis/Variant1630e0172f5bd37ebd34349760048155e62a61d8ae044f249fceb902a69f719f.lean/declarations/basisspansingleton-apply--c5ba883f9fcb25cf294a1cf6.md) | 41 | `result-track:c5ba883f9fcb25cf294a1cf62269b485987b2441deeaba33bc3b38dc6fd749f6` |
| 3 | `theorem` | [constr_basisSpanSingleton](../../../../mathematics/Algebra/Basis/Variant1630e0172f5bd37ebd34349760048155e62a61d8ae044f249fceb902a69f719f.lean/declarations/constr-basisspansingleton--a96d0b3a5b059cfaf951afe3.md) | 48 | `result-track:a96d0b3a5b059cfaf951afe30409d1b2e2e9370c46fe8e7a4231427c6547bbe1` |
| 4 | `theorem` | [Basis.mem_ideal_iff](../../../../mathematics/Algebra/Basis/Variant1630e0172f5bd37ebd34349760048155e62a61d8ae044f249fceb902a69f719f.lean/declarations/basis-mem-ideal-iff--db6df19dc10c019297cd8082.md) | 58 | `result-track:db6df19dc10c019297cd8082518a0c924b994f0e96c1eeab3f8b2f70c794ea8c` |
| 5 | `theorem` | [Basis.mem_ideal_iff'](../../../../mathematics/Algebra/Basis/Variant1630e0172f5bd37ebd34349760048155e62a61d8ae044f249fceb902a69f719f.lean/declarations/basis-mem-ideal-iff--370f8f70dab816d15bdc3cb8.md) | 65 | `result-track:370f8f70dab816d15bdc3cb89117be3d6b9a82d333f1b4b6ca851112dbdfc796` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
