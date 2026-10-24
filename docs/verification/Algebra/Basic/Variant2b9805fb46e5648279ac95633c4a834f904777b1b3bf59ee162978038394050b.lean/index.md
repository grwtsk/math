# Verification target: GRWTSK.Algebra.Basic.Variant2b9805fb46e5648279ac95633c4a834f904777b1b3bf59ee162978038394050b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e06176e5a13d5c7cf3e1802390003809ac183f5b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant2b9805fb46e5648279ac95633c4a834f904777b1b3bf59ee162978038394050b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant2b9805fb46e5648279ac95633c4a834f904777b1b3bf59ee162978038394050b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant2b9805fb46e5648279ac95633c4a834f904777b1b3bf59ee162978038394050b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e06176e5a13d5c7cf3e1802390003809ac183f5b`.

Source path: `GRWTSK/Algebra/Basic/Variant2b9805fb46e5648279ac95633c4a834f904777b1b3bf59ee162978038394050b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant2b9805fb46e5648279ac95633c4a834f904777b1b3bf59ee162978038394050b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units.Opposite` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [of_isUnit_or_isUnit_of_isUnit_add](../../../../mathematics/Algebra/Basic/Variant2b9805fb46e5648279ac95633c4a834f904777b1b3bf59ee162978038394050b.lean/declarations/of-isunit-or-isunit-of-isunit-add--44d1b211424db46d9acd47c8.md) | 39 | `result-track:44d1b211424db46d9acd47c88649e177df64b78643f44c778d127f9758e5fa5c` |
| 2 | `theorem` | [of_nonunits_add](../../../../mathematics/Algebra/Basic/Variant2b9805fb46e5648279ac95633c4a834f904777b1b3bf59ee162978038394050b.lean/declarations/of-nonunits-add--0b7e32b243ec9076394c9dff.md) | 44 | `result-track:0b7e32b243ec9076394c9dfff3864a34469dec53aa94f28c211b08e61614b73e` |
| 3 | `theorem` | [isUnit_or_isUnit_of_isUnit_add](../../../../mathematics/Algebra/Basic/Variant2b9805fb46e5648279ac95633c4a834f904777b1b3bf59ee162978038394050b.lean/declarations/isunit-or-isunit-of-isunit-add--c9e1353f2e61b24e0279297d.md) | 51 | `result-track:c9e1353f2e61b24e0279297d16a0cf6777d4b2c061825d331170d8e0e27f87fb` |
| 4 | `theorem` | [nonunits_add](../../../../mathematics/Algebra/Basic/Variant2b9805fb46e5648279ac95633c4a834f904777b1b3bf59ee162978038394050b.lean/declarations/nonunits-add--d8aba1c79f0d1a28a0b8716c.md) | 56 | `result-track:d8aba1c79f0d1a28a0b8716cd39c0e4c0ed926b6e53f4a1e59362dd1cfdb0ace` |
| 5 | `def` | [nonunitsAddSubmonoid](../../../../mathematics/Algebra/Basic/Variant2b9805fb46e5648279ac95633c4a834f904777b1b3bf59ee162978038394050b.lean/declarations/nonunitsaddsubmonoid--5672398d1a6717b9b4617e6d.md) | 61 | `declaration-track:5672398d1a6717b9b4617e6d5e808dda912c1fc6ffb1d994bdabd795281a86ec` |
| 6 | `theorem` | [exists_of_isUnit_sum](../../../../mathematics/Algebra/Basic/Variant2b9805fb46e5648279ac95633c4a834f904777b1b3bf59ee162978038394050b.lean/declarations/exists-of-isunit-sum--56f2495e39ff3ad5aa62abe9.md) | 66 | `result-track:56f2495e39ff3ad5aa62abe9b77d28bd390c236d8f2088222773fc2bb6bd86e6` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant2b9805fb46e5648279ac95633c4a834f904777b1b3bf59ee162978038394050b.lean/declarations/instance--e41926d8a4ffe97ceda0af33.md) | 70 | `declaration-track:e41926d8a4ffe97ceda0af339c59bb2db4c8f47441867ea65027e9a81b73b741` |
| 8 | `theorem` | [of_unique_max_ideal](../../../../mathematics/Algebra/Basic/Variant2b9805fb46e5648279ac95633c4a834f904777b1b3bf59ee162978038394050b.lean/declarations/of-unique-max-ideal--9d862e8226a038d2d996e955.md) | 81 | `result-track:9d862e8226a038d2d996e9550ae096b213a437adc5785a307267e2b5109cd959` |
| 9 | `theorem` | [of_unique_nonzero_prime](../../../../mathematics/Algebra/Basic/Variant2b9805fb46e5648279ac95633c4a834f904777b1b3bf59ee162978038394050b.lean/declarations/of-unique-nonzero-prime--aea2e81e584a9e55f0ee8e9e.md) | 94 | `result-track:aea2e81e584a9e55f0ee8e9e1c620a83f8882a68df5c9240273d0726ef095ee7` |
| 10 | `theorem` | [of_isUnit_or_isUnit_one_sub_self](../../../../mathematics/Algebra/Basic/Variant2b9805fb46e5648279ac95633c4a834f904777b1b3bf59ee162978038394050b.lean/declarations/of-isunit-or-isunit-one-sub-self--b719c303d481583c1f34e793.md) | 110 | `result-track:b719c303d481583c1f34e7938d126ccd5b4ffcc35213ed76f655b84d553777cf` |
| 11 | `theorem` | [isUnit_or_isUnit_one_sub_self](../../../../mathematics/Algebra/Basic/Variant2b9805fb46e5648279ac95633c4a834f904777b1b3bf59ee162978038394050b.lean/declarations/isunit-or-isunit-one-sub-self--7b52c8c6aa14453fec7a88a4.md) | 116 | `result-track:7b52c8c6aa14453fec7a88a4590a6ba5ff17fd450ead2c59eba7146b20c1bd7e` |
| 12 | `theorem` | [isUnit_of_mem_nonunits_one_sub_self](../../../../mathematics/Algebra/Basic/Variant2b9805fb46e5648279ac95633c4a834f904777b1b3bf59ee162978038394050b.lean/declarations/isunit-of-mem-nonunits-one-sub-self--aa7dc60f2cc859de68a19d02.md) | 119 | `result-track:aa7dc60f2cc859de68a19d02b7632a0424d76a4bda4f04fb057367c335da0575` |
| 13 | `theorem` | [isUnit_one_sub_self_of_mem_nonunits](../../../../mathematics/Algebra/Basic/Variant2b9805fb46e5648279ac95633c4a834f904777b1b3bf59ee162978038394050b.lean/declarations/isunit-one-sub-self-of-mem-nonunits--9542e8c43f8ec90a2a6d3d06.md) | 122 | `result-track:9542e8c43f8ec90a2a6d3d06cc6fe80ea9478b98f3660ea2bc5472043d2366c2` |
| 14 | `theorem` | [of_surjective'](../../../../mathematics/Algebra/Basic/Variant2b9805fb46e5648279ac95633c4a834f904777b1b3bf59ee162978038394050b.lean/declarations/of-surjective--da47720019043445b0cd52a7.md) | 125 | `result-track:da47720019043445b0cd52a72c32eb5150b4803addefba53e8a4f652f4fa771d` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant2b9805fb46e5648279ac95633c4a834f904777b1b3bf59ee162978038394050b.lean/declarations/instance--33833f00705865e0fc81c347.md) | 143 | `declaration-track:33833f00705865e0fc81c347087437001f5725d56c80f0786d8d2ae3d8c7543b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
