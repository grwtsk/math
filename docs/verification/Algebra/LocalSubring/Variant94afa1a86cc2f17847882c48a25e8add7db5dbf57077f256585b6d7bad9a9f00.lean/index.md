# Verification target: GRWTSK.Algebra.LocalSubring.Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c19fe2dbad2b98526a496814a27222356bc1d2bc",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LocalSubring/Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LocalSubring/Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00.lean/index.md) · [Full source](../../../../mathematics/Algebra/LocalSubring/Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c19fe2dbad2b98526a496814a27222356bc1d2bc`.

Source path: `GRWTSK/Algebra/LocalSubring/Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LocalSubring/Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.FieldSimp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.RingHom.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.AtPrime` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalSubring/Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00.lean/declarations/instance--f20f30a3d23c434220e81c8f.md) | 32 | `declaration-track:f20f30a3d23c434220e81c8ff198d5d40103de00f8c04fcf7bd637c3ccb5955c` |
| 2 | `instance` | [isLocalRing_top](../../../../mathematics/Algebra/LocalSubring/Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00.lean/declarations/islocalring-top--84702b0752207cb7520bbb81.md) | 36 | `declaration-track:84702b0752207cb7520bbb8186931404f8d9e594f6754ff32715fba278fd675c` |
| 3 | `structure` | [LocalSubring](../../../../mathematics/Algebra/LocalSubring/Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00.lean/declarations/localsubring--54a719f6576461abe101222d.md) | 42 | `declaration-track:54a719f6576461abe101222d543874288375510b5e4e31597f87d299559d58e4` |
| 4 | `lemma` | [toSubring_injective](../../../../mathematics/Algebra/LocalSubring/Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00.lean/declarations/tosubring-injective--84cd18c2233b090c503665f3.md) | 51 | `result-track:84cd18c2233b090c503665f3bb57621a371ee7d8b420379c2d38065ddf2fede7` |
| 5 | `def` | [copy](../../../../mathematics/Algebra/LocalSubring/Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00.lean/declarations/copy--d0141d2f6c4c8c09ad0b9194.md) | 56 | `declaration-track:d0141d2f6c4c8c09ad0b91947f1afeeb714a51961928b7f57953973209dd3007` |
| 6 | `def` | [map](../../../../mathematics/Algebra/LocalSubring/Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00.lean/declarations/map--5a8088ad736bc366a373b91f.md) | 61 | `declaration-track:5a8088ad736bc366a373b91f90f6c2f44721e483fee0d855ab457c80cf791599` |
| 7 | `def` | [range](../../../../mathematics/Algebra/LocalSubring/Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00.lean/declarations/range--34f5f3f70cf264408af535cf.md) | 66 | `declaration-track:34f5f3f70cf264408af535cf3d7b8d83f64232a8e7cd9f182a043360b154b956` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalSubring/Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00.lean/declarations/instance--698944003ae044daeb226fdb.md) | 74 | `declaration-track:698944003ae044daeb226fdb57f633c95f3d0fa3e8bef76d2d080d098862cf8b` |
| 9 | `lemma` | [le_def](../../../../mathematics/Algebra/LocalSubring/Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00.lean/declarations/le-def--6b160c07e20c14b7c25a035e.md) | 81 | `result-track:6b160c07e20c14b7c25a035e686c52711afe3ae7b9919232a73c9fbca0590de4` |
| 10 | `lemma` | [toSubring_mono](../../../../mathematics/Algebra/LocalSubring/Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00.lean/declarations/tosubring-mono--6bec0af64ee75b69e13e62c4.md) | 84 | `result-track:6bec0af64ee75b69e13e62c4afaef6ccfdbffd31c95d4495e0d064b58adc83fe` |
| 11 | `def` | [ofPrime](../../../../mathematics/Algebra/LocalSubring/Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00.lean/declarations/ofprime--0cb4231781bff98b78c6d848.md) | 94 | `declaration-track:0cb4231781bff98b78c6d848b56df6ef2945e562f34b580759d44d3cae206d48` |
| 12 | `lemma` | [le_ofPrime](../../../../mathematics/Algebra/LocalSubring/Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00.lean/declarations/le-ofprime--14a6b31ceea1c9002ac0964f.md) | 98 | `result-track:14a6b31ceea1c9002ac0964f39e55b4020d64dc824a905733649e2c9852e1f7f` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalSubring/Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00.lean/declarations/instance--d3a593991f0ec1379f177ae0.md) | 103 | `declaration-track:d3a593991f0ec1379f177ae05ea0ed770e63e850a2c59af87ccfb61e9e82f842` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalSubring/Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00.lean/declarations/instance--7db3d5455b3d33da4dd7c6e2.md) | 105 | `declaration-track:7db3d5455b3d33da4dd7c6e2778bb928c446eadf2ad91d6bcc65e610debba06e` |
| 15 | `def` | [ofPrimeEquiv](../../../../mathematics/Algebra/LocalSubring/Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00.lean/declarations/ofprimeequiv--6c7b2ae375637e1ae1b4bf6e.md) | 109 | `declaration-track:6c7b2ae375637e1ae1b4bf6ec966e378c52acb7f6ca13a3991e77cdf0b4b324c` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalSubring/Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00.lean/declarations/instance--d15325d2e1fca520b546cbd8.md) | 124 | `declaration-track:d15325d2e1fca520b546cbd8a1387a755987de1d2b4d38fac7cbcdedf48bd264` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
