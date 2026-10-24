# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GlobalProjection.Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d76fe10896d75f781165f4050ce66394c28e1a5b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d76fe10896d75f781165f4050ce66394c28e1a5b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.GaloisField` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MatrixLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/matrixlocus--72e0f02034f70121c09dff45.md) | 22 | `declaration-track:72e0f02034f70121c09dff454076167386cf8a8699857da385da90dc476e385e` |
| 2 | `def` | [rowEmbed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/rowembed--12870102b2324ce11f6aeca5.md) | 32 | `declaration-track:12870102b2324ce11f6aeca55297a5dafc833528eafee137b209414a0b3a0a65` |
| 3 | `def` | [columnEmbed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/columnembed--f99de9bd043fc98e957fcdc3.md) | 36 | `declaration-track:f99de9bd043fc98e957fcdc3e8eefd335f2ffa18d5bb07c1e5af7ed764555694` |
| 4 | `theorem` | [rowEmbed_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/rowembed-mem--d25d76e167b547d4e03792fb.md) | 40 | `result-track:d25d76e167b547d4e03792fb474393b4bfe94d668a0c29c92708698cd8e3381c` |
| 5 | `theorem` | [columnEmbed_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/columnembed-mem--e25df0f596749f7b69811589.md) | 45 | `result-track:e25df0f596749f7b69811589515f6509d4617394c88b747d4e55592c6ffdd2fc` |
| 6 | `theorem` | [rowEmbed_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/rowembed-injective--c8498a899119f92c3fb1117a.md) | 49 | `result-track:c8498a899119f92c3fb1117a1097efe13881406b270d63c336d386e4887e3f29` |
| 7 | `theorem` | [columnEmbed_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/columnembed-injective--37652de355ac658eb7826069.md) | 53 | `result-track:37652de355ac658eb78260691bcc7ab97708ca3da326e83cd97643d1dcfddd4b` |
| 8 | `def` | [localRow?](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/localrow--67070b0a08c17fcebb16a75b.md) | 58 | `declaration-track:67070b0a08c17fcebb16a75b53cfb1ab43cbf876b45c077489f954d5f8d9b183` |
| 9 | `def` | [localColumn?](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/localcolumn--e9a077b9230877e2d29106f3.md) | 65 | `declaration-track:e9a077b9230877e2d29106f3fb2215a2128cbf593af20d9434b723d5d95ed5cb` |
| 10 | `theorem` | [localRow?_rowEmbed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/localrow-rowembed--e933612343eb2ca6f38cf4b8.md) | 73 | `result-track:e933612343eb2ca6f38cf4b82260cb946b2ff4628ceef904f38b0b2a9510321f` |
| 11 | `theorem` | [localColumn?_columnEmbed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/localcolumn-columnembed--1a9bd11896ad80ee9cbd78fd.md) | 85 | `result-track:1a9bd11896ad80ee9cbd78fd76197b858a751edf9276bc8ed9cc3284a086970e` |
| 12 | `theorem` | [localRow?_eq_none_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/localrow-eq-none-iff--4632320103d62ecaddbf304f.md) | 97 | `result-track:4632320103d62ecaddbf304fe7766127b5e2449fb0579a9c2cffab0596ff4598` |
| 13 | `theorem` | [localColumn?_eq_none_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/localcolumn-eq-none-iff--58b455a4c385795eda505a73.md) | 101 | `result-track:58b455a4c385795eda505a73585f81d351825c897062e02b950c8d9fc7dbe5ab` |
| 14 | `theorem` | [localRow?_eq_some_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/localrow-eq-some-iff--ae581e25950f5c2682ab906a.md) | 105 | `result-track:ae581e25950f5c2682ab906a11d6e449c2b66f93f6eb25ce71b1d6b83f0c40b7` |
| 15 | `theorem` | [localColumn?_eq_some_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/localcolumn-eq-some-iff--e10228ec31175d54a3f7cf81.md) | 120 | `result-track:e10228ec31175d54a3f7cf813d08decbe73fc14e7317515c55b895578122dfba` |
| 16 | `theorem` | [rowEmbed_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/rowembed-range--9d087013bd0b15103c3b4e4f.md) | 135 | `result-track:9d087013bd0b15103c3b4e4f38594b94ee204af32eed9ae40afac51201a6616f` |
| 17 | `theorem` | [columnEmbed_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/columnembed-range--6be90409661410923fe8aa9e.md) | 139 | `result-track:6be90409661410923fe8aa9eecbeafca273ba53339318cb629adba627faa7874` |
| 18 | `def` | [coordinateOfOffset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/coordinateofoffset--a8ff0cba8fa164c4cb9a5edb.md) | 146 | `declaration-track:a8ff0cba8fa164c4cb9a5edbc8ecc0779e61e8a3c45fe22bb4583cdb74ea6935` |
| 19 | `theorem` | [coordinateOfOffset_flatIdx](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/coordinateofoffset-flatidx--1203fa61c729555d689b034d.md) | 151 | `result-track:1203fa61c729555d689b034dbba5f4ea362cc3a3b6453842669d472ef2327d22` |
| 20 | `def` | [rowMajorOffsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/rowmajoroffsets--554cd0319bf71ac8223beee2.md) | 162 | `declaration-track:554cd0319bf71ac8223beee2a186d4372a0331ff684f6fc91d0bebd2171e6a52` |
| 21 | `theorem` | [mem_rowMajorOffsets_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/mem-rowmajoroffsets-iff--5d155f83f993c5d6d632fde0.md) | 167 | `result-track:5d155f83f993c5d6d632fde0dc95cf4e21099c8fba26ed7c018fea62c262ccc6` |
| 22 | `theorem` | [flatIdx_mem_rowMajorOffsets_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant86dba2a707bfefede5152a5ae4aa936cf0be5d982b50c8eade959272a5882d32.lean/declarations/flatidx-mem-rowmajoroffsets-iff--f7a91af82ce5b596090393e3.md) | 175 | `result-track:f7a91af82ce5b596090393e3adaec1e60e530402f76052fb06162e93ee66c1bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
