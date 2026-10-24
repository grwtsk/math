# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Partition.Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f274d6cc34b64e0a10d5486663abaded0cb26c0d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f274d6cc34b64e0a10d5486663abaded0cb26c0d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Enumerative.Composition` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Partition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/partition--f4c02d8120568538d8fef66f.md) | 60 | `declaration-track:f4c02d8120568538d8fef66f609833c8a1a2a48bde2fc1091f26992b696cd388` |
| 2 | `instance` | [decidableEqPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/decidableeqpartition--65a509e296978f4028658568.md) | 72 | `declaration-track:65a509e296978f40286585681eaca2d146b30ac11f19dd56c0f075fe11303138` |
| 3 | `def` | [ofComposition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/ofcomposition--35418ec318f96e0c666a0c4a.md) | 77 | `declaration-track:35418ec318f96e0c666a0c4ac1831b17b185ea35998282828f37dd9a81b9cf39` |
| 4 | `theorem` | [ofComposition_surj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/ofcomposition-surj--4cd0ab492d067412bdb3ffa5.md) | 82 | `result-track:4cd0ab492d067412bdb3ffa510f90c91ada8e7b461d11132dd2d24d1b398f3df` |
| 5 | `def` | [ofSums](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/ofsums--2780568d1395d83255c00d3f.md) | 93 | `declaration-track:2780568d1395d83255c00d3f30a9aef41e17c3d1537256966af260d259c6d4af` |
| 6 | `def` | [ofMultiset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/ofmultiset--61548a663cfd48b681a19d6b.md) | 102 | `declaration-track:61548a663cfd48b681a19d6b77b75055d083c53a26ad3e18de57bbfcbe96a7d8` |
| 7 | `def` | [ofSym](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/ofsym--ae556d4c3ef9641662f5f581.md) | 105 | `declaration-track:ae556d4c3ef9641662f5f58153089910aad2e7ae5c8d608cb505b046e9ea6429` |
| 8 | `lemma` | [ofSym_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/ofsym-map--78cc8418770c7aa406801c85.md) | 115 | `result-track:78cc8418770c7aa406801c858e76e2fc7d8bbae66067dc86ba5230052c1a3d45` |
| 9 | `def` | [ofSymShapeEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/ofsymshapeequiv--d4390d256460bbb4a05995e9.md) | 125 | `declaration-track:d4390d256460bbb4a05995e9960f0527019948fc9c4276090ceefb98175c9b45` |
| 10 | `def` | [indiscrete](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/indiscrete--72a75e03e20542258590effc.md) | 133 | `declaration-track:72a75e03e20542258590effc6dd3a83eed5390ee631a0511893bb1d4edc6032f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/instance--cd50ddea9106c50259fb3c11.md) | 135 | `declaration-track:cd50ddea9106c50259fb3c11f292be3f5b1d3cab7e78f9ec6167bfbaeb3ffe82` |
| 12 | `lemma` | [indiscrete_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/indiscrete-parts--3883615f3305b438c4f39fde.md) | 137 | `result-track:3883615f3305b438c4f39fdee0df64a1870d7e0f5867fd4d8251bc814f98ad54` |
| 13 | `lemma` | [partition_zero_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/partition-zero-parts--fb8a46ed46f5eb95cb7879e1.md) | 140 | `result-track:fb8a46ed46f5eb95cb7879e114b8a6b47f9a674cc1a2ad5837278449b21fe639` |
| 14 | `instance` | [UniquePartitionZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/uniquepartitionzero--65029a0e17fa1c12f705f426.md) | 143 | `declaration-track:65029a0e17fa1c12f705f42649be1b54e223818b98c4837c8616d248ca36a713` |
| 15 | `lemma` | [partition_one_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/partition-one-parts--924bde1ff7b1085b10f909c4.md) | 146 | `result-track:924bde1ff7b1085b10f909c41cb4ca02df07407142e840d856f9bfb0d17b9512` |
| 16 | `instance` | [UniquePartitionOne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/uniquepartitionone--371646ac97b3866e657ba406.md) | 152 | `declaration-track:371646ac97b3866e657ba406ccc9b037900675a2290462a5747fbe49736eb406` |
| 17 | `lemma` | [ofSym_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/ofsym-one--39a399180e11be1695bcf4fe.md) | 155 | `result-track:39a399180e11be1695bcf4fedf582463f4c47f0e1a7136894b6cf2415fa851f4` |
| 18 | `theorem` | [count_ofSums_of_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/count-ofsums-of-ne-zero--00f9ba2ac339fc83e52bfd9f.md) | 163 | `result-track:00f9ba2ac339fc83e52bfd9fdfde277e6ebe4c88e9890aabc785bf2bf2d8fabc` |
| 19 | `theorem` | [count_ofSums_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/count-ofsums-zero--b79cccc926708a0c7e59a2ee.md) | 167 | `result-track:b79cccc926708a0c7e59a2ee903cea8161d55af1a36c30ab9336d1b397f6406b` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/instance--8d0d18e12665f2623d005ede.md) | 174 | `declaration-track:8d0d18e12665f2623d005ede6b56e7990b10df49c2bae73d1de387162cc65c27` |
| 21 | `def` | [odds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/odds--0a116c862805137ba0cf03f3.md) | 178 | `declaration-track:0a116c862805137ba0cf03f3d95d6613a5f9e72e3e509f95ed6a7ea3610e7b6b` |
| 22 | `def` | [distincts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/distincts--5967270a5047b5ccaebecd50.md) | 182 | `declaration-track:5967270a5047b5ccaebecd508ecf8c1924a29be5030f6993e6d5f345585c9ca4` |
| 23 | `def` | [oddDistincts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant9938bef88e87c2233aee362553a5ccabc373b36b955aa80a1eaa6d69d0d0d36c.lean/declarations/odddistincts--e98953e7c68190bce3bf8ae6.md) | 186 | `declaration-track:e98953e7c68190bce3bf8ae6534e63d40e7a52d3f14e96238c16f5d6e97a45d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
