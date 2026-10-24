# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3735ec21f83a3bd3847a0a99d5e77fc183a2bd45",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3735ec21f83a3bd3847a0a99d5e77fc183a2bd45`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NeZero` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BoundedOrder.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CanonicallyOrderedAdd](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/canonicallyorderedadd--9e33cbc750e91f02ed5a7ed0.md) | 33 | `declaration-track:9e33cbc750e91f02ed5a7ed084cf762b324ca502d507637a958823ef273515f0` |
| 2 | `class` | [CanonicallyOrderedMul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/canonicallyorderedmul--2b65c2d8f8bb05cd1f830bf6.md) | 49 | `declaration-track:2b65c2d8f8bb05cd1f830bf6923a911b917cb38309f3c402be6ef0477f53cc01` |
| 3 | `structure` | [CanonicallyOrderedAddCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/canonicallyorderedaddcommmonoid--c7a7dee5f717b22ba5d9b540.md) | 64 | `declaration-track:c7a7dee5f717b22ba5d9b540259bb52561a44629454ff386e2324865058e2b6c` |
| 4 | `structure` | [CanonicallyOrderedCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/canonicallyorderedcommmonoid--547a9b2f8a62b1f0e0d58708.md) | 85 | `declaration-track:547a9b2f8a62b1f0e0d58708bc9d22d4cc30daa508cabe11e7c731e3f2108ad1` |
| 5 | `theorem` | [le_self_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/le-self-mul--2d8fba8b2d7783b058304a43.md) | 98 | `result-track:2d8fba8b2d7783b058304a43a3c0df47218f7226d37a0d00b56672bf04352a87` |
| 6 | `theorem` | [self_le_mul_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/self-le-mul-right--10f3c8e9f741bc36b31c140a.md) | 102 | `result-track:10f3c8e9f741bc36b31c140a1aa3f146f092293927e81f3174f1e2965fd7ceed` |
| 7 | `theorem` | [le_iff_exists_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/le-iff-exists-mul--a5a42431d1ec068c5c520492.md) | 106 | `result-track:a5a42431d1ec068c5c520492b93bea3824e2cb3b015a534c4709c35576747569` |
| 8 | `theorem` | [le_of_mul_le_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/le-of-mul-le-left--809be18d87ca8b1519ff2ece.md) | 117 | `result-track:809be18d87ca8b1519ff2ece635506e2439ba989c7d120c273c27df019833aec` |
| 9 | `theorem` | [le_mul_of_le_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/le-mul-of-le-left--d33cbadfee1cfe036ad6ee16.md) | 121 | `result-track:d33cbadfee1cfe036ad6ee16bfc01524b28c8586068e6e64bb48c29a85e9f977` |
| 10 | `theorem` | [le_mul_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/le-mul-self--f9708478fd4556368f16ecbb.md) | 137 | `result-track:f9708478fd4556368f16ecbb3c28dbe0ee8cf6d46aeffff7d2bfe1b4ead9f2f4` |
| 11 | `theorem` | [self_le_mul_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/self-le-mul-left--f91373eafb645e6f1a906755.md) | 142 | `result-track:f91373eafb645e6f1a9067557cd8eb746f98b4d7c0cb76bf9bac880524916dca` |
| 12 | `theorem` | [le_of_mul_le_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/le-of-mul-le-right--d48e7fad29ddbe0713f83d67.md) | 151 | `result-track:d48e7fad29ddbe0713f83d670cea90dca233000a8370024b151e19c81caa856d` |
| 13 | `theorem` | [le_mul_of_le_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/le-mul-of-le-right--d1978581d5f122fd2245de2a.md) | 155 | `result-track:d1978581d5f122fd2245de2af5966181821b0a18deab0ca6cef5059f19b9d5b4` |
| 14 | `theorem` | [le_iff_exists_mul'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/le-iff-exists-mul--8658f28b73d81ea0d03bdaec.md) | 161 | `result-track:8658f28b73d81ea0d03bdaeca509c573cd93283d7e074fb368151ad323266ab5` |
| 15 | `theorem` | [one_le](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/one-le--15e23795b626e8bc7d1b9e57.md) | 175 | `result-track:15e23795b626e8bc7d1b9e57034fe80760a364bcc020f1fda336c731565bc38c` |
| 16 | `theorem` | [isBot_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/isbot-one--690fc8c35252a7d9efe85f36.md) | 178 | `result-track:690fc8c35252a7d9efe85f3610ab61e96672fc54d7e0792544401c4515974650` |
| 17 | `theorem` | [one_lt_of_gt](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/one-lt-of-gt--a56961a198f48d4d5c1c5201.md) | 186 | `result-track:a56961a198f48d4d5c1c5201a042cc7c568bf5911c9b1a13aa4d0fbcb27e8973` |
| 18 | `theorem` | [bot_eq_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/bot-eq-one--31e3047c3d90c7528f5a8d4c.md) | 198 | `result-track:31e3047c3d90c7528f5a8d4c8efeb8518a9058cd425dc22a801318644e0b60fd` |
| 19 | `theorem` | [le_one_iff_eq_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/le-one-iff-eq-one--509f989656d6b70370081bff.md) | 201 | `result-track:509f989656d6b70370081bff822d60470215863b466785879b093ef99136f65d` |
| 20 | `theorem` | [one_lt_iff_ne_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/one-lt-iff-ne-one--0af6c7745d0c51b43eb05f32.md) | 205 | `result-track:0af6c7745d0c51b43eb05f32b8dfc498f2a6268f9505d44d5ad972fdcaa5c374` |
| 21 | `theorem` | [one_lt_of_ne_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/one-lt-of-ne-one--9a452fbdea8c246d97b87f3e.md) | 209 | `result-track:9a452fbdea8c246d97b87f3e45147cde690edf9240b43934af3c68e4d7ae3041` |
| 22 | `theorem` | [eq_one_or_one_lt](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/eq-one-or-one-lt--b2a74f4205fa2bd81533f915.md) | 213 | `result-track:b2a74f4205fa2bd81533f915abbe5708e1e22ff2e1a3bd292b2a60e0d0ce9971` |
| 23 | `lemma` | [one_notMem_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/one-notmem-iff--cd95cfe075331dd88a2be88e.md) | 216 | `result-track:cd95cfe075331dd88a2be88efd24b4c6a2cdb52f623239a3eff4e6e3b11391e8` |
| 24 | `theorem` | [exists_one_lt_mul_of_lt](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/exists-one-lt-mul-of-lt--f90204e44699b57c3ade6c7d.md) | 226 | `result-track:f90204e44699b57c3ade6c7d9ed4ac127c7555df8ab40da65894659d9ffbed5f` |
| 25 | `theorem` | [lt_iff_exists_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/lt-iff-exists-mul--98724a17fc1f6b80c9290cbd.md) | 233 | `result-track:98724a17fc1f6b80c9290cbd5b6b61e9b5ab229b3930f5c0de93a276943d1617` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/instance--8fd14c4488dce58d977e090c.md) | 259 | `declaration-track:8fd14c4488dce58d977e090c56596d1b7c7e0a14406a76930c0a5b40cc978b4c` |
| 27 | `lemma` | [CanonicallyOrderedMul.toIsOrderedMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/canonicallyorderedmul-toisorderedmonoid--5250c4dcb2cbb8be537c130e.md) | 272 | `result-track:5250c4dcb2cbb8be537c130e2b254675c88fffece6c22999517091de848296fd` |
| 28 | `instance` | [CanonicallyOrderedCommMonoid.toUniqueUnits](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/canonicallyorderedcommmonoid-touniqueunits--3feb61ee3063c8499272ca38.md) | 282 | `declaration-track:3feb61ee3063c8499272ca3860ea08ebd089672c57fe62f7df92629707d3cd64` |
| 29 | `theorem` | [one_lt_mul_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/one-lt-mul-iff--66de41a77e5dd87c6465fb0a.md) | 296 | `result-track:66de41a77e5dd87c6465fb0abc3dc77a7c1b503af65add48f70d98a53933e5ca` |
| 30 | `theorem` | [pos](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/pos--cbd2ef678857bcf9e462a3ab.md) | 305 | `result-track:cbd2ef678857bcf9e462a3abee30b1495ffcd081893a687bd797c3372dc8a8cd` |
| 31 | `theorem` | [of_gt](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/of-gt--334e9f68b2ee6be7e15e9141.md) | 309 | `result-track:334e9f68b2ee6be7e15e9141c521f5bcecd7449d9f87967fc8aafdb6dabb7fbd` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/instance--ca33bd3776a3114651dde15c.md) | 316 | `declaration-track:ca33bd3776a3114651dde15cdc149a625183039fc4f98f9498f067f9ba5dbfe9` |
| 33 | `structure` | [CanonicallyLinearOrderedAddCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/canonicallylinearorderedaddcommmonoid--0ee505955f309a4b4e1436e0.md) | 327 | `declaration-track:0ee505955f309a4b4e1436e0b1a33f2c290492710e1d9de051f436612cada6da` |
| 34 | `structure` | [CanonicallyLinearOrderedCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/canonicallylinearorderedcommmonoid--554d2f6a6957e86e7949f2fc.md) | 337 | `declaration-track:554d2f6a6957e86e7949f2fc1e8edec0c783fa704118ebdfddef47b0bbf471e6` |
| 35 | `theorem` | [min_mul_distrib](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/min-mul-distrib--525a75f7cccaa4fbf262c60b.md) | 348 | `result-track:525a75f7cccaa4fbf262c60b3d43d66118b69df23ab203e1a52e92a7a8354abb` |
| 36 | `theorem` | [min_mul_distrib'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/min-mul-distrib--660649e1f5c6898447dadc15.md) | 356 | `result-track:660649e1f5c6898447dadc157e1da1f13d6f1a7e6199009e238a66cb1b08ae70` |
| 37 | `theorem` | [one_min](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/one-min--894c14b54853c1614548feff.md) | 360 | `result-track:894c14b54853c1614548feffbc8f355001746c498fc0a6fbda3ad09dd26be9e2` |
| 38 | `theorem` | [min_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/min-one--2eb2124dd74d55160bdcf832.md) | 364 | `result-track:2eb2124dd74d55160bdcf832c1ac999b2012d9a8e106d2d056604f854c7beea8` |
| 39 | `theorem` | [bot_eq_one'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante29912bc876722fcbdc8fe5a097e40522be98626261bd8df9e4056f6371acab0.lean/declarations/bot-eq-one--f6507d25c50cd6faf1ce4a60.md) | 370 | `result-track:f6507d25c50cd6faf1ce4a603a8dde027f5106da0630c9e7c234fb81fc0618a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
