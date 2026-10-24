# Verification target: GRWTSK.Algebra.LinearAlgebra.RestrictScalars.Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98baf229d63b8724de181b525a0d73fc743b4b0b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RestrictScalars/Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98baf229d63b8724de181b525a0d73fc743b4b0b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RestrictScalars/Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RestrictScalars/Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.CompleteLattice` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453.lean/declarations/restrictscalars--dadf4fc895348692ee2cf79d.md) | 39 | `declaration-track:dadf4fc895348692ee2cf79d9780ff6fd1d2faf0741226e274dcaa2c29dfe2e4` |
| 2 | `theorem` | [coe_restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453.lean/declarations/coe-restrictscalars--6fb64f60e67979acbd759579.md) | 46 | `result-track:6fb64f60e67979acbd759579b12f0698b3717f7d0e4327a513e8aabed600b0b6` |
| 3 | `theorem` | [toAddSubmonoid_restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453.lean/declarations/toaddsubmonoid-restrictscalars--d9b8097b43c9aa8049723549.md) | 50 | `result-track:d9b8097b43c9aa8049723549a2b23d79a04aa7247b19e355a023341dc0412a67` |
| 4 | `theorem` | [restrictScalars_mem](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453.lean/declarations/restrictscalars-mem--d4ee7cba0dd23b5ca2c9e287.md) | 55 | `result-track:d4ee7cba0dd23b5ca2c9e287e39a9adef71a8270b940fe214622f68809384edd` |
| 5 | `theorem` | [restrictScalars_self](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453.lean/declarations/restrictscalars-self--9122424dc203e4b382d35a14.md) | 59 | `result-track:9122424dc203e4b382d35a14113bbabefa7fd473c9ac1676b5ff49820a81d623` |
| 6 | `theorem` | [restrictScalars_injective](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453.lean/declarations/restrictscalars-injective--ce5b2e197ac1474c93094963.md) | 64 | `result-track:ce5b2e197ac1474c93094963cf1926987f6f0c13848b12b22865a8e632c77872` |
| 7 | `theorem` | [restrictScalars_inj](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453.lean/declarations/restrictscalars-inj--efe6d4a533bb6b7b6e353a69.md) | 69 | `result-track:efe6d4a533bb6b7b6e353a69f78dbf253947a8d70bfdcc0774ca6517fbb64160` |
| 8 | `instance` | [restrictScalars.origModule](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453.lean/declarations/restrictscalars-origmodule--1a4b43b3d0f05826d8cb7aa2.md) | 74 | `declaration-track:1a4b43b3d0f05826d8cb7aa2158196e44975bdfde524c5c183a47316c4ddd343` |
| 9 | `instance` | [restrictScalars.isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453.lean/declarations/restrictscalars-isscalartower--afb4201a2dc22a6aee7b9052.md) | 77 | `declaration-track:afb4201a2dc22a6aee7b905289583107cf3d0b44a082da32b86b0e1bb95cd870` |
| 10 | `def` | [restrictScalarsEmbedding](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453.lean/declarations/restrictscalarsembedding--18a94d40eefdd3be0dbeb816.md) | 84 | `declaration-track:18a94d40eefdd3be0dbeb816562c924c7d559a3987ef334f89a98f2811708dad` |
| 11 | `def` | [restrictScalarsEquiv](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453.lean/declarations/restrictscalarsequiv--c225f9ad259b93463da13342.md) | 92 | `declaration-track:c225f9ad259b93463da133429548515dbaf39972c1870c8a1ed37c971ec0d703` |
| 12 | `theorem` | [restrictScalars_bot](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453.lean/declarations/restrictscalars-bot--3c0bfda5306cf8ce1b81acfb.md) | 97 | `result-track:3c0bfda5306cf8ce1b81acfb176c719d92d560ec267f855ed9a23f35c2695f49` |
| 13 | `theorem` | [restrictScalars_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453.lean/declarations/restrictscalars-eq-bot-iff--d6d2d4bbc4d62f410c4ff06c.md) | 101 | `result-track:d6d2d4bbc4d62f410c4ff06c9ea7e62c8cf87624bda251d061cc8ed32f20f85d` |
| 14 | `theorem` | [restrictScalars_top](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453.lean/declarations/restrictscalars-top--f19baf30fee93274a0ff9f21.md) | 105 | `result-track:f19baf30fee93274a0ff9f21e5ce3de3fc4dd62c2d626db56b162cc6bc9168f3` |
| 15 | `theorem` | [restrictScalars_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453.lean/declarations/restrictscalars-eq-top-iff--9c97acc419007d12af566bb3.md) | 109 | `result-track:9c97acc419007d12af566bb3ad2398d1c84d5a0dac60fa2769cade280ac2185a` |
| 16 | `def` | [restrictScalarsLatticeHom](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant9f3b636c643dadca80700eb84c3fcc46ebebc6660c7af95e98b01984712dc453.lean/declarations/restrictscalarslatticehom--5ea6753c437d10513fc0a417.md) | 114 | `declaration-track:5ea6753c437d10513fc0a417a9e46452368723a7fb8d37badf8a82f345714abe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
