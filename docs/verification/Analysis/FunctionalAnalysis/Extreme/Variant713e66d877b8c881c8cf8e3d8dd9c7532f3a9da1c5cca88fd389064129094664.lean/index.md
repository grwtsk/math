# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Extreme.Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c872512dd7f9d3b00974a374926e1d64fef7501",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c872512dd7f9d3b00974a374926e1d64fef7501`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Hull` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsExtreme](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/isextreme--24928c9b66375b5b6d696c1a.md) | 60 | `declaration-track:24928c9b66375b5b6d696c1a843c401725c39ae27717014d0789ff457cd8c2a4` |
| 2 | `def` | [Set.extremePoints](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/set-extremepoints--f59a3152399125f38a7d4d3a.md) | 68 | `declaration-track:f59a3152399125f38a7d4d3a42707f2717ffefb021616a35966167df0d95771d` |
| 3 | `theorem` | [IsExtreme.refl](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/isextreme-refl--f6b5a0c5f5c6132e199761c0.md) | 72 | `result-track:f6b5a0c5f5c6132e199761c055707c57ed3bf463700f45912e8d62b726417734` |
| 4 | `theorem` | [IsExtreme.rfl](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/isextreme-rfl--da060c66fc1d77a3ea033aa8.md) | 77 | `result-track:da060c66fc1d77a3ea033aa8a19d8275d76756916383c7c358e0cc718b7f4436` |
| 5 | `theorem` | [IsExtreme.trans](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/isextreme-trans--6728deb33691d3558d8afb29.md) | 81 | `result-track:6728deb33691d3558d8afb297fa9a0e3f31f147e7b47d8e94dafcde203716291` |
| 6 | `theorem` | [IsExtreme.antisymm](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/isextreme-antisymm--6d3bccbe60d5fcc8bea17960.md) | 87 | `result-track:6d3bccbe60d5fcc8bea1796031a781406a35257c20db73c5b460e686d5a697ba` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/instance--421445df4ab4a096db8cfe76.md) | 90 | `declaration-track:421445df4ab4a096db8cfe767dc3d20a430f3da4f641429c4f89a422dfc8136e` |
| 8 | `theorem` | [IsExtreme.inter](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/isextreme-inter--a79280811f2dff59e4eb6852.md) | 95 | `result-track:a79280811f2dff59e4eb68528f140205dbb15100926ac39f3f3b8d84b8104dd7` |
| 9 | `theorem` | [IsExtreme.mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/isextreme-mono--8bf53920eabbfbe1ca55de55.md) | 103 | `result-track:8bf53920eabbfbe1ca55de5525936e440c51f2536ab0634036887aaa6fd15e91` |
| 10 | `theorem` | [isExtreme_iInter](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/isextreme-iinter--c39bca5712719247d5cffd9c.md) | 107 | `result-track:c39bca5712719247d5cffd9ccdee6adb4179b5114654b5b24d4740d780531fc3` |
| 11 | `theorem` | [isExtreme_biInter](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/isextreme-biinter--8b0736dd72122c4fad68ff82.md) | 115 | `result-track:8b0736dd72122c4fad68ff82859b8f780899fb25a20dc8e1cd3986e006e47a4e` |
| 12 | `theorem` | [isExtreme_sInter](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/isextreme-sinter--cf738f78eff4f12890f7ad33.md) | 120 | `result-track:cf738f78eff4f12890f7ad33d4974ee40edac6dd074ed50fe597192604f5a9b2` |
| 13 | `theorem` | [mem_extremePoints](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/mem-extremepoints--0c7ccbe01d0add0f2b97dd2c.md) | 123 | `result-track:0c7ccbe01d0add0f2b97dd2cedbf5b7d2073f73f77b2ec98599ab1337e869d58` |
| 14 | `theorem` | [mem_extremePoints_iff_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/mem-extremepoints-iff-left--7802bdc367004726c7ded0db.md) | 132 | `result-track:7802bdc367004726c7ded0db20e04bd720821d3f634aa82093c18a1397de743a` |
| 15 | `lemma` | [isExtreme_singleton](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/isextreme-singleton--4e51525b826d2b5e328af6e3.md) | 141 | `result-track:4e51525b826d2b5e328af6e3de202e98a101d219923cb4d8cedee223b08bd3b9` |
| 16 | `theorem` | [extremePoints_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/extremepoints-subset--c958fac3d1d4a3ae069deeae.md) | 150 | `result-track:c958fac3d1d4a3ae069deeae73190a8fbca0d49d6c8017da15e061e8ac88711b` |
| 17 | `theorem` | [extremePoints_empty](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/extremepoints-empty--1eb5d18301d720b40e009190.md) | 154 | `result-track:1eb5d18301d720b40e009190a745759b6ca66f57525e02e1cd6be3080023408c` |
| 18 | `theorem` | [extremePoints_singleton](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/extremepoints-singleton--f2bf2418d10207391d5f108e.md) | 158 | `result-track:f2bf2418d10207391d5f108e7dc02dbe44e8f91ea23535f6de053bd394a0e9a1` |
| 19 | `theorem` | [inter_extremePoints_subset_extremePoints_of_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/inter-extremepoints-subset-extremepoints-of-subset--4f2ac0e618479d1d35400477.md) | 162 | `result-track:4f2ac0e618479d1d3540047748bb4c4d938cb52ac15e9f43d19887f9e915fe2a` |
| 20 | `theorem` | [IsExtreme.extremePoints_subset_extremePoints](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/isextreme-extremepoints-subset-extremepoints--fc6200344a78218f8f081857.md) | 166 | `result-track:fc6200344a78218f8f081857c1575faa4ef34f151d25026f449d25d2103cf4bf` |
| 21 | `theorem` | [IsExtreme.extremePoints_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/isextreme-extremepoints-eq--29e294cb14f622d4d32c1634.md) | 170 | `result-track:29e294cb14f622d4d32c163485578e28188b45e71407613be1add990116b81cd` |
| 22 | `theorem` | [IsExtreme.convex_diff](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/isextreme-convex-diff--8ae032c0686596e72b2d051d.md) | 182 | `result-track:8ae032c0686596e72b2d051d2d0062349b5e1948271529e6e411d2b04a6ca403` |
| 23 | `theorem` | [extremePoints_prod](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/extremepoints-prod--14e5b63cc679a2a56c05c234.md) | 188 | `result-track:14e5b63cc679a2a56c05c23406e85763f512c4f4337c16c397a22263807b2500` |
| 24 | `theorem` | [extremePoints_pi](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/extremepoints-pi--3599079ec72155739cef46bc.md) | 210 | `result-track:3599079ec72155739cef46bce1802be0dd15bf599d9f9520fd28415302889bc4` |
| 25 | `lemma` | [image_extremePoints](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/image-extremepoints--da2262fc29be0ed874a8ad1d.md) | 238 | `result-track:da2262fc29be0ed874a8ad1d9f26a261a408610f3e5d5780b7b33893fa1b15d5` |
| 26 | `theorem` | [mem_extremePoints_iff_forall_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/mem-extremepoints-iff-forall-segment--6f7ed4f5d0c19d75d4c1c591.md) | 256 | `result-track:6f7ed4f5d0c19d75d4c1c59121a320352c3f22229c4d304c6f0d09bbfda6727e` |
| 27 | `theorem` | [Convex.mem_extremePoints_iff_convex_diff](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/convex-mem-extremepoints-iff-convex-diff--d8eb9465dc855b062cd9bc79.md) | 267 | `result-track:d8eb9465dc855b062cd9bc79982f2699169f13886bacb9dc666c08e5826a207f` |
| 28 | `theorem` | [Convex.mem_extremePoints_iff_mem_diff_convexHull_diff](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/convex-mem-extremepoints-iff-mem-diff-convexhull-diff--6e866db83394bb305e52ca29.md) | 277 | `result-track:6e866db83394bb305e52ca29bb4c624839332eb8d33a14c1affd160f1e37aea1` |
| 29 | `theorem` | [extremePoints_convexHull_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant713e66d877b8c881c8cf8e3d8dd9c7532f3a9da1c5cca88fd389064129094664.lean/declarations/extremepoints-convexhull-subset--3ac2de7e46b2f988f7548dad.md) | 282 | `result-track:3ac2de7e46b2f988f7548dadcd88df42795f1fdf99b05f6e675b5091e6790abd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
