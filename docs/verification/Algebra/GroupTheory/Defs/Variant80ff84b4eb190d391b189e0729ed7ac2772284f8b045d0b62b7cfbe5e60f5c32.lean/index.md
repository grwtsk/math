# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant80ff84b4eb190d391b189e0729ed7ac2772284f8b045d0b62b7cfbe5e60f5c32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af8e06ad0c5fb77fbc5cc886bc2de197ab83fce3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant80ff84b4eb190d391b189e0729ed7ac2772284f8b045d0b62b7cfbe5e60f5c32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant80ff84b4eb190d391b189e0729ed7ac2772284f8b045d0b62b7cfbe5e60f5c32.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant80ff84b4eb190d391b189e0729ed7ac2772284f8b045d0b62b7cfbe5e60f5c32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af8e06ad0c5fb77fbc5cc886bc2de197ab83fce3`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant80ff84b4eb190d391b189e0729ed7ac2772284f8b045d0b62b7cfbe5e60f5c32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant80ff84b4eb190d391b189e0729ed7ac2772284f8b045d0b62b7cfbe5e60f5c32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMulOneClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant80ff84b4eb190d391b189e0729ed7ac2772284f8b045d0b62b7cfbe5e60f5c32.lean/declarations/instmuloneclass--b02c3ae951f12dbb3683425c.md) | 30 | `declaration-track:b02c3ae951f12dbb3683425ce61e69d9cbc01224e28361a78ec66ac7f5b21ec1` |
| 2 | `instance` | [instAddCancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant80ff84b4eb190d391b189e0729ed7ac2772284f8b045d0b62b7cfbe5e60f5c32.lean/declarations/instaddcancelcommmonoid--4c26a0ef6fe6fdaf61ffe1ba.md) | 34 | `declaration-track:4c26a0ef6fe6fdaf61ffe1bae875a944a47c955854aa695fc979d041d68a1704` |
| 3 | `instance` | [instCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant80ff84b4eb190d391b189e0729ed7ac2772284f8b045d0b62b7cfbe5e60f5c32.lean/declarations/instcommmonoid--94c64f4bd822070a1f81d5d0.md) | 46 | `declaration-track:94c64f4bd822070a1f81d5d0c90b16fe39e1ec202367fc4873cc5b696bdacb28` |
| 4 | `instance` | [instAddCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant80ff84b4eb190d391b189e0729ed7ac2772284f8b045d0b62b7cfbe5e60f5c32.lean/declarations/instaddcommmonoid--bb3b1a37a136b65725a3b685.md) | 63 | `declaration-track:bb3b1a37a136b65725a3b68582844c99b9c04a405c963a495093839d5ae7f20a` |
| 5 | `instance` | [instAddMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant80ff84b4eb190d391b189e0729ed7ac2772284f8b045d0b62b7cfbe5e60f5c32.lean/declarations/instaddmonoid--f97a8e9c04279a71ee37e3f2.md) | 64 | `declaration-track:f97a8e9c04279a71ee37e3f2f5568b66e9f228dfcb1f7573c5745650529765e3` |
| 6 | `instance` | [instMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant80ff84b4eb190d391b189e0729ed7ac2772284f8b045d0b62b7cfbe5e60f5c32.lean/declarations/instmonoid--effc0b96fc4ba002e4ddd0e2.md) | 65 | `declaration-track:effc0b96fc4ba002e4ddd0e2c98643090c9ac862b8e3ae384f08ce30b19f9b9c` |
| 7 | `instance` | [instCommSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant80ff84b4eb190d391b189e0729ed7ac2772284f8b045d0b62b7cfbe5e60f5c32.lean/declarations/instcommsemigroup--7d223ad040b809278b444cc6.md) | 66 | `declaration-track:7d223ad040b809278b444cc65dcfff91597db7d584227d7e3da6c5bed71aa7f2` |
| 8 | `instance` | [instSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant80ff84b4eb190d391b189e0729ed7ac2772284f8b045d0b62b7cfbe5e60f5c32.lean/declarations/instsemigroup--d184ecab19c846e7529ead95.md) | 67 | `declaration-track:d184ecab19c846e7529ead954ae88a6f28190d9479de7c64c6a08f364418e6f6` |
| 9 | `instance` | [instAddCommSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant80ff84b4eb190d391b189e0729ed7ac2772284f8b045d0b62b7cfbe5e60f5c32.lean/declarations/instaddcommsemigroup--11104f7f86834f9206878af3.md) | 68 | `declaration-track:11104f7f86834f9206878af3d082c08db61b6cea010037702978dfd9c1bcfbd9` |
| 10 | `instance` | [instAddSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant80ff84b4eb190d391b189e0729ed7ac2772284f8b045d0b62b7cfbe5e60f5c32.lean/declarations/instaddsemigroup--f052fcb9cf9c5b9befc97dbb.md) | 69 | `declaration-track:f052fcb9cf9c5b9befc97dbbd540c0557724d75ab45243458bf5fb7328ceabaf` |
| 11 | `instance` | [instOne](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant80ff84b4eb190d391b189e0729ed7ac2772284f8b045d0b62b7cfbe5e60f5c32.lean/declarations/instone--842d3382845c967f6324249e.md) | 70 | `declaration-track:842d3382845c967f6324249eb6a45cdf29a5e941e12fee56d519e2f29f19387d` |
| 12 | `lemma` | [nsmul_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant80ff84b4eb190d391b189e0729ed7ac2772284f8b045d0b62b7cfbe5e60f5c32.lean/declarations/nsmul-eq-mul--f9590705cf43518961dab1e2.md) | 75 | `result-track:f9590705cf43518961dab1e214fc04a26303ceba09fa00a78a521a42595e6df3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
