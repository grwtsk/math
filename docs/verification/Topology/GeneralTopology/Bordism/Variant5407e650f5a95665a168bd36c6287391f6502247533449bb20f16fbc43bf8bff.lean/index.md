# Verification target: GRWTSK.Topology.GeneralTopology.Bordism.Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7489c5c02cf128c7fb889649ce23e3b919624ddb",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7489c5c02cf128c7fb889649ce23e3b919624ddb`.

Source path: `GRWTSK/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Instances.Real` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SingularManifold.](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/singularmanifold--57e1b1a4df3c7585aeb3f205.md) | 105 | `declaration-track:57e1b1a4df3c7585aeb3f2059a35342dec0672a6f8f383bf264ffb8e156d1625` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/instance--628689e87db0e8be96ec1d3b.md) | 130 | `declaration-track:628689e87db0e8be96ec1d3bd2b32963be7f4aabbbc64fe994ebacefa417cfe8` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/instance--b1dc6650d8f3ca70fe2c9082.md) | 132 | `declaration-track:b1dc6650d8f3ca70fe2c9082fa6cf0973ce50dcdf20ed6a97d2903129ec6cb7a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/instance--ed69766cda83f06eef14ef3d.md) | 134 | `declaration-track:ed69766cda83f06eef14ef3d8433664ca64ac119671ad7b0a821ca842a77d693` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/instance--20b450eeafbe9f867b8b8520.md) | 136 | `declaration-track:20b450eeafbe9f867b8b85207ec1815ab4690bab259df53220f58a038056ffe7` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/instance--8c77da1aeef2224576b28405.md) | 138 | `declaration-track:8c77da1aeef2224576b28405bf1fda15ae6b204685f8f1564fa2dff828aea6c8` |
| 7 | `def` | [map.](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/map--af9bcef28e3574805a16e551.md) | 142 | `declaration-track:af9bcef28e3574805a16e55104ca973da241b5459369d4674a2f041373e6ec66` |
| 8 | `lemma` | [map_f](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/map-f--f7c21fe4cbd8b0486a477161.md) | 151 | `result-track:f7c21fe4cbd8b0486a4771613cee8357963223c05cc2065826c8876917d04fe3` |
| 9 | `lemma` | [map_M](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/map-m--998f0119ca567ec6fb82bd68.md) | 156 | `result-track:998f0119ca567ec6fb82bd6887f1da905fd8204e66400344d7ee9f826093dd0d` |
| 10 | `lemma` | [map_comp](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/map-comp--6173c4e6e7502bf2d4e2a01e.md) | 160 | `result-track:6173c4e6e7502bf2d4e2a01e51073ecfcd450d2ecde5ee052f5bdcd25f23811c` |
| 11 | `def` | [refl](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/refl--b9b7862599c9c533c21c1792.md) | 169 | `declaration-track:b9b7862599c9c533c21c1792181654ec62fa17fa8586bd31ec9dcf64244740df` |
| 12 | `def` | [comap](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/comap--f05df2c1fcd951928b0c79b5.md) | 176 | `declaration-track:f05df2c1fcd951928b0c79b5fdb2e9cdfc082187320e25de2f64447e28699bec` |
| 13 | `lemma` | [comap_M](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/comap-m--c6dd4fc14ecfe96879771f96.md) | 183 | `result-track:c6dd4fc14ecfe96879771f964246e317fa0984d70e4c70ff4cd769cbdf64dac5` |
| 14 | `lemma` | [comap_f](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/comap-f--542d87de807a26db43b1814b.md) | 188 | `result-track:542d87de807a26db43b1814b6b35c70d4e79f1201e6b2498272ed1bd12028822` |
| 15 | `def` | [empty.](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/empty--731a315bd46922d4667b6e4a.md) | 194 | `declaration-track:731a315bd46922d4667b6e4a312df5709b98a69ae5b3ca2ca9f13abce269837f` |
| 16 | `lemma` | [empty_M](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/empty-m--6d3c479b8af5a8d564e74397.md) | 204 | `result-track:6d3c479b8af5a8d564e74397e2743765f0daf03c77f6cf0c387b16accc91b102` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/instance--ea905db8b33039e682cff9b2.md) | 206 | `declaration-track:ea905db8b33039e682cff9b24249e0478f390c4e8221c4fd652565372d25466b` |
| 18 | `def` | [toPUnit](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/topunit--1985f3c0be794d1b81bc6e84.md) | 212 | `declaration-track:1985f3c0be794d1b81bc6e84886b040b7a932a99a28d51ed1057e01151fb0763` |
| 19 | `def` | [prod](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/prod--fa63cb29042fd20530296856.md) | 234 | `declaration-track:fa63cb29042fd2053029685624f8dd6f0b74cc7cc25841d0d8502fcc627a603c` |
| 20 | `def` | [sum](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/sum--73addb8db17cd0121e974a36.md) | 243 | `declaration-track:73addb8db17cd0121e974a36904a8628eea9f41cea40b1e15507a3c41ff19751` |
| 21 | `lemma` | [sum_M](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/sum-m--7c26fa95ea88abc57165817c.md) | 249 | `result-track:7c26fa95ea88abc57165817cb6634890a6b3d7092b1a84b1dd86a87659e533a1` |
| 22 | `lemma` | [sum_f](../../../../../mathematics/Topology/GeneralTopology/Bordism/Variant5407e650f5a95665a168bd36c6287391f6502247533449bb20f16fbc43bf8bff.lean/declarations/sum-f--b12bef75d2c1c7880b6e7d6c.md) | 252 | `result-track:b12bef75d2c1c7880b6e7d6ccca4a416cab471628cc73acac9e2dc8555f5fbdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
