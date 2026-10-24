# Verification target: GRWTSK.Algebra.LinearAlgebra.Nondegenerate.Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b392eb47b08c62b3234ded246b9ffbc016d8bb59",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b392eb47b08c62b3234ded246b9ffbc016d8bb59`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.BilinearForm.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearForm.Orthogonal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Localization` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.BaseChange` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Finite.CanonicalBilinear` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsAnisotropic](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/isanisotropic--a2ba6959db4ea2607b5e2c36.md) | 68 | `declaration-track:a2ba6959db4ea2607b5e2c364c601a191611f79866e607dc14c7cd86a179b4a0` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/instance--d59bddfc2e532fee9e6650a5.md) | 72 | `declaration-track:d59bddfc2e532fee9e6650a530a3b398bdfb08db37d7da8559dfd8cb54f0719f` |
| 3 | `lemma` | [isAnisotropic_of_isValuedIn](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/isanisotropic-of-isvaluedin--dc82d3e2125c7f42fed33313.md) | 76 | `result-track:dc82d3e2125c7f42fed333131c1734406598354407eba65d2359f91c6102b640` |
| 4 | `instance` | [instIsAnisotropicOfIsCrystallographic](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/instisanisotropicofiscrystallographic--dff3c04e748c19f9a08779f1.md) | 83 | `declaration-track:dff3c04e748c19f9a08779f10b3b96c0fb8fe9fd9c6b8c5f610adb3734950af0` |
| 5 | `def` | [toInvariantForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/toinvariantform--612e4d7ce8ea0b425e8bdceb.md) | 88 | `declaration-track:612e4d7ce8ea0b425e8bdceb9ad3f5688a0675bd849c7854d27340c93a569819` |
| 6 | `lemma` | [finrank_range_polarization_eq_finrank_span_coroot](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/finrank-range-polarization-eq-finrank-span-coroot--c79a75955933822e229c35f9.md) | 99 | `result-track:c79a75955933822e229c35f934117179835bc202d39b5b7902e7cfccc6ac184e` |
| 7 | `lemma` | [finrank_corootSpan_le](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/finrank-corootspan-le--028096293f0f0bdbb752bb63.md) | 120 | `result-track:028096293f0f0bdbb752bb63a438e60afa845a0b7efc916447e3db91d9f77f30` |
| 8 | `lemma` | [finrank_corootSpan_eq](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/finrank-corootspan-eq--0148e83c9891bd497a165e88.md) | 125 | `result-track:0148e83c9891bd497a165e885eccc45bd5a94975c7b4b59cc5d05e8dae1a6b39` |
| 9 | `lemma` | [polarizationIn_Injective](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/polarizationin-injective--80fb4e451a3c4cc91d90c421.md) | 129 | `result-track:80fb4e451a3c4cc91d90c421710b4d579d0630fb6281915201efdd807f961099` |
| 10 | `lemma` | [exists_coroot_ne](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/exists-coroot-ne--90b72cd89a89de4bcd715022.md) | 138 | `result-track:90b72cd89a89de4bcd7150228a988baae0f52ba3cd13839cc450e3ee4214a25f` |
| 11 | `theorem` | [posRootForm_posForm_pos_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/posrootform-posform-pos-of-ne-zero--d548b2142fcc29ff454e3629.md) | 155 | `result-track:d548b2142fcc29ff454e3629893df8d95dba20e7513b6b2fa2ad281aeb25ff30` |
| 12 | `lemma` | [posRootForm_posForm_anisotropic](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/posrootform-posform-anisotropic--00f9d83dc488c5e977ce153c.md) | 165 | `result-track:00f9d83dc488c5e977ce153c9bccc2df0a351a835f23e7e2ebd23d3030220fa7` |
| 13 | `lemma` | [posRootForm_posForm_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/posrootform-posform-nondegenerate--fda1c6ea45d8a9a1b202eb9a.md) | 170 | `result-track:fda1c6ea45d8a9a1b202eb9a032b5e68087ec3b48f491f37a84c5e9dbfc6089a` |
| 14 | `lemma` | [finrank_rootSpan_map_polarization_eq_finrank_corootSpan](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/finrank-rootspan-map-polarization-eq-finrank-corootspan--0786169942bb3b6e2e25c1a5.md) | 189 | `result-track:0786169942bb3b6e2e25c1a51e06ec99451487609e9614cb69be28500862efb8` |
| 15 | `lemma` | [finrank_corootSpan_le'](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/finrank-corootspan-le--19a6f7595994c1f98f97b9a4.md) | 194 | `result-track:19a6f7595994c1f98f97b9a400ff5678132753c8a3ef10725c8324969b8d015f` |
| 16 | `lemma` | [finrank_corootSpan_eq'](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/finrank-corootspan-eq--a7d33e5c95e595a3fdce1c38.md) | 200 | `result-track:a7d33e5c95e595a3fdce1c38cc93c94422fbb26b4217d00e3aa90a7a2ebe3410` |
| 17 | `lemma` | [disjoint_rootSpan_ker_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/disjoint-rootspan-ker-rootform--77e73ac6e39144544be71eea.md) | 204 | `result-track:77e73ac6e39144544be71eea4e5a512d3c5762e1ad7c091d1106bd33bd7fd3a3` |
| 18 | `lemma` | [disjoint_corootSpan_ker_corootForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/disjoint-corootspan-ker-corootform--4d9e704d4dee0806f297f97c.md) | 211 | `result-track:4d9e704d4dee0806f297f97c9ae7561193b873ee149b4d70bddae02b21690ca3` |
| 19 | `lemma` | [_root_.RootSystem.rootForm_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/root-rootsystem-rootform-nondegenerate--18027467fff2dce2817da447.md) | 215 | `result-track:18027467fff2dce2817da44706b6f2d00c0c47c42769dd37946e7457c95b4e93` |
| 20 | `lemma` | [isCompl_rootSpan_ker_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/iscompl-rootspan-ker-rootform--379e2d5fb042010d1fce61f5.md) | 226 | `result-track:379e2d5fb042010d1fce61f5993662c56dcb6babdc21c90528c8497d1889cc64` |
| 21 | `lemma` | [isCompl_corootSpan_ker_corootForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/iscompl-corootspan-ker-corootform--29b427a618a1fe2b5c94c44c.md) | 239 | `result-track:29b427a618a1fe2b5c94c44cbce93e9eaefea9cf4b7b01caf1d9938344013be2` |
| 22 | `lemma` | [ker_rootForm_eq_dualAnnihilator](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/ker-rootform-eq-dualannihilator--e34a93b6c910c0be51559534.md) | 243 | `result-track:e34a93b6c910c0be51559534b25b1bffb9ba72d5a1ca8ad9b6c6e87b7a891d1a` |
| 23 | `lemma` | [ker_corootForm_eq_dualAnnihilator](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/ker-corootform-eq-dualannihilator--0bd6e63ac269a6501a28be93.md) | 256 | `result-track:0bd6e63ac269a6501a28be9397a916d87f46a1e13f75c29117ada898b9053918` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/instance--908079a8d1b69d69c8ef9e74.md) | 260 | `declaration-track:908079a8d1b69d69c8ef9e7467ef1cab7b93512e515c3f526001af723adad405` |
| 25 | `lemma` | [rootForm_restrict_nondegenerate_of_isAnisotropic](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/rootform-restrict-nondegenerate-of-isanisotropic--a6fa85c326ccdd4698240f96.md) | 271 | `result-track:a6fa85c326ccdd4698240f9656b27f151d1a624461a5a6ded7947750117b0477` |
| 26 | `lemma` | [orthogonal_rootSpan_eq](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/orthogonal-rootspan-eq--10ed4e046aaf2b074d47a955.md) | 276 | `result-track:10ed4e046aaf2b074d47a955c2aff5c9dd4000b869ca4d1f1401c387c29a9dc1` |
| 27 | `lemma` | [orthogonal_corootSpan_eq](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/orthogonal-corootspan-eq--9e7381b6fe21dfb4d821b579.md) | 288 | `result-track:9e7381b6fe21dfb4d821b57963b400a859ad6916288c56b019db26b2e3570e4b` |
| 28 | `lemma` | [rootSpan_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/rootspan-eq-top-iff--4f8554037a110441fd47a507.md) | 292 | `result-track:4f8554037a110441fd47a507e6fda48df928c367ba407765bcc431ce70c54d7d` |
| 29 | `instance` | [instIsAnisotropicOfLinearOrderedCommRing](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/instisanisotropicoflinearorderedcommring--b0b874796255cec5d7b09c13.md) | 307 | `declaration-track:b0b874796255cec5d7b09c1397217f1f9602000bd6cbe9f1311588dd0e6dddb0` |
| 30 | `lemma` | [zero_le_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/zero-le-rootform--59dced10d8f389cf9c23f27d.md) | 310 | `result-track:59dced10d8f389cf9c23f27de55deb22cbcc6a58c78629ff1317fa7b1438a3a9` |
| 31 | `lemma` | [rootForm_restrict_nondegenerate_of_ordered](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/rootform-restrict-nondegenerate-of-ordered--82223912bc173c3393ed1f1e.md) | 315 | `result-track:82223912bc173c3393ed1f1ed54e72624a02de4bb0509c3a8a9bcfa11e7375ea` |
| 32 | `lemma` | [rootForm_self_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/rootform-self-eq-zero-iff--644a06b16445a5cc6c5b3626.md) | 320 | `result-track:644a06b16445a5cc6c5b3626a379fc54329d02165e2dad108ea1a07118b1bf29` |
| 33 | `lemma` | [eq_zero_of_mem_rootSpan_of_rootForm_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/eq-zero-of-mem-rootspan-of-rootform-self-eq-zero--577a874aa2e3b58ac451451e.md) | 324 | `result-track:577a874aa2e3b58ac451451e3d20c2c21f1da0bf9bcede5981c9d045cabe1a8e` |
| 34 | `lemma` | [rootForm_pos_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/rootform-pos-of-ne-zero--1a761e67034f6192cc57595a.md) | 330 | `result-track:1a761e67034f6192cc57595a4e49a6d3f4b790980326626a60c7849dbc44be6f` |
| 35 | `lemma` | [_root_.RootSystem.rootForm_anisotropic](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/declarations/root-rootsystem-rootform-anisotropic--b719b55cc4b5f15e9e314ed9.md) | 336 | `result-track:b719b55cc4b5f15e9e314ed9c0ec4f8ad43b029c4b062d9455bd761931a08660` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
