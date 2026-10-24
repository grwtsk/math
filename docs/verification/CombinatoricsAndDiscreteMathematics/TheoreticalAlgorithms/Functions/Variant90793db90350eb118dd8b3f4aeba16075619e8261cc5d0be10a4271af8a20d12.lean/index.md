# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Functions.Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14b83ee06429ca1f7b0cf6b9279be4c0c2b6e1d8",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14b83ee06429ca1f7b0cf6b9279be4c0c2b6e1d8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.ToDFinsupp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Range` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Sigma` — import line 14; external provider; requires a separately pinned dependency.
- `Plausible.Functions` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [apply_eq_dlookup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/apply-eq-dlookup--9757e30c0e87c9c2e22fdf5e.md) | 68 | `result-track:9757e30c0e87c9c2e22fdf5edfc501c856bb64b86901c7b7796da8847f975a13` |
| 2 | `def` | [zeroDefault](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/zerodefault--1196eb773947d1ca2af25a37.md) | 87 | `declaration-track:1196eb773947d1ca2af25a372af89360d3120fa560f152ad5553a6904afc0660` |
| 3 | `def` | [zeroDefaultSupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/zerodefaultsupp--732ddfe520999c5f01352429.md) | 92 | `declaration-track:732ddfe520999c5f01352429fe57c56b83579f5e6c1ffc02b7f9fca9c721d34f` |
| 4 | `def` | [applyFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/applyfinsupp--6b5365175ee7789194895979.md) | 98 | `declaration-track:6b5365175ee778919489597906c81ed87dc1f7040ae7c168dc9558bc88d850eb` |
| 5 | `instance` | [Finsupp.sampleableExt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/finsupp-sampleableext--7d0ec1ed709df09ab93b3321.md) | 123 | `declaration-track:7d0ec1ed709df09ab93b332146e1e8b0c13e4c063beaec194e3f3d6b04a3c867` |
| 6 | `instance` | [DFinsupp.sampleableExt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/dfinsupp-sampleableext--dc10044fa1a3d6d1a178c018.md) | 131 | `declaration-track:dc10044fa1a3d6d1a178c018407a65b6acba27c6c6a2d77b65b1d738e983904d` |
| 7 | `inductive` | [InjectiveFunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/injectivefunction--e165e0e53307a607465fcbbe.md) | 153 | `declaration-track:e165e0e53307a607465fcbbe29f9f00e622c5387f4e4f5802e276a9fa2843844` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/instance--98c6401b1edad5a49888f668.md) | 157 | `declaration-track:98c6401b1edad5a49888f668c04e41ff12b636b815e412b556cc0e2bb5b9c470` |
| 9 | `def` | [apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/apply--edce89242c358fd1088ed78f.md) | 163 | `declaration-track:edce89242c358fd1088ed78f3dd07bbbaf519da55c72b457f9671b335f285cde` |
| 10 | `def` | [repr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/repr--c4bb87c965b0c800e74ae245.md) | 171 | `declaration-track:c4bb87c965b0c800e74ae24514d55a699493fcaa8f11ccada5ad0bf9643b5c99` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/instance--48dd7a2f8244e14182781485.md) | 174 | `declaration-track:48dd7a2f8244e1418278148591dc20149cce18d33c7ce49ff4b8dce961e0ea43` |
| 12 | `def` | [List.applyId](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/list-applyid--606ff2cf61b255efd012272c.md) | 179 | `declaration-track:606ff2cf61b255efd012272cbb44e666bc931beb34cada45beca4df4f6c5f083` |
| 13 | `theorem` | [List.applyId_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/list-applyid-cons--031da5b2974b50eab4ddeb46.md) | 183 | `result-track:031da5b2974b50eab4ddeb463b1800ce0d018e3991c847edc475b9a11860fd46` |
| 14 | `theorem` | [List.applyId_zip_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/list-applyid-zip-eq--168780fef33b4b92b2a7db6e.md) | 193 | `result-track:168780fef33b4b92b2a7db6efd4c3070de3c3154228a8400690c59ce85f39bfd` |
| 15 | `theorem` | [applyId_mem_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/applyid-mem-iff--43e77a834cbc1d37098189f8.md) | 214 | `result-track:43e77a834cbc1d37098189f8ea98071262f7c021e19ee0575bf27708275db2df` |
| 16 | `theorem` | [List.applyId_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/list-applyid-eq-self--269d030d4b73dc43efb97810.md) | 247 | `result-track:269d030d4b73dc43efb978105b4163140b8e23c7beecb8d55a4121694043b089` |
| 17 | `theorem` | [applyId_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/applyid-injective--d1e3a0ad8210c28899bd6b40.md) | 258 | `result-track:d1e3a0ad8210c28899bd6b40678bd59d615b6e59161c8b47201d2316251b3d26` |
| 18 | `def` | [Perm.slice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/perm-slice--26745f7a026e82ca9fafe8e0.md) | 291 | `declaration-track:26745f7a026e82ca9fafe8e0c66086452ecd97888b9e1363e11dcb12f7778086` |
| 19 | `def` | [sliceSizes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/slicesizes--0a2a878d60d52179084ad53c.md) | 301 | `declaration-track:0a2a878d60d52179084ad53c5bf38458c3a1e8f2a5254ec52d94b15aab439326` |
| 20 | `def` | [shrinkPerm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/shrinkperm--e740645e475803be9fe5de53.md) | 314 | `declaration-track:e740645e475803be9fe5de533b8b4fb41c3f537af734b46f32ce0ad95467ad75` |
| 21 | `def` | [shrink](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/shrink--29181f4eef6d332102597ff8.md) | 327 | `declaration-track:29181f4eef6d332102597ff8e48d83d8a61e0829564334415f3df33591320dde` |
| 22 | `def` | [mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/mk--4f22d217518cb90098b92c22.md) | 340 | `declaration-track:4f22d217518cb90098b92c22be70e18390b77da270de9ea077b5994d658ada10` |
| 23 | `theorem` | [injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/injective--ce213831d6e85264e5d84a47.md) | 349 | `result-track:ce213831d6e85264e5d84a47becd11f6a37be4dfd9516b7907108dbff8124604` |
| 24 | `instance` | [PiInjective.sampleableExt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/piinjective-sampleableext--46cf84dfa616777a7196eca4.md) | 368 | `declaration-track:46cf84dfa616777a7196eca468a470215d0f62647bb8cd94be7ad04f10625e39` |
| 25 | `instance` | [Injective.testable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/injective-testable--0715e3bd5fc5f27304fa54d5.md) | 386 | `declaration-track:0715e3bd5fc5f27304fa54d5c9a9d0e7baea7e6d928769ec2347da587227446a` |
| 26 | `instance` | [Monotone.testable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/monotone-testable--fc4e676599d1bc8b7fc4c2d1.md) | 392 | `declaration-track:fc4e676599d1bc8b7fc4c2d12f123d21b43e9cd3c31ff5674c08b383624b54da` |
| 27 | `instance` | [Antitone.testable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant90793db90350eb118dd8b3f4aeba16075619e8261cc5d0be10a4271af8a20d12.lean/declarations/antitone-testable--d7da0d4f5f6b3dea04c96308.md) | 398 | `declaration-track:d7da0d4f5f6b3dea04c96308bab77b45ee35240a83c918e65013fa8bd5a3b5b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
