# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ApplyFun.Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52ebc8c845957f01e051b1bb9082d0b4f11c104a",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52ebc8c845957f01e051b1bb9082d0b4f11c104a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Nat.Notation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Function` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--bc0c64f10bc87f87733ac11f.md) | 12 | `declaration-track:bc0c64f10bc87f87733ac11fea31026301ba00075aa05c60074a5504685fa3a6` |
| 2 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--0e56e34cceaeee1c8d1e334b.md) | 19 | `declaration-track:0e56e34cceaeee1c8d1e334b349d2fcb8317878ddd6e22c895ee3438f2568b1e` |
| 3 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--64fb6a11ed1c3835a6ea6916.md) | 27 | `declaration-track:64fb6a11ed1c3835a6ea691675249819cb9b3c3acedf1c2b0802f218dbe37f06` |
| 4 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--2653fafcd291512a0d4c412e.md) | 31 | `declaration-track:2653fafcd291512a0d4c412ef84448381d9c627aab130eff014bc4c6ede92314` |
| 5 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--8f946112a1b1c82fd57527f7.md) | 38 | `declaration-track:8f946112a1b1c82fd57527f71abe51021f8b8d2a4da317720c51de3b06bbd25a` |
| 6 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--a15d0fbf978a280831d44c91.md) | 45 | `declaration-track:a15d0fbf978a280831d44c91de04a534c0b21cecb7e34f7bf6491e18af2cb7e7` |
| 7 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--d112c262635e3b701a15f232.md) | 51 | `declaration-track:d112c262635e3b701a15f232872deea53b1e6559c5caf1d34c746e6090c06637` |
| 8 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--01cf8cd6a10cbe699c9da4d5.md) | 57 | `declaration-track:01cf8cd6a10cbe699c9da4d57abf45068f044455a113913158244fbf7ee1b0bd` |
| 9 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--52e85325b9bb762999720a4a.md) | 62 | `declaration-track:52e85325b9bb762999720a4aa9a171d16a7671219afb46ac650e33852b183b79` |
| 10 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--69924977fbedcf635e07039b.md) | 66 | `declaration-track:69924977fbedcf635e07039b0edbd5917a54f90172ba021fa0e9628fe8378195` |
| 11 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--8e415df42827e62b7120c2f1.md) | 74 | `declaration-track:8e415df42827e62b7120c2f18528f94744a159ef3d3694f3e1c9ab1c58139697` |
| 12 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--88d1c74a8e5dc82ea5789267.md) | 78 | `declaration-track:88d1c74a8e5dc82ea57892679d44c0be5c871ef383b3b5d23296d9b60f23b7fc` |
| 13 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--8d0a92d9086ec7bf5c48418b.md) | 82 | `declaration-track:8d0a92d9086ec7bf5c48418b494a1c72a47a783e83453c9075167682ded7142f` |
| 14 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--2efc158040175c46508440d3.md) | 87 | `declaration-track:2efc158040175c46508440d312e7c0dbde3a0ea6b80cf0d2072357de30f715f6` |
| 15 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--2f9468812c0a74186d7d9754.md) | 91 | `declaration-track:2f9468812c0a74186d7d97543acd2fe32ca75a533d256ccbf74e31b434801ad2` |
| 16 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--45f694cbbc88113d1e75d815.md) | 95 | `declaration-track:45f694cbbc88113d1e75d815edba9c865b3e84667260d547dfb32c3a2d7902ea` |
| 17 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--22c15f28552ad1e1f0b87eca.md) | 99 | `declaration-track:22c15f28552ad1e1f0b87eca550626e29378f9b3419ce3f09207bdbc637b7b8b` |
| 18 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--62070dc8fd7ad28b387ecdc3.md) | 103 | `declaration-track:62070dc8fd7ad28b387ecdc36b675594f88f3307928fecf9194cf053227b7032` |
| 19 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--4043038372f026148ea31de7.md) | 107 | `declaration-track:4043038372f026148ea31de7c054a3a1e2a8f3b2aa6d9780be4d6a168c284c4f` |
| 20 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--0280f07786b18c77e73129f7.md) | 111 | `declaration-track:0280f07786b18c77e73129f7e8d2c740e6563e11d5511d224ec3c88b5d334ab0` |
| 21 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--c113ee230c5d50a595baabdc.md) | 115 | `declaration-track:c113ee230c5d50a595baabdce5fb23a3f1e39765904514a9149ece578ecbf5ae` |
| 22 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--7a805591ba016f7e109da49b.md) | 119 | `declaration-track:7a805591ba016f7e109da49be3f9c9a7f8d26a47877dec5d5cbe368e6f55a3ae` |
| 23 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--2dece18b903113fea3b5e688.md) | 131 | `declaration-track:2dece18b903113fea3b5e688c061ba377a5afe18ef77101cd717ac6dc1427514` |
| 24 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--24f3bb41e6cf8f1ad58484cb.md) | 145 | `declaration-track:24f3bb41e6cf8f1ad58484cb8d8676823dc585b25c000af0135324e7b01ae53f` |
| 25 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--20b4aae79bbcdd69a1413c5e.md) | 149 | `declaration-track:20b4aae79bbcdd69a1413c5ebbea59863fc04b390e20a444eaeb35a374cb98d0` |
| 26 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--bb3258c375fe43b760a54528.md) | 153 | `declaration-track:bb3258c375fe43b760a545282b0bdb9d2ad4abda0c00fc0c74ae0d2801560c73` |
| 27 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--2aa100c14f7274dfb8326c79.md) | 157 | `declaration-track:2aa100c14f7274dfb8326c7974d93d987a30fad097c2cd6bcb5465b841d31b5f` |
| 28 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--eb078c256a22b88a6a20a34a.md) | 162 | `declaration-track:eb078c256a22b88a6a20a34a006fc5b6ea1c145eedf1fb50680f863b518fab75` |
| 29 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--cf8e090ab7499daa17ab07a3.md) | 167 | `declaration-track:cf8e090ab7499daa17ab07a389984bf16a0ba946559c2a1bdaaf3581130d0fc5` |
| 30 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--e76aa56f5d4dcd3a4ef7e773.md) | 172 | `declaration-track:e76aa56f5d4dcd3a4ef7e773b8a640bfdeb38d28139c26b08905538a6f0696ad` |
| 31 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--889af75199e66bbdbaee58e8.md) | 177 | `declaration-track:889af75199e66bbdbaee58e8d6085ac4b65922c1ca2989c2a3e2df428440555f` |
| 32 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--21b10e7ad0d57623f964352d.md) | 181 | `declaration-track:21b10e7ad0d57623f964352ddf6a8806de34e7c3b9b8882a5ff35ba725cbca76` |
| 33 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--afcdd491066ad3c44b5fca81.md) | 186 | `declaration-track:afcdd491066ad3c44b5fca811a0f5a557b05b00a30fca67da61637dfb738dff2` |
| 34 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--6a3191b008b474b0887e7bb8.md) | 191 | `declaration-track:6a3191b008b474b0887e7bb8125f17690532c0e555b0ee254a8e6f297aed9f11` |
| 35 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--745f4aaf1b0dade5302cd6d8.md) | 198 | `declaration-track:745f4aaf1b0dade5302cd6d8a2ca4e4cb63028b33fb7265ad91810a8f6643020` |
| 36 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--b82a3539ff9b849c04fd7e75.md) | 205 | `declaration-track:b82a3539ff9b849c04fd7e75aacec2295e48db7bf8fa22277bc7f57acc71a6ec` |
| 37 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--ff9585b6144997ff3ec0c390.md) | 211 | `declaration-track:ff9585b6144997ff3ec0c390f7585d29d5e1a498a4f5f696ead464edaef0a259` |
| 38 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--65b7cbc90b9d1f5be32a2a62.md) | 217 | `declaration-track:65b7cbc90b9d1f5be32a2a62e1b3a5f752a9382c502e551fd063b14e7389fbbf` |
| 39 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--a65906a7e79f966693467166.md) | 224 | `declaration-track:a65906a7e79f966693467166b0e54b3061d85ed80590baf027173a6e0b44f95d` |
| 40 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--5b68eaffa87a59e3b6a7647a.md) | 229 | `declaration-track:5b68eaffa87a59e3b6a7647a4ae0ca4e69e9a4de5871874e57c7e21ac98d0925` |
| 41 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/declarations/example--b9a56d0a8c24379c0df7a867.md) | 234 | `declaration-track:b9a56d0a8c24379c0df7a867670bc600eed1baf6585c6a88c4b7ddfc91183bad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
