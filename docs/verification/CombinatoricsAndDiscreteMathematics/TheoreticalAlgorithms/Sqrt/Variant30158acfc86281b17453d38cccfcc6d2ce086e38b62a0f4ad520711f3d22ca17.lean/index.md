# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sqrt.Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8db94003a13d42d6a22b58dd0f129208cea8f032",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8db94003a13d42d6a22b58dd0f129208cea8f032`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Data.Nat.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [iter_fp_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/iter-fp-bound--ead5b7bf265a62c421e8aca6.md) | 27 | `result-track:ead5b7bf265a62c421e8aca6bc54d8e7bf5822630d37e35d9ca91aca9ee92f3b` |
| 2 | `lemma` | [AM_GM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/am-gm--44d5c2ce58a23a6995f59d2f.md) | 37 | `result-track:44d5c2ce58a23a6995f59d2f2be7b9052038d7041d2dd2c4d9402760df05d6ec` |
| 3 | `lemma` | [sqrt.iter_sq_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-iter-sq-le--ca2845658f6d3b0ae6d580a9.md) | 47 | `result-track:ca2845658f6d3b0ae6d580a9209735a8938866c448de687032f1b86c4e5b5a10` |
| 4 | `lemma` | [sqrt.lt_iter_succ_sq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-lt-iter-succ-sq--852ca7e6b26aa7d4090c44a1.md) | 60 | `result-track:852ca7e6b26aa7d4090c44a18779b2c9b7c8175223304084fb50558c10ee7257` |
| 5 | `def` | [IsSqrt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/issqrt--f8e7d089de60929a02c3af44.md) | 82 | `declaration-track:f8e7d089de60929a02c3af4465b3659b800e094e5d14a5224761cd69eb53dd40` |
| 6 | `lemma` | [sqrt_isSqrt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-issqrt--72f3c5ac8cb7e5965a871b23.md) | 94 | `result-track:72f3c5ac8cb7e5965a871b23b84244bba1b43090387b21b586d47a1911894c5b` |
| 7 | `lemma` | [sqrt_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-le--26caafd5aac2f9fcf9a21782.md) | 111 | `result-track:26caafd5aac2f9fcf9a21782b9a9934c78a8b3ff1f1d2830569395503fb62a8e` |
| 8 | `lemma` | [sqrt_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-le--fdbf695d70b0063dfc29cc6a.md) | 113 | `result-track:fdbf695d70b0063dfc29cc6a71a9e00fd2d31a18295e36342482e2f938f2990e` |
| 9 | `lemma` | [lt_succ_sqrt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/lt-succ-sqrt--efeb0d037385b29eb03ec9c2.md) | 115 | `result-track:efeb0d037385b29eb03ec9c2ac243adac4ec77680fc164e0ec207d7f4efcdca5` |
| 10 | `lemma` | [lt_succ_sqrt'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/lt-succ-sqrt--d01153a9dfca6a414f2efd7a.md) | 117 | `result-track:d01153a9dfca6a414f2efd7a6378efcca8268538533238a68fd36815315f7147` |
| 11 | `lemma` | [sqrt_le_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-le-add--6bc43c3d991a9f314dec4713.md) | 119 | `result-track:6bc43c3d991a9f314dec47139ee8f48993dc9e8a675854399d65301ffb7fdd4c` |
| 12 | `lemma` | [le_sqrt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/le-sqrt--39d320bc80b416d99aed9278.md) | 122 | `result-track:39d320bc80b416d99aed9278b5bf9dec08f515d42b884fdf06986fa472b1580e` |
| 13 | `lemma` | [le_sqrt'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/le-sqrt--c7877457f11f308d618777c8.md) | 126 | `result-track:c7877457f11f308d618777c8811bc807f863b50f43575f455b0bdb5c5faafcd4` |
| 14 | `lemma` | [sqrt_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-lt--e34b1a818fd988ace5eae332.md) | 128 | `result-track:e34b1a818fd988ace5eae33240be70d820c8b0e7f26bc5ba8be4f2e489523b89` |
| 15 | `lemma` | [sqrt_lt'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-lt--4ac277f3f8aabb44de2b5897.md) | 130 | `result-track:4ac277f3f8aabb44de2b5897ee7e834db4d9ca8977fdc8f283dfc2dfc44c50e2` |
| 16 | `lemma` | [sqrt_le_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-le-self--dee3c4f93de59e6f2c719979.md) | 132 | `result-track:dee3c4f93de59e6f2c7199791db7791372838ab7c8a82c45e498f9e2f5a7c774` |
| 17 | `lemma` | [sqrt_le_sqrt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-le-sqrt--dd9a993bb187e967dc814026.md) | 134 | `result-track:dd9a993bb187e967dc814026b140881c8827a7db09abf18aa32229238019abf1` |
| 18 | `lemma` | [sqrt_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-zero--d491c9cc329a29139928e708.md) | 136 | `result-track:d491c9cc329a29139928e708b6a36cede50b32978c22a48af5a91439ec77b39f` |
| 19 | `lemma` | [sqrt_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-one--457fba536de5bfe7bbe7ebaf.md) | 138 | `result-track:457fba536de5bfe7bbe7ebaf9cdafed040eb609f46a986ae5d0b3726b5cc85ad` |
| 20 | `lemma` | [sqrt_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-eq-zero--789db31f6f8ee43dccc714cb.md) | 140 | `result-track:789db31f6f8ee43dccc714cb2fce3429396d2cd9d25001676bc2b5cd8b01100f` |
| 21 | `lemma` | [eq_sqrt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/eq-sqrt--21929c01ab669adc23d20a8a.md) | 145 | `result-track:21929c01ab669adc23d20a8af733a26236c22f05e425ea26283aae325c2c6203` |
| 22 | `lemma` | [eq_sqrt'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/eq-sqrt--6eb1e6315843d231d9cc87df.md) | 149 | `result-track:6eb1e6315843d231d9cc87dfb5ff2eee7d0a3b18d75de74ced35b53e95ad4b7e` |
| 23 | `lemma` | [le_three_of_sqrt_eq_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/le-three-of-sqrt-eq-one--e0aed76687c1de4fb7fcd307.md) | 152 | `result-track:e0aed76687c1de4fb7fcd3072683bcde1ed5fbb4137a1599f3a2642013269478` |
| 24 | `lemma` | [sqrt_lt_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-lt-self--e67ac15446062579a3ac3352.md) | 155 | `result-track:e67ac15446062579a3ac3352d93b2528140c0ee0c3faac741dd276f2b106a96d` |
| 25 | `lemma` | [sqrt_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-pos--fa631bdaf499f44b98c47bd5.md) | 158 | `result-track:fa631bdaf499f44b98c47bd569a439b307f495e87ff6f6738cd47ea8b469a871` |
| 26 | `lemma` | [sqrt_add_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-add-eq--d9dccede55fdbcbcdb9b4417.md) | 161 | `result-track:d9dccede55fdbcbcdb9b4417438e3f62a14851c62b77b450ec7a0f5282ee2fd4` |
| 27 | `lemma` | [sqrt_add_eq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-add-eq--1dcd71049c09fa46fe0b31bf.md) | 169 | `result-track:1dcd71049c09fa46fe0b31bfdb80bf2f8b6dfbf2bf5aea0f316253d04c80541b` |
| 28 | `lemma` | [sqrt_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-eq--10f47e6593acc6174b8807ad.md) | 172 | `result-track:10f47e6593acc6174b8807ad1ced4bd073c22c5294de9f58dac5730a9082aa8d` |
| 29 | `lemma` | [sqrt_eq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-eq--dc9375dfe4c0773ea0e5005a.md) | 174 | `result-track:dc9375dfe4c0773ea0e5005a09cec5ba59a8acc48e42139d77906a3974ef7c33` |
| 30 | `lemma` | [sqrt_succ_le_succ_sqrt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-succ-le-succ-sqrt--cd48cffc28bbe0f63da763b3.md) | 176 | `result-track:cd48cffc28bbe0f63da763b3b0bd33972a7fa477c4e0223b25724f4e4bb740e0` |
| 31 | `lemma` | [exists_mul_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/exists-mul-self--fcce04007b3085a46d30a735.md) | 181 | `result-track:fcce04007b3085a46d30a735029274eb223d800a2c261e2a29851f0ddc1eb563` |
| 32 | `lemma` | [exists_mul_self'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/exists-mul-self--102c61bee428988bf052d610.md) | 184 | `result-track:102c61bee428988bf052d6109a9a63ed080b46813fc787a11a6fcb8b963c2226` |
| 33 | `lemma` | [sqrt_mul_sqrt_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-mul-sqrt-lt-succ--77f7e33b55f6cae7e5c0f32f.md) | 187 | `result-track:77f7e33b55f6cae7e5c0f32f9f51ecefd8b02dac75f96b91ea15cfcde7af8578` |
| 34 | `lemma` | [sqrt_mul_sqrt_lt_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/sqrt-mul-sqrt-lt-succ--bcde4c88f541f2eadf2da0a6.md) | 190 | `result-track:bcde4c88f541f2eadf2da0a6bf9a703c8980fbda9fc8a7baa9afe7099ff02878` |
| 35 | `lemma` | [succ_le_succ_sqrt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/succ-le-succ-sqrt--95288f699cc6a26ad72cc997.md) | 193 | `result-track:95288f699cc6a26ad72cc997a587cf46b3cedadbc538876f4a2162b242258ee2` |
| 36 | `lemma` | [succ_le_succ_sqrt'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/succ-le-succ-sqrt--b47a73f34cc911d66192a430.md) | 196 | `result-track:b47a73f34cc911d66192a4300214e52d361631bf19b017000138f75636823f48` |
| 37 | `lemma` | [not_exists_sq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/not-exists-sq--3b26c25534bfe2af88675cff.md) | 200 | `result-track:3b26c25534bfe2af88675cffd17fdc6f388d5a3a1014545821505e4b354a7b18` |
| 38 | `lemma` | [not_exists_sq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant30158acfc86281b17453d38cccfcc6d2ce086e38b62a0f4ad520711f3d22ca17.lean/declarations/not-exists-sq--8913c99afda97ba4fe9ff546.md) | 206 | `result-track:8913c99afda97ba4fe9ff546f48d95b036cb4663e7f9dad634a92e152c0f6181` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
