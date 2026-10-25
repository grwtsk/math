# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e9d85db3e17b5bcd5b388d0493288d854f819f7",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e9d85db3e17b5bcd5b388d0493288d854f819f7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.End` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Function` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isFixedPt_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/isfixedpt-id--22fc29595b9825044eb7f91a.md) | 44 | `result-track:22fc29595b9825044eb7f91ae43160fdb356ecf9b0ec3734679b60839bca2b8e` |
| 2 | `theorem` | [forall_isFixedPt_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/forall-isfixedpt-iff--8856ec8e1c0f7abe538bd3b3.md) | 48 | `result-track:8856ec8e1c0f7abe538bd3b341edced19dd26b33c8120865ab400a96eb7fc3ea` |
| 3 | `instance` | [decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/decidable--009c98572728306f51d84b96.md) | 53 | `declaration-track:009c98572728306f51d84b96869f72c22cf2a3ef0626d952e47078cc111915fa` |
| 4 | `theorem` | [eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/eq--086d961d88d493942344196a.md) | 57 | `result-track:086d961d88d493942344196ab5ac8c99e61af4436ea3acc172ad2412c8e67f9e` |
| 5 | `theorem` | [comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/comp--cc68f54c8d204764b07e1db7.md) | 61 | `result-track:cc68f54c8d204764b07e1db7bae92a9a29d3751aa2fad904a6035db7100945f9` |
| 6 | `theorem` | [iterate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/iterate--d962ce1f9a3937abc5e16ab3.md) | 67 | `result-track:d962ce1f9a3937abc5e16ab32cc318e61f5fa7ed69a9c27517d226ebd933f26b` |
| 7 | `theorem` | [left_of_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/left-of-comp--1defa44ffd284c5427aa79f7.md) | 71 | `result-track:1defa44ffd284c5427aa79f7ea0c97d64345ad69966cb060fc614d0da2b4ff7a` |
| 8 | `theorem` | [to_leftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/to-leftinverse--e0ff65fce99a26761912d7da.md) | 78 | `result-track:e0ff65fce99a26761912d7da5bce1ae6cde33ed75ed82203b8fe5affc7ffca3c` |
| 9 | `theorem` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/map--649846dd2f8f2faeca6d4dc7.md) | 85 | `result-track:649846dd2f8f2faeca6d4dc74a5923bf568311a432f12da353c2ad73680c1b65` |
| 10 | `theorem` | [apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/apply--0cfb3dba6f2887e278b78fe3.md) | 91 | `result-track:0cfb3dba6f2887e278b78fe32a1876f79d0dcdc259a5d6387489d8c166aa271d` |
| 11 | `theorem` | [preimage_iterate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/preimage-iterate--182d66d7dbf107d8ad276496.md) | 93 | `result-track:182d66d7dbf107d8ad276496aa78de793e10a3d0a955a04031d4a7d3e12aa34f` |
| 12 | `lemma` | [image_iterate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/image-iterate--63441993b215f16211577468.md) | 98 | `result-track:63441993b215f16211577468db1870f4c1e7ad3a329489ce83614a26c61e07dd` |
| 13 | `theorem` | [equiv_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/equiv-symm--e4d94cda0ccdb319336af298.md) | 102 | `result-track:e4d94cda0ccdb319336af298aa81795d2f85113a8e528f64215914e826dbd1b9` |
| 14 | `theorem` | [perm_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/perm-inv--43786380e7a6326d6b52d005.md) | 105 | `result-track:43786380e7a6326d6b52d005c77068f00814406bea1885e8c294bf3c6482c577` |
| 15 | `theorem` | [perm_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/perm-pow--9dffa564a3bd42ced6a96559.md) | 108 | `result-track:9dffa564a3bd42ced6a965595867722ee39f2454766e3697e9ca939549d64dc5` |
| 16 | `theorem` | [perm_zpow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/perm-zpow--172f4d8242fd117a23eddf67.md) | 110 | `result-track:172f4d8242fd117a23eddf677c9a29c7e1e825d4dcf2c46c7a344599e6a3e1ff` |
| 17 | `theorem` | [Injective.isFixedPt_apply_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/injective-isfixedpt-apply-iff--e2c539d1579167d65bb6634b.md) | 117 | `result-track:e2c539d1579167d65bb6634b901702f9085145515f2d4ee30e6623616b45bdb3` |
| 18 | `def` | [fixedPoints](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/fixedpoints--63a9fd2f60a1660839c6228f.md) | 122 | `declaration-track:63a9fd2f60a1660839c6228f9be2fce45fae926f3ea47949528015a5c77f8a1f` |
| 19 | `instance` | [fixedPoints.decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/fixedpoints-decidable--fab9d99e1e092ef35b96462e.md) | 125 | `declaration-track:fab9d99e1e092ef35b96462e4e3d37bc712f8bfe2fab5cbfe1ee33cb5da621d5` |
| 20 | `theorem` | [mem_fixedPoints](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/mem-fixedpoints--c551455de1c1e54543040b87.md) | 130 | `result-track:c551455de1c1e54543040b87d29013c030504470ad0f7c36e91717c35dc5e575` |
| 21 | `theorem` | [mem_fixedPoints_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/mem-fixedpoints-iff--60e7c46981bcbe1c099f3614.md) | 133 | `result-track:60e7c46981bcbe1c099f3614dc546008df648c23b1ebde4535b354a10dbaac7c` |
| 22 | `theorem` | [fixedPoints_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/fixedpoints-id--88ef88088ed7c31d1be28871.md) | 137 | `result-track:88ef88088ed7c31d1be2887157b1efa45499f5d53209ca98a665003f63a10b06` |
| 23 | `theorem` | [fixedPoints_subset_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/fixedpoints-subset-range--4a59c8cdfb35670421357139.md) | 140 | `result-track:4a59c8cdfb35670421357139b18bde9487e4ffdb246621c742d5ff4b5e75f2cb` |
| 24 | `theorem` | [Semiconj.mapsTo_fixedPoints](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/semiconj-mapsto-fixedpoints--35ad26e49c926e44867a98f2.md) | 144 | `result-track:35ad26e49c926e44867a98f2f84967851c51070b5a92522fb853c64409108570` |
| 25 | `theorem` | [invOn_fixedPoints_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/invon-fixedpoints-comp--a94031d2f5b4c78668584af6.md) | 149 | `result-track:a94031d2f5b4c78668584af6d332fe90ead29158b2d00f3ab012d7758d730f7d` |
| 26 | `theorem` | [mapsTo_fixedPoints_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/mapsto-fixedpoints-comp--bef1d3b1884b8ab373eb7d80.md) | 154 | `result-track:bef1d3b1884b8ab373eb7d80dc3d7a76679efc530e453d9de8b43ed2a7d3a76c` |
| 27 | `theorem` | [bijOn_fixedPoints_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/bijon-fixedpoints-comp--fa507727bcb177545a7c6260.md) | 159 | `result-track:fa507727bcb177545a7c626062cb46bc8f8d56f7b2d9ee433c7b99a94958eeae` |
| 28 | `theorem` | [Commute.invOn_fixedPoints_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/commute-invon-fixedpoints-comp--ed55ce0b4c9415d1a10208c0.md) | 165 | `result-track:ed55ce0b4c9415d1a10208c0e40d497f7603a0d66f31239bc4d4e167eed7d794` |
| 29 | `theorem` | [Commute.left_bijOn_fixedPoints_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/commute-left-bijon-fixedpoints-comp--84a42749523cb521b297c5b7.md) | 171 | `result-track:84a42749523cb521b297c5b72ab7a4b6fe7e6e207a081bbc5e1f62c7c74a92b3` |
| 30 | `theorem` | [Commute.right_bijOn_fixedPoints_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1abae4501d5a5d5acb096a99c2fb546c9b27399f20b9d7b144caed6ff63fd254.lean/declarations/commute-right-bijon-fixedpoints-comp--2c7ec8d57674b1fa35f79237.md) | 177 | `result-track:2c7ec8d57674b1fa35f792370966748198aa359a4b6d000d008bb16bfc55a6ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
