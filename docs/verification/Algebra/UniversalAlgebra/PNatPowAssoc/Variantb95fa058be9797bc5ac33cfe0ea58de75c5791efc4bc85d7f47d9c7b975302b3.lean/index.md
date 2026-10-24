# Verification target: GRWTSK.Algebra.UniversalAlgebra.PNatPowAssoc.Variantb95fa058be9797bc5ac33cfe0ea58de75c5791efc4bc85d7f47d9c7b975302b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a65f4e43c10a6a7cf60ebcddc5cbd26f3b89712",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/PNatPowAssoc/Variantb95fa058be9797bc5ac33cfe0ea58de75c5791efc4bc85d7f47d9c7b975302b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variantb95fa058be9797bc5ac33cfe0ea58de75c5791efc4bc85d7f47d9c7b975302b3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variantb95fa058be9797bc5ac33cfe0ea58de75c5791efc4bc85d7f47d9c7b975302b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a65f4e43c10a6a7cf60ebcddc5cbd26f3b89712`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/PNatPowAssoc/Variantb95fa058be9797bc5ac33cfe0ea58de75c5791efc4bc85d7f47d9c7b975302b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/PNatPowAssoc/Variantb95fa058be9797bc5ac33cfe0ea58de75c5791efc4bc85d7f47d9c7b975302b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PNat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Notation.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PNatPowAssoc](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variantb95fa058be9797bc5ac33cfe0ea58de75c5791efc4bc85d7f47d9c7b975302b3.lean/declarations/pnatpowassoc--90408460129d9a33d4038c22.md) | 44 | `declaration-track:90408460129d9a33d4038c22b3d041a030f3ddbc728d2d0cf735ac340c8983df` |
| 2 | `theorem` | [ppow_add](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variantb95fa058be9797bc5ac33cfe0ea58de75c5791efc4bc85d7f47d9c7b975302b3.lean/declarations/ppow-add--cf4e03e23230d2c567322bee.md) | 54 | `result-track:cf4e03e23230d2c567322beebd9048e33f28bde96f92b836b22ad4e320597851` |
| 3 | `theorem` | [ppow_one](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variantb95fa058be9797bc5ac33cfe0ea58de75c5791efc4bc85d7f47d9c7b975302b3.lean/declarations/ppow-one--e792d3b9a2f8e8ba9c0068ad.md) | 58 | `result-track:e792d3b9a2f8e8ba9c0068ad0a09d1d4bc1bcbb03f21139a8eeaee64712c8985` |
| 4 | `theorem` | [ppow_mul_assoc](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variantb95fa058be9797bc5ac33cfe0ea58de75c5791efc4bc85d7f47d9c7b975302b3.lean/declarations/ppow-mul-assoc--4b2e6aaecd021de5ea2b3286.md) | 61 | `result-track:4b2e6aaecd021de5ea2b32868949d9c163b572990c423afd9932533ecf35d1c9` |
| 5 | `theorem` | [ppow_mul_comm](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variantb95fa058be9797bc5ac33cfe0ea58de75c5791efc4bc85d7f47d9c7b975302b3.lean/declarations/ppow-mul-comm--bf095005505d5104b2227ea5.md) | 65 | `result-track:bf095005505d5104b2227ea53a37d427f3f59b01e3dc8679a4674d2206677d96` |
| 6 | `theorem` | [ppow_mul](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variantb95fa058be9797bc5ac33cfe0ea58de75c5791efc4bc85d7f47d9c7b975302b3.lean/declarations/ppow-mul--8f4a7dcdd19f8996b24f73f7.md) | 68 | `result-track:8f4a7dcdd19f8996b24f73f7b9e0d05ae78ef8444c28cf4e372ebc0b0c46ae52` |
| 7 | `theorem` | [ppow_mul'](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variantb95fa058be9797bc5ac33cfe0ea58de75c5791efc4bc85d7f47d9c7b975302b3.lean/declarations/ppow-mul--2a2b3922599b6278cd365999.md) | 73 | `result-track:2a2b3922599b6278cd36599935ceae3e475da81b58bba913140c6ce8f48b96c6` |
| 8 | `instance` | [Pi.instPNatPowAssoc](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variantb95fa058be9797bc5ac33cfe0ea58de75c5791efc4bc85d7f47d9c7b975302b3.lean/declarations/pi-instpnatpowassoc--6e2952d0ffa93ba9350748d2.md) | 79 | `declaration-track:6e2952d0ffa93ba9350748d27f991d648cbbe333cd9681966bed11e26ceba950` |
| 9 | `instance` | [Prod.instPNatPowAssoc](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variantb95fa058be9797bc5ac33cfe0ea58de75c5791efc4bc85d7f47d9c7b975302b3.lean/declarations/prod-instpnatpowassoc--200deb48cbdced1fcee2f159.md) | 84 | `declaration-track:200deb48cbdced1fcee2f159b1c1da16dcf2f3876a6c979c36d887313aa42618` |
| 10 | `theorem` | [ppow_eq_pow](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variantb95fa058be9797bc5ac33cfe0ea58de75c5791efc4bc85d7f47d9c7b975302b3.lean/declarations/ppow-eq-pow--d5ec08ec114a27d124f6cdc8.md) | 89 | `result-track:d5ec08ec114a27d124f6cdc84c0a4a8b0ed95e97a63dbd6fa57dd108ecacfb24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
