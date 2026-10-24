# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Down.Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5513dad515e3c1b8791a78fc8e06eaea3733701a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5513dad515e3c1b8791a78fc8e06eaea3733701a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/declarations/nonmembersubfamily--4595192dbebf0b06130c8e3a.md) | 45 | `declaration-track:4595192dbebf0b06130c8e3aebc9ace4ccbfdb8d4066f111eb8787fcd1f06bb9` |
| 2 | `def` | [memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/declarations/membersubfamily--bfb3c0b3c66573748e8adaa7.md) | 51 | `declaration-track:bfb3c0b3c66573748e8adaa75902eb9bd8707f76a22835f17d5dd824486fe176` |
| 3 | `theorem` | [mem_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/declarations/mem-nonmembersubfamily--61f92791b26facf4d1721104.md) | 56 | `result-track:61f92791b26facf4d1721104fc746a2abd8b50c71ab181cea7a85a7ea4f9695e` |
| 4 | `theorem` | [mem_memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/declarations/mem-membersubfamily--f287766c97c65fa5c870f0e0.md) | 61 | `result-track:f287766c97c65fa5c870f0e04713ea48b29feec887ee2bbddfb78b4c176b4405` |
| 5 | `theorem` | [nonMemberSubfamily_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/declarations/nonmembersubfamily-inter--b3dc25ac4c2a5fe0a86a2a42.md) | 69 | `result-track:b3dc25ac4c2a5fe0a86a2a42a1204848ffcc8cbeaadfd925c46fc914721d2595` |
| 6 | `theorem` | [memberSubfamily_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/declarations/membersubfamily-inter--4c791a13a71c9f04828f4d43.md) | 74 | `result-track:4c791a13a71c9f04828f4d437204062e2bbf3bfea9118aaab4cc8ebb4bc66302` |
| 7 | `theorem` | [nonMemberSubfamily_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/declarations/nonmembersubfamily-union--a9ab52ab15a3273e795de9b5.md) | 81 | `result-track:a9ab52ab15a3273e795de9b5f797d8f834bd9cb466d3cb515c1d42f56dc5b974` |
| 8 | `theorem` | [memberSubfamily_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/declarations/membersubfamily-union--9b388cd70afab6f88d0eb6e4.md) | 86 | `result-track:9b388cd70afab6f88d0eb6e4b8dc4fd9444dfdd919544a76baaf38314e8d0521` |
| 9 | `theorem` | [card_memberSubfamily_add_card_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/declarations/card-membersubfamily-add-card-nonmembersubfamily--11a7fe716608feb19ddbee35.md) | 91 | `result-track:11a7fe716608feb19ddbee353261d76e2014f40bfd554eb2d15ae8d8a2c9846a` |
| 10 | `theorem` | [memberSubfamily_union_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/declarations/membersubfamily-union-nonmembersubfamily--2e626606b64c08df9ba1fa99.md) | 99 | `result-track:2e626606b64c08df9ba1fa99ff7b6ed35e1a1fbb81b94b73365b736a0efc7afb` |
| 11 | `theorem` | [memberSubfamily_memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/declarations/membersubfamily-membersubfamily--b3b65a94cd00192c74996254.md) | 114 | `result-track:b3b65a94cd00192c74996254f732c22a63c36ae27e9dbeb4bee157e4e8862945` |
| 12 | `theorem` | [memberSubfamily_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/declarations/membersubfamily-nonmembersubfamily--23ce147426a717037a910bcd.md) | 120 | `result-track:23ce147426a717037a910bcdb8907bd65a5b11c57b2f49070fd282b3a1a76971` |
| 13 | `theorem` | [nonMemberSubfamily_memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/declarations/nonmembersubfamily-membersubfamily--445ed6a9450183a7814a938b.md) | 126 | `result-track:445ed6a9450183a7814a938b938233246556d5ad3eca559adb2ee6d36f0c9a77` |
| 14 | `theorem` | [nonMemberSubfamily_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/declarations/nonmembersubfamily-nonmembersubfamily--faddb819f3e1c1836d21cb64.md) | 133 | `result-track:faddb819f3e1c1836d21cb64d167d8aa20b5ed825c1b20555c45204287b6e3b1` |
| 15 | `def` | [compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/declarations/compression--6c746558fe1888bf45cebbc6.md) | 148 | `declaration-track:6c746558fe1888bf45cebbc67cddac8398c742031c709b6479c92a6fe9d011e7` |
| 16 | `theorem` | [mem_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/declarations/mem-compression--f6a40a00b04aeb252cade92a.md) | 164 | `result-track:f6a40a00b04aeb252cade92a25a5ad4f6846990cb768eaf7e4a652772c32efaa` |
| 17 | `theorem` | [erase_mem_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/declarations/erase-mem-compression--2dcf1b6f923485ff212c9860.md) | 174 | `result-track:2dcf1b6f923485ff212c98609954ae87ab7414395d19df30fdc47007a12d937b` |
| 18 | `theorem` | [erase_mem_compression_of_mem_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/declarations/erase-mem-compression-of-mem-compression--2303303744a200980952aee0.md) | 181 | `result-track:2303303744a200980952aee0e51f97ec33a5babe17cd82e19ff3446d50678ab9` |
| 19 | `theorem` | [mem_compression_of_insert_mem_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/declarations/mem-compression-of-insert-mem-compression--07bacae5483d035ef7469d1d.md) | 187 | `result-track:07bacae5483d035ef7469d1dc7f516e73b5583ce044891692d0b702ea77cbbdb` |
| 20 | `theorem` | [compression_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/declarations/compression-idem--b7768a84b88f070a206d8d88.md) | 196 | `result-track:b7768a84b88f070a206d8d88ab5667991d513b3c6079f3aa4e17c62fac660150` |
| 21 | `theorem` | [card_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/declarations/card-compression--5e4aaf9dbdfabc434e9eb60f.md) | 206 | `result-track:5e4aaf9dbdfabc434e9eb60f8fa38c311be687e9c2ed14aadaffdee8856ea57b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
