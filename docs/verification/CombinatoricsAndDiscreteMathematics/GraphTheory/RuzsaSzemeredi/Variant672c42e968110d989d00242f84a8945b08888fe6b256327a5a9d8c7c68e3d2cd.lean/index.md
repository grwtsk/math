# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RuzsaSzemeredi.Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3a358dc7d64232bcbeb192479856a0440e107ff",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3a358dc7d64232bcbeb192479856a0440e107ff`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ruzsaSzemerediNumber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/ruzsaszemeredinumber--f51ec6e8499417d12a2fd0c8.md) | 58 | `declaration-track:f51ec6e8499417d12a2fd0c87e3cf3755d45bd0a7e29faebfa2a088db132f546` |
| 2 | `lemma` | [ruzsaSzemerediNumber_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/ruzsaszemeredinumber-le--23921749101ea495f75a9549.md) | 63 | `result-track:23921749101ea495f75a95493bbe7f0cdd143581a56a9c8c858e5ebcda858ccc` |
| 3 | `lemma` | [ruzsaSzemerediNumber_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/ruzsaszemeredinumber-spec--0a9672ae4f6f62f517985d15.md) | 67 | `result-track:0a9672ae4f6f62f517985d15fdf478c2ddd9afa09e641b45931163bc8a5d958f` |
| 4 | `lemma` | [SimpleGraph.LocallyLinear.le_ruzsaSzemerediNumber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/simplegraph-locallylinear-le-ruzsaszemeredinumber--c41d7484f024da00d0ea9494.md) | 78 | `result-track:c41d7484f024da00d0ea9494ebacf146a99d125918c81c96c7d7a67c2447f72a` |
| 5 | `lemma` | [ruzsaSzemerediNumber_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/ruzsaszemeredinumber-mono--4dbe1b4a545ada6b917e66f5.md) | 83 | `result-track:4dbe1b4a545ada6b917e66f58e9e7f5676d5c7345f4711f76bbe5f3acd045c78` |
| 6 | `lemma` | [ruzsaSzemerediNumber_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/ruzsaszemeredinumber-congr--95e660f7b0f1d283b577419f.md) | 91 | `result-track:95e660f7b0f1d283b577419f07658a95c6e1240c479ce503a69029b31e57116e` |
| 7 | `def` | [ruzsaSzemerediNumberNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/ruzsaszemeredinumbernat--cf01679509deef3c588957ce.md) | 99 | `declaration-track:cf01679509deef3c588957ce1762a96e27763bf5f48a9f929c7bdac6be1dc17d` |
| 8 | `lemma` | [ruzsaSzemerediNumberNat_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/ruzsaszemeredinumbernat-card--a08051ec55d2f247b6894122.md) | 102 | `result-track:a08051ec55d2f247b6894122f5ba3692a663e9b76af177b550193b8909cb30f2` |
| 9 | `lemma` | [ruzsaSzemerediNumberNat_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/ruzsaszemeredinumbernat-mono--cbc6e6aacede2fa37326d9ce.md) | 106 | `result-track:cbc6e6aacede2fa37326d9ce4ba3b84b6e967e2f8e2730c52ff4eb5a375afa61` |
| 10 | `lemma` | [ruzsaSzemerediNumberNat_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/ruzsaszemeredinumbernat-le--d769db2f4e53ca2979569ce4.md) | 109 | `result-track:d769db2f4e53ca2979569ce43765ad706a1e451382c650eef1e59b72489fa4d3` |
| 11 | `lemma` | [ruzsaSzemerediNumberNat_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/ruzsaszemeredinumbernat-zero--bd6c843f03db97c90500d828.md) | 112 | `result-track:bd6c843f03db97c90500d8282e7f47fdc13407bbf46ca7f067d1e01ec1e2b30b` |
| 12 | `lemma` | [ruzsaSzemerediNumberNat_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/ruzsaszemeredinumbernat-one--eaf0633111f05f55cd9e03fe.md) | 115 | `result-track:eaf0633111f05f55cd9e03fe83c519435a6271b816a08404fc1a5bc6b94e749d` |
| 13 | `lemma` | [ruzsaSzemerediNumberNat_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/ruzsaszemeredinumbernat-two--731d8fc8cb37d596d36ebda5.md) | 118 | `result-track:731d8fc8cb37d596d36ebda5b1a80b2ca66f184568b7298f3064c18d1bcf9ecf` |
| 14 | `def` | [triangleIndices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/triangleindices--a7578badcc4f4d438af4afd2.md) | 129 | `declaration-track:a7578badcc4f4d438af4afd2bb3b10f724e8c1a25990fc5fa45627d4929d0de2` |
| 15 | `lemma` | [mem_triangleIndices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/mem-triangleindices--74cbeea990afd49fbe37f865.md) | 140 | `result-track:74cbeea990afd49fbe37f86561f73cfbd9c3437dbec9a82325686f284aeaf0e8` |
| 16 | `lemma` | [card_triangleIndices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/card-triangleindices--0fa56664a4cbbcd50d9ee496.md) | 144 | `result-track:0fa56664a4cbbcd50d9ee4969105b304395f3aef162f17c82dddfea61764c0d4` |
| 17 | `lemma` | [noAccidental](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/noaccidental--b12d37a1cdb8fc7ac80519db.md) | 147 | `result-track:b12d37a1cdb8fc7ac80519db5b9d4850c631fe30bc43d8489fe8fba06332b3eb` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/instance--8d02e63a489ee7c9b8621b44.md) | 158 | `declaration-track:8d02e63a489ee7c9b8621b4466d03cbc1ad0d4e9062f8dfba92254cee5a3e450` |
| 19 | `lemma` | [locallyLinear](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/locallylinear--6d3239136f333dc1e9e39b90.md) | 172 | `result-track:6d3239136f333dc1e9e39b90cfe20a5a74ea74c5eeedbab44534325a5aee8c96` |
| 20 | `lemma` | [card_edgeFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/card-edgefinset--fb8e04880e125e5f4812f655.md) | 176 | `result-track:fb8e04880e125e5f4812f655359a150f3123d832cd7016a586a20ca0cae4dfa5` |
| 21 | `lemma` | [addRothNumber_le_ruzsaSzemerediNumber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/addrothnumber-le-ruzsaszemeredinumber--e5b84d3f2ad153602f39cad4.md) | 185 | `result-track:e5b84d3f2ad153602f39cad40dde154f840b1b55a9918ffc6604faef65b0e940` |
| 22 | `lemma` | [rothNumberNat_le_ruzsaSzemerediNumberNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/rothnumbernat-le-ruzsaszemeredinumbernat--89833a2da6f8f10bd9b7ce4a.md) | 192 | `result-track:89833a2da6f8f10bd9b7ce4a30c71a4cb76a0b9d0f11c9aafef8bb377aa44623` |
| 23 | `theorem` | [rothNumberNat_le_ruzsaSzemerediNumberNat'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/rothnumbernat-le-ruzsaszemeredinumbernat--0a50a97e316c715bc7c2b21f.md) | 215 | `result-track:0a50a97e316c715bc7c2b21f3be835a98e665514b9d13888340ff1cccdaaef01` |
| 24 | `theorem` | [ruzsaSzemerediNumberNat_lower_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/ruzsaszemeredinumbernat-lower-bound--94c98900f1096785841c10db.md) | 240 | `result-track:94c98900f1096785841c10db45b634bb460e37daf9062b50f2a1d5a8d1bcfd4f` |
| 25 | `theorem` | [ruzsaSzemerediNumberNat_asymptotic_lower_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant672c42e968110d989d00242f84a8945b08888fe6b256327a5a9d8c7c68e3d2cd.lean/declarations/ruzsaszemeredinumbernat-asymptotic-lower-bound--137484a63fdfda7791983944.md) | 256 | `result-track:137484a63fdfda7791983944995c1437c8c06153822a7ac4c3ce32df2e56f151` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
