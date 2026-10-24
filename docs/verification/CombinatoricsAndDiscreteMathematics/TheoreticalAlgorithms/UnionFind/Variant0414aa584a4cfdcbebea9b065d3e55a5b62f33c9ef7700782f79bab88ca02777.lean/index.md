# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UnionFind.Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cc517db1e15529a0ad6701d0f2eebe7faa45470",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cc517db1e15529a0ad6701d0f2eebe7faa45470`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Tactic.Simpa` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Array.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [UFModel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/ufmodel--dd772bae1b9dfed4b2b41056.md) | 12 | `declaration-track:dd772bae1b9dfed4b2b41056a0c791f8961e180c6236e86728ac95ee62bccf75` |
| 2 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/empty--f6cc4d115e7853e689f6fa35.md) | 19 | `declaration-track:f6cc4d115e7853e689f6fa35f3f3ca9a1bf5f55fd82f3ef073b0010a3884bf23` |
| 3 | `def` | [push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/push--2ccb67e47f696f9e3e429488.md) | 24 | `declaration-track:2ccb67e47f696f9e3e429488e9a894a40d181b6146fb13495fb0d492fe384614` |
| 4 | `def` | [setParent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/setparent--4fe01037b357b177fbe5f4c7.md) | 36 | `declaration-track:4fe01037b357b177fbe5f4c70b400d0f17449c2ad7be1fdc28d7bcec9057f469` |
| 5 | `def` | [setParentBump](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/setparentbump--bbda30e5e8766b3e7af1c5c9.md) | 44 | `declaration-track:bbda30e5e8766b3e7af1c5c92ca2a07f37173c32b15a065f0ec7fcb145c744e6` |
| 6 | `structure` | [UFNode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/ufnode--08d7de1422eab287ae4d6b4c.md) | 64 | `declaration-track:08d7de1422eab287ae4d6b4ccc8836630b9e87c8406dc4eafb4f5344595fab00` |
| 7 | `inductive` | [UFModel.Agrees](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/ufmodel-agrees--d8b6211b86d0d797d240b8e2.md) | 69 | `declaration-track:d8b6211b86d0d797d240b8e23aa399fd65aa1e9e8e367041184b2038d9b79a74` |
| 8 | `theorem` | [mk'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/mk--af4eb8e25fdba890b14f5a01.md) | 74 | `result-track:af4eb8e25fdba890b14f5a01bdd0fb60582cda2a926601aa6fbb89ec8f6a4458` |
| 9 | `theorem` | [size_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/size-eq--918f5e0a24063bb1902a7e4e.md) | 82 | `result-track:918f5e0a24063bb1902a7e4ee76561d08e7386fe208021aec9940f350969d071` |
| 10 | `theorem` | [get_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/get-eq--9663e8ef3c9e5c832bcee64b.md) | 85 | `result-track:9663e8ef3c9e5c832bcee64ba9ee26e6d4c0b7288dd352d484867c05b7689b89` |
| 11 | `theorem` | [get_eq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/get-eq--9d62ba8cc116f97f7520d960.md) | 89 | `result-track:9d62ba8cc116f97f7520d9609bc9d0e57b7faeef3735e2aafdb3dd441e127141` |
| 12 | `theorem` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/empty--bd09cb49dd5c82bc2b3e8c5f.md) | 92 | `result-track:bd09cb49dd5c82bc2b3e8c5f112741dfe591353a3988a3fa729c55f3a49ede9a` |
| 13 | `theorem` | [push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/push--59feaff2a48e79c88bd09ae1.md) | 94 | `result-track:59feaff2a48e79c88bd09ae1abe3cb29cc06fcfaf6c8b435e8a1607668b7f118` |
| 14 | `theorem` | [set](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/set--fd273e47a46b15ca1ce61f78.md) | 106 | `result-track:fd273e47a46b15ca1ce61f78679c8b0f8779442f4a79643e0e892b35618af5d8` |
| 15 | `def` | [UFModel.Models](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/ufmodel-models--8a564212c25988d5157ff1f9.md) | 119 | `declaration-track:8a564212c25988d5157ff1f98c1758ce8307c67405a8b49eba635954c51792c5` |
| 16 | `theorem` | [size_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/size-eq--0f3ffede27d249d902f10142.md) | 125 | `result-track:0f3ffede27d249d902f10142646697edd219e0e82ac9b9240e5695895bb54104` |
| 17 | `theorem` | [parent_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/parent-eq--dd0233644910a1de610a8348.md) | 128 | `result-track:dd0233644910a1de610a8348322e92796152b15f5a83244e149a73045eab444a` |
| 18 | `theorem` | [parent_eq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/parent-eq--61a9f3174464a179490378c0.md) | 131 | `result-track:61a9f3174464a179490378c0eda2be22ad0544a57e183f900f5a2a08b790b3b0` |
| 19 | `theorem` | [rank_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/rank-eq--f90dac046c81daa0974a9caf.md) | 134 | `result-track:f90dac046c81daa0974a9caf70ac69cfeffd6e43c07caf16ae7a946eb06325ce` |
| 20 | `theorem` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/empty--74fefe5ef652c9bc9bbb9e20.md) | 138 | `result-track:74fefe5ef652c9bc9bbb9e20c31573cd99a49cd8414de4dff6a734b336e6c0b2` |
| 21 | `theorem` | [push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/push--c22faa92ee565d8f4a89ff0f.md) | 140 | `result-track:c22faa92ee565d8f4a89ff0fd112ca19ec911692adb6ce4293232f1725cb8b31` |
| 22 | `theorem` | [setParent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/setparent--a8676959738f2ac5b9ba71c4.md) | 148 | `result-track:a8676959738f2ac5b9ba71c4486db74b10f3d50406284730267d35f2e07dc015` |
| 23 | `structure` | [UnionFind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/unionfind--bb7496aadb72145924798a96.md) | 158 | `declaration-track:bb7496aadb72145924798a968500dcc71ee0843659f06d48572806e896e8ecd1` |
| 24 | `def` | [size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/size--cf3e9eaef5374101ff0072b8.md) | 164 | `declaration-track:cf3e9eaef5374101ff0072b8aed8045611a02568c7f940a13359747ee4543a5c` |
| 25 | `theorem` | [model'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/model--aad1d8de5ef9b584f70cfe52.md) | 166 | `result-track:aad1d8de5ef9b584f70cfe5286f5cbc2b530cef3a3831a584456e050beae6623` |
| 26 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/empty--f6e22e72e5c5d9c46677a7e2.md) | 169 | `declaration-track:f6e22e72e5c5d9c46677a7e2a67e20e6efd9cef01acce5ca9c0bac625289496e` |
| 27 | `def` | [mkEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/mkempty--3814b70800c7591ae33b25df.md) | 173 | `declaration-track:3814b70800c7591ae33b25df2b9c60032285358fc43213c38fce90626a80e7d5` |
| 28 | `def` | [rank](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/rank--9d6b8613fa153e809eb64c04.md) | 177 | `declaration-track:9d6b8613fa153e809eb64c04a37104cf0242c81a01852ecfd7b1982c4c34e337` |
| 29 | `def` | [rankMaxAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/rankmaxaux--743ed495ea8d6cad1fb672d0.md) | 180 | `declaration-track:743ed495ea8d6cad1fb672d05495df8feee03b0925bde926ce090fd631349c38` |
| 30 | `def` | [rankMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/rankmax--cc66d60543963c15ae4b690a.md) | 190 | `declaration-track:cc66d60543963c15ae4b690a75ee1bf5d5a148af81354da80a6f12abcc7c009b` |
| 31 | `theorem` | [lt_rankMax'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/lt-rankmax--f3d0e4cda0be3c1e40a4c37e.md) | 192 | `result-track:f3d0e4cda0be3c1e40a4c37e4c9f8392fe092e71b11afb4dfe19c69a5cf69652` |
| 32 | `theorem` | [lt_rankMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/lt-rankmax--25fa0c8f0d94eeb8a49e1aed.md) | 196 | `result-track:25fa0c8f0d94eeb8a49e1aedc737805d1850149f01c9f05ed652c82c8a480092` |
| 33 | `theorem` | [rank_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/rank-eq--39eb312caf91968995da7fb8.md) | 199 | `result-track:39eb312caf91968995da7fb8a950b52cb4e70d108b407da5769e012c97c44a8e` |
| 34 | `theorem` | [rank_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/rank-lt--ff26da43139f5fb74c647add.md) | 203 | `result-track:ff26da43139f5fb74c647addff96fd150a8a68f67f6c4ad34f2e3b689a4b46b5` |
| 35 | `theorem` | [parent_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/parent-lt--283c7693e869522297f3f59d.md) | 208 | `result-track:283c7693e869522297f3f59dd39efbf21f454dc45ad6053028f775a6bb9316a0` |
| 36 | `def` | [push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/push--18c3e68d5ffad9ce6dde47f9.md) | 212 | `declaration-track:18c3e68d5ffad9ce6dde47f97936ec12d7509a0b34ddcf34fdc19c15d08e8662` |
| 37 | `def` | [findAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/findaux--da4901de469054dde2ba2ccd.md) | 216 | `declaration-track:da4901de469054dde2ba2ccd36f377675cf156238d868cd077ea27daa8b0313b` |
| 38 | `def` | [find](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/find--d9e22f336755b8d9d581bd62.md) | 248 | `declaration-track:d9e22f336755b8d9d581bd62816df17a2bc939c9c42703f15ff00d3848256279` |
| 39 | `def` | [link](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/link--df3111360287e609b916de67.md) | 257 | `declaration-track:df3111360287e609b916de67651c42eac8cad6e0c309edeb683c99509f4f565b` |
| 40 | `def` | [union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean/declarations/union--25c0dc37b57b80655e9323fc.md) | 294 | `declaration-track:25c0dc37b57b80655e9323fc41e7ee64f7920d35851ccd873ba97ebf822da7cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
