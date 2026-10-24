# Verification target: GRWTSK.Algebra.UniversalAlgebra.Nat.Variant94b90a8a074ca629bcef7f4238e832d05385ae30ee601a2db7fe51faaa4fb0b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a182eb608008f2bcf9ca079db78061dfc0b9be2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Nat/Variant94b90a8a074ca629bcef7f4238e832d05385ae30ee601a2db7fe51faaa4fb0b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant94b90a8a074ca629bcef7f4238e832d05385ae30ee601a2db7fe51faaa4fb0b4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant94b90a8a074ca629bcef7f4238e832d05385ae30ee601a2db7fe51faaa4fb0b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a182eb608008f2bcf9ca079db78061dfc0b9be2`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Nat/Variant94b90a8a074ca629bcef7f4238e832d05385ae30ee601a2db7fe51faaa4fb0b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Nat/Variant94b90a8a074ca629bcef7f4238e832d05385ae30ee601a2db7fe51faaa4fb0b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharZero.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Nat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instAddMonoidWithOne](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant94b90a8a074ca629bcef7f4238e832d05385ae30ee601a2db7fe51faaa4fb0b4.lean/declarations/instaddmonoidwithone--f5346c3892cb2204fd6b1511.md) | 28 | `declaration-track:f5346c3892cb2204fd6b1511aee5a11f5a4fe7f183eac0d1d88bda329c35cac8` |
| 2 | `instance` | [instAddCommMonoidWithOne](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant94b90a8a074ca629bcef7f4238e832d05385ae30ee601a2db7fe51faaa4fb0b4.lean/declarations/instaddcommmonoidwithone--7e94735b852135f50f1f42f0.md) | 33 | `declaration-track:7e94735b852135f50f1f42f0e787a8e2664d66649c41f72ba93df13675d4fc09` |
| 3 | `instance` | [instDistrib](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant94b90a8a074ca629bcef7f4238e832d05385ae30ee601a2db7fe51faaa4fb0b4.lean/declarations/instdistrib--2ddd353e141fe3be50e0ca5b.md) | 37 | `declaration-track:2ddd353e141fe3be50e0ca5b78456b07889d11524c467ed74d550bda7b6d2754` |
| 4 | `instance` | [instNonUnitalNonAssocSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant94b90a8a074ca629bcef7f4238e832d05385ae30ee601a2db7fe51faaa4fb0b4.lean/declarations/instnonunitalnonassocsemiring--67bf0950cca0c0bfde1210e6.md) | 41 | `declaration-track:67bf0950cca0c0bfde1210e698932eedd6f60f91719cf046c3e81cd8cf34f97d` |
| 5 | `instance` | [instNonUnitalSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant94b90a8a074ca629bcef7f4238e832d05385ae30ee601a2db7fe51faaa4fb0b4.lean/declarations/instnonunitalsemiring--7fb66bbe4edb91f68e1bd3e6.md) | 46 | `declaration-track:7fb66bbe4edb91f68e1bd3e6fe40abe75485cec8547d9900a5cda02eb51ddfc9` |
| 6 | `instance` | [instNonAssocSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant94b90a8a074ca629bcef7f4238e832d05385ae30ee601a2db7fe51faaa4fb0b4.lean/declarations/instnonassocsemiring--1d1a4c68c1a1609e211eb7c7.md) | 50 | `declaration-track:1d1a4c68c1a1609e211eb7c766fcd9b863f1c5216745d8fd59cdcfac4efb5c31` |
| 7 | `instance` | [instSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant94b90a8a074ca629bcef7f4238e832d05385ae30ee601a2db7fe51faaa4fb0b4.lean/declarations/instsemiring--9e94bd05fba1ca4bcff612ea.md) | 55 | `declaration-track:9e94bd05fba1ca4bcff612eaac79a6aa6713dca8490f62dc51b2a76948230712` |
| 8 | `instance` | [instCommSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant94b90a8a074ca629bcef7f4238e832d05385ae30ee601a2db7fe51faaa4fb0b4.lean/declarations/instcommsemiring--f1065d0258a993aa9a3f30cb.md) | 60 | `declaration-track:f1065d0258a993aa9a3f30cb19a8e4783d18ba7fb931e9a2b71cbd3c05dd84f0` |
| 9 | `instance` | [instCharZero](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant94b90a8a074ca629bcef7f4238e832d05385ae30ee601a2db7fe51faaa4fb0b4.lean/declarations/instcharzero--460af94be287f96b8bf05dee.md) | 64 | `declaration-track:460af94be287f96b8bf05dee633e07cb760919bfc73a8f2a563966c35d748465` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
