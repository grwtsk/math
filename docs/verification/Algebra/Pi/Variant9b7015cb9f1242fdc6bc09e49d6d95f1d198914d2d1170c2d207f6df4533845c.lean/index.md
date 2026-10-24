# Verification target: GRWTSK.Algebra.Pi.Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7620f429b92edaddfa6f4d4593f409b4557c5481",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7620f429b92edaddfa6f4d4593f409b4557c5481`.

Source path: `GRWTSK/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.CompTypeclasses` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Hom.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [distrib](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/distrib--56fd25de7265b0ed97a6bcc0.md) | 38 | `declaration-track:56fd25de7265b0ed97a6bcc0b2e7bc806705fae96848f0610bb0bdedff27852a` |
| 2 | `instance` | [hasDistribNeg](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/hasdistribneg--16f0b9437846d23084a69131.md) | 44 | `declaration-track:16f0b9437846d23084a691310bb91361995d2b40e9bfe1572123ef3950728fad` |
| 3 | `instance` | [addMonoidWithOne](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/addmonoidwithone--a1977fd8c49eaafa081b05ec.md) | 48 | `declaration-track:a1977fd8c49eaafa081b05ec5b8dac5b540339d642b3a6eae2b3a8d0e268f4a8` |
| 4 | `instance` | [addGroupWithOne](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/addgroupwithone--2070efc912a4ab0433bc6f08.md) | 53 | `declaration-track:2070efc912a4ab0433bc6f08784827a9a3b5861f1cf459d364a8adea7c487fc8` |
| 5 | `instance` | [nonUnitalNonAssocSemiring](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/nonunitalnonassocsemiring--611feb0bee1eaac57ed44c2c.md) | 60 | `declaration-track:611feb0bee1eaac57ed44c2c206ae7e006babdf66cf776fd0a36eae38842f4f5` |
| 6 | `instance` | [nonUnitalSemiring](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/nonunitalsemiring--7d087254ca75617e7183e5c4.md) | 64 | `declaration-track:7d087254ca75617e7183e5c42f239224c31150f1f61de2ab03c70dbb6f541ba7` |
| 7 | `instance` | [nonAssocSemiring](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/nonassocsemiring--877062047df8f72bbe85309e.md) | 67 | `declaration-track:877062047df8f72bbe85309e60787d2e85b8f54b0c42a9b5acb85ee706195731` |
| 8 | `instance` | [semiring](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/semiring--faab3c464e389d13355b3965.md) | 70 | `declaration-track:faab3c464e389d13355b396572157c6fd1b788485c66268511ffdca6acb8ed2d` |
| 9 | `instance` | [nonUnitalCommSemiring](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/nonunitalcommsemiring--6ae4ca97fea8c6177365e45c.md) | 73 | `declaration-track:6ae4ca97fea8c6177365e45cc7545c9d168c1f6febc0a20575ad1793895c8d46` |
| 10 | `instance` | [commSemiring](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/commsemiring--e590cc7ac7024114f1849a63.md) | 77 | `declaration-track:e590cc7ac7024114f1849a6387a7ab9d6bc9d12463bb475adbf5e6d5c3d4a40e` |
| 11 | `instance` | [nonUnitalNonAssocRing](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/nonunitalnonassocring--0d53a42627ff88a24b752ea3.md) | 80 | `declaration-track:0d53a42627ff88a24b752ea348a7f11846499e9902a331002e71ffbafae0f8ff` |
| 12 | `instance` | [nonUnitalRing](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/nonunitalring--b2cc360917ee1d410bebf453.md) | 84 | `declaration-track:b2cc360917ee1d410bebf45381b6979f17c7f02da0082ba2fba94e814dc8e008` |
| 13 | `instance` | [nonAssocRing](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/nonassocring--c518da272e3d96364af0d5bd.md) | 87 | `declaration-track:c518da272e3d96364af0d5bd5d5dc301413a6a985b16c15bd5f16a96e53240cd` |
| 14 | `instance` | [ring](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/ring--91a7ec73a74e348f3438a17a.md) | 90 | `declaration-track:91a7ec73a74e348f3438a17a8f3beaa3c0f12beb4bb6d1596f68406eed040007` |
| 15 | `instance` | [nonUnitalCommRing](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/nonunitalcommring--5914cbdc5c8a55f7ef4c6930.md) | 93 | `declaration-track:5914cbdc5c8a55f7ef4c693074573cb2b2fb95679d875c520a5cf04f2b3073e2` |
| 16 | `instance` | [commRing](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/commring--5768bb6fe27b06eb6d1414db.md) | 96 | `declaration-track:5768bb6fe27b06eb6d1414dbe52d7c08493e2202d3481807bccbe00bc6927b95` |
| 17 | `def` | [nonUnitalRingHom](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/nonunitalringhom--d404509ac6e61ec903ba6298.md) | 103 | `declaration-track:d404509ac6e61ec903ba62984847c7b3743f9232cd719fba88c8f9cd1efcf631` |
| 18 | `theorem` | [nonUnitalRingHom_injective](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/nonunitalringhom-injective--f4d75bbd0b59e0be53385743.md) | 108 | `result-track:f4d75bbd0b59e0be53385743de56649bd9bbd4823fca933fb85e11eca7564a44` |
| 19 | `def` | [ringHom](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/ringhom--0cea2b9f694fbd06f5a58dca.md) | 116 | `declaration-track:0cea2b9f694fbd06f5a58dca1a9949a95aa2603983b4036acbe4382b1f1b9f56` |
| 20 | `theorem` | [ringHom_injective](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/ringhom-injective--20cf1fafd69edfb058616f95.md) | 121 | `result-track:20cf1fafd69edfb058616f957d95a53ca8f6585967690412caad4d5556698373` |
| 21 | `def` | [Pi.evalNonUnitalRingHom](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/pi-evalnonunitalringhom--559026bc31331ad2ce5ac714.md) | 137 | `declaration-track:559026bc31331ad2ce5ac71496ae1fa5c0dd704459f13f6f436b396c743af7c7` |
| 22 | `def` | [Pi.constNonUnitalRingHom](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/pi-constnonunitalringhom--f9fafcffd3b02c9c42cc7826.md) | 143 | `declaration-track:f9fafcffd3b02c9c42cc782637f923161581bc3b1465cc54cddfb7fee2dd02f8` |
| 23 | `def` | [NonUnitalRingHom.compLeft](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/nonunitalringhom-compleft--88de821debeb7dd218c60f19.md) | 149 | `declaration-track:88de821debeb7dd218c60f19d866ae70ce2ec103386e26684ebfe620a823c4f2` |
| 24 | `def` | [Pi.evalRingHom](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/pi-evalringhom--bed0306b8c77849c5c163cad.md) | 164 | `declaration-track:bed0306b8c77849c5c163cadce7e05e17a70a8b6e6d32ee2b8ddebd06b0f8d57` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/instance--b1c93b2aa88f211d3864288f.md) | 167 | `declaration-track:b1c93b2aa88f211d3864288f8d49d858d3f3529c7f02eff5eb9d59b262094427` |
| 26 | `def` | [Pi.constRingHom](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/pi-constringhom--d7ac0e91283d2ecdb8de2693.md) | 173 | `declaration-track:d7ac0e91283d2ecdb8de2693f8c8055fb1fe9eac5eff508960048f0c120b178d` |
| 27 | `def` | [RingHom.compLeft](../../../../mathematics/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean/declarations/ringhom-compleft--4eca07a946445e4b88337e99.md) | 179 | `declaration-track:4eca07a946445e4b88337e991ca770ed9125ea4b4fa098ca4ba9f6b3493ae6c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
