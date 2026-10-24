# Verification target: GRWTSK.Algebra.CommutativeAlgebra.RadicalCertificate.Variante16dc5e1d5c9cde1c710d31f422a942af5c40305c87080a3fc24cae983189a53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8800c2c320358892d4e6e7f1c4c705035ed5572",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/RadicalCertificate/Variante16dc5e1d5c9cde1c710d31f422a942af5c40305c87080a3fc24cae983189a53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/RadicalCertificate/Variante16dc5e1d5c9cde1c710d31f422a942af5c40305c87080a3fc24cae983189a53.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/RadicalCertificate/Variante16dc5e1d5c9cde1c710d31f422a942af5c40305c87080a3fc24cae983189a53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8800c2c320358892d4e6e7f1c4c705035ed5572`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/RadicalCertificate/Variante16dc5e1d5c9cde1c710d31f422a942af5c40305c87080a3fc24cae983189a53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/RadicalCertificate/Variante16dc5e1d5c9cde1c710d31f422a942af5c40305c87080a3fc24cae983189a53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Polynomial.EquationSystem` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EquationSystem.idealCombination](../../../../../mathematics/Algebra/CommutativeAlgebra/RadicalCertificate/Variante16dc5e1d5c9cde1c710d31f422a942af5c40305c87080a3fc24cae983189a53.lean/declarations/equationsystem-idealcombination--3df9a4fb0505ddb6fe5b1c7b.md) | 32 | `declaration-track:3df9a4fb0505ddb6fe5b1c7bae0e406b1fcd1035d3c8181640adaf6cf3d8a6fd` |
| 2 | `structure` | [RadicalCertificate](../../../../../mathematics/Algebra/CommutativeAlgebra/RadicalCertificate/Variante16dc5e1d5c9cde1c710d31f422a942af5c40305c87080a3fc24cae983189a53.lean/declarations/radicalcertificate--a2b94fcf052acecfab902655.md) | 44 | `declaration-track:a2b94fcf052acecfab9026554bf721e3121b941acf0490c8baf3eba96ae3d281` |
| 3 | `theorem` | [EquationSystem.eval_idealCombination_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/RadicalCertificate/Variante16dc5e1d5c9cde1c710d31f422a942af5c40305c87080a3fc24cae983189a53.lean/declarations/equationsystem-eval-idealcombination-eq-zero--88d709b58256b0efb30af68a.md) | 56 | `result-track:88d709b58256b0efb30af68afd8ff70241cc37f951a49d5f5102cf7c61970be4` |
| 4 | `theorem` | [RadicalCertificate.vanishesOn](../../../../../mathematics/Algebra/CommutativeAlgebra/RadicalCertificate/Variante16dc5e1d5c9cde1c710d31f422a942af5c40305c87080a3fc24cae983189a53.lean/declarations/radicalcertificate-vanisheson--26e3bc8129a6608e66979e86.md) | 79 | `result-track:26e3bc8129a6608e66979e8685ba3a29b7014dabb2a0091aab140ccbd90c2d39` |
| 5 | `theorem` | [RadicalCertificate.geometricConsequence](../../../../../mathematics/Algebra/CommutativeAlgebra/RadicalCertificate/Variante16dc5e1d5c9cde1c710d31f422a942af5c40305c87080a3fc24cae983189a53.lean/declarations/radicalcertificate-geometricconsequence--a6554b070e5af4959661cfab.md) | 92 | `result-track:a6554b070e5af4959661cfabf25f7c132f9b5558723a94641b869d8e47afaf6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
