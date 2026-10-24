# Verification target: GRWTSK.Algebra.LinearAlgebra.Pairing.Variant9a27120bb42aabdea4870732fbf200ba5782bd8639dcd096dc9fbff4229bbff1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6562262b71b8be546120e9e050d4eacfd75f4fe",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pairing/Variant9a27120bb42aabdea4870732fbf200ba5782bd8639dcd096dc9fbff4229bbff1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant9a27120bb42aabdea4870732fbf200ba5782bd8639dcd096dc9fbff4229bbff1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant9a27120bb42aabdea4870732fbf200ba5782bd8639dcd096dc9fbff4229bbff1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6562262b71b8be546120e9e050d4eacfd75f4fe`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pairing/Variant9a27120bb42aabdea4870732fbf200ba5782bd8639dcd096dc9fbff4229bbff1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pairing/Variant9a27120bb42aabdea4870732fbf200ba5782bd8639dcd096dc9fbff4229bbff1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.ExteriorPower.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorPower.Pairing` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toTensorPower](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant9a27120bb42aabdea4870732fbf200ba5782bd8639dcd096dc9fbff4229bbff1.lean/declarations/totensorpower--bb2bb35dabc8ae0de51528a7.md) | 34 | `declaration-track:bb2bb35dabc8ae0de51528a78371697a088686f037bee60011fa9ad17047763a` |
| 2 | `lemma` | [toTensorPower_apply_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant9a27120bb42aabdea4870732fbf200ba5782bd8639dcd096dc9fbff4229bbff1.lean/declarations/totensorpower-apply-multi--874389e53ec3725e415ec346.md) | 40 | `result-track:874389e53ec3725e415ec3460ad689c4b43100dc9d90358673489b3aa21d01b6` |
| 3 | `def` | [alternatingMapToDual](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant9a27120bb42aabdea4870732fbf200ba5782bd8639dcd096dc9fbff4229bbff1.lean/declarations/alternatingmaptodual--3e325fbe1f5809f853317751.md) | 49 | `declaration-track:3e325fbe1f5809f853317751a95b3b610c03efc0c4ee61420483c6345b45eb2a` |
| 4 | `theorem` | [alternatingMapToDual_apply_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant9a27120bb42aabdea4870732fbf200ba5782bd8639dcd096dc9fbff4229bbff1.lean/declarations/alternatingmaptodual-apply-multi--ed66d057c2318929f82b96fe.md) | 62 | `result-track:ed66d057c2318929f82b96fe47c55901db005f11fa3f933d9be6d598781c9662` |
| 5 | `def` | [pairingDual](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant9a27120bb42aabdea4870732fbf200ba5782bd8639dcd096dc9fbff4229bbff1.lean/declarations/pairingdual--7a5f5cddd855752c9fd8d543.md) | 69 | `declaration-track:7a5f5cddd855752c9fd8d5436f8d6aa74edbd332576368dd713f3ab2a7d31387` |
| 6 | `lemma` | [pairingDual_ιMulti_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant9a27120bb42aabdea4870732fbf200ba5782bd8639dcd096dc9fbff4229bbff1.lean/declarations/pairingdual-multi-multi--3b9df52edf694abf0175faa6.md) | 76 | `result-track:3b9df52edf694abf0175faa60c898aa30148ace9e81f144730af6b87f66fd87b` |
| 7 | `lemma` | [pairingDual_apply_apply_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant9a27120bb42aabdea4870732fbf200ba5782bd8639dcd096dc9fbff4229bbff1.lean/declarations/pairingdual-apply-apply-eq-one--b89003c3eb703c0e8610d926.md) | 97 | `result-track:b89003c3eb703c0e8610d9268d5936f917ad519d0c1aff80cd017134b2de9ca7` |
| 8 | `lemma` | [pairingDual_apply_apply_eq_one_zero](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant9a27120bb42aabdea4870732fbf200ba5782bd8639dcd096dc9fbff4229bbff1.lean/declarations/pairingdual-apply-apply-eq-one-zero--6ebdac9d5cbb50cf98e1d694.md) | 110 | `result-track:6ebdac9d5cbb50cf98e1d6947bbf02452dddb8b312d6936f2a2be3a8f87ca8b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
