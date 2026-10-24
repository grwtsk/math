# Verification target: GRWTSK.Algebra.Pi.Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f977d8d5c91ff19d2e1914411b60d6a58988f13e",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f977d8d5c91ff19d2e1914411b60d6a58988f13e`.

Source path: `GRWTSK/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Ring` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [distrib](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/distrib--1acc2b3f8bbeade66d8df986.md) | 41 | `declaration-track:1acc2b3f8bbeade66d8df9861e4e615112e28cc71c9cb369d2b6ba453571d403` |
| 2 | `instance` | [hasDistribNeg](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/hasdistribneg--61b220f395515afd1ab0dbd7.md) | 48 | `declaration-track:61b220f395515afd1ab0dbd764ea4e846f18034f94678a7a443c5a9893eb839b` |
| 3 | `instance` | [nonUnitalNonAssocSemiring](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/nonunitalnonassocsemiring--2aec5a279dd140b5df470295.md) | 52 | `declaration-track:2aec5a279dd140b5df470295e75c04f63313289ef299a28889407479f445d9c3` |
| 4 | `instance` | [nonUnitalSemiring](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/nonunitalsemiring--0278b46d5e202428b5c20cdf.md) | 57 | `declaration-track:0278b46d5e202428b5c20cdfc28ba6dfa42bea58c2eb929caebaf4c0dd4371d5` |
| 5 | `instance` | [nonAssocSemiring](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/nonassocsemiring--29b5ef36c5902c3beb88ca30.md) | 61 | `declaration-track:29b5ef36c5902c3beb88ca3056d298c12f745c85e9dc91caf6bed773076ba74c` |
| 6 | `instance` | [semiring](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/semiring--e3b0b9a35b0e33eeb9064aa7.md) | 65 | `declaration-track:e3b0b9a35b0e33eeb9064aa76914f6f028d284f9c240c3f8c9f5543fc5f17b1e` |
| 7 | `instance` | [nonUnitalCommSemiring](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/nonunitalcommsemiring--9ea225f65b79ab4d3c407130.md) | 69 | `declaration-track:9ea225f65b79ab4d3c407130127a7f9df542eab70c34173a8ffbcf8a6f111ffc` |
| 8 | `instance` | [commSemiring](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/commsemiring--ac219b618788b4d058692677.md) | 74 | `declaration-track:ac219b618788b4d0586926779bb72b4c3aaf7b4fb1b0029771fdc3d3608984b9` |
| 9 | `instance` | [nonUnitalNonAssocRing](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/nonunitalnonassocring--dc215fdea1fd0250dcf4ce97.md) | 78 | `declaration-track:dc215fdea1fd0250dcf4ce9741fdc5f92c57e254efcc84c212360b66c0d8f4ca` |
| 10 | `instance` | [nonUnitalRing](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/nonunitalring--82a7ffbe85f655e8cd5ab6df.md) | 83 | `declaration-track:82a7ffbe85f655e8cd5ab6df1908e5906e95700333cfbf89d68b54933ad4235a` |
| 11 | `instance` | [nonAssocRing](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/nonassocring--6b743b34ef60b6784fc7a346.md) | 87 | `declaration-track:6b743b34ef60b6784fc7a34614bb91d2a423dc5356d746c6dede33402c9eddad` |
| 12 | `instance` | [ring](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/ring--5a1a0f78c4309838789b7eb4.md) | 91 | `declaration-track:5a1a0f78c4309838789b7eb43df84aa8eb8fa8ee69e9636f42194d8cc1ae396d` |
| 13 | `instance` | [nonUnitalCommRing](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/nonunitalcommring--0387616eaed42ff12928d229.md) | 95 | `declaration-track:0387616eaed42ff12928d22976d5fb3fcc92d0bbc22039e7b495f3ae10d91009` |
| 14 | `instance` | [commRing](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/commring--4c5342ceef387a19319e7716.md) | 99 | `declaration-track:4c5342ceef387a19319e7716b51e24a7488251fe95da2f2773f04a23bae84876` |
| 15 | `def` | [nonUnitalRingHom](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/nonunitalringhom--0f23675a7295407c97444729.md) | 107 | `declaration-track:0f23675a7295407c9744472977632f9c27aa605d8c091775eef6ad889fe5dfb3` |
| 16 | `theorem` | [nonUnitalRingHom_injective](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/nonunitalringhom-injective--3adcdb4dafec59b5aed9772f.md) | 113 | `result-track:3adcdb4dafec59b5aed9772fb4002f0e047790adcc3e18dda143980d832f8b96` |
| 17 | `def` | [ringHom](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/ringhom--a4c869fc20a17c986a75134c.md) | 122 | `declaration-track:a4c869fc20a17c986a75134c41cb570a612d1f97164a7cd32a3b29532eccc8b4` |
| 18 | `theorem` | [ringHom_injective](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/ringhom-injective--716ae848c2c743874eded7a6.md) | 129 | `result-track:716ae848c2c743874eded7a6a002ab23732bd91e3615b56f7bc5e61c15fd0c50` |
| 19 | `def` | [Pi.evalNonUnitalRingHom](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/pi-evalnonunitalringhom--c775c3f6e48527c526efdf81.md) | 146 | `declaration-track:c775c3f6e48527c526efdf8183c66d450127652f183c97813d9799e6963a8fde` |
| 20 | `def` | [Pi.constNonUnitalRingHom](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/pi-constnonunitalringhom--3cb5611a13ad91ae4b32b998.md) | 153 | `declaration-track:3cb5611a13ad91ae4b32b998965dc8398c1adffccd1663b8d4360a612b664ce2` |
| 21 | `def` | [NonUnitalRingHom.compLeft](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/nonunitalringhom-compleft--ff87f22a79088f038e9a25a8.md) | 160 | `declaration-track:ff87f22a79088f038e9a25a84e5aa8cce2621337d8c65bd513b2447842d5cf36` |
| 22 | `def` | [Pi.evalRingHom](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/pi-evalringhom--f0185bfd1074b997efae4b4f.md) | 176 | `declaration-track:f0185bfd1074b997efae4b4f56252987e46c6085f1e9121ab8adf6b229d09c53` |
| 23 | `def` | [Pi.constRingHom](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/pi-constringhom--ee1840e1045a06c826ebd377.md) | 183 | `declaration-track:ee1840e1045a06c826ebd377d4436697260addc2deded96549cf5b96f0c5576f` |
| 24 | `def` | [RingHom.compLeft](../../../../mathematics/Algebra/Pi/Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2.lean/declarations/ringhom-compleft--6b3bca96381a6bf87f689e00.md) | 191 | `declaration-track:6b3bca96381a6bf87f689e00812886b17e65332c0f9eb45292877a6f9c91cc0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
