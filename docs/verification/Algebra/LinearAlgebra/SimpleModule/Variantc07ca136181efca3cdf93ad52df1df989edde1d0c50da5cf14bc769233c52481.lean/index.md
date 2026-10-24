# Verification target: GRWTSK.Algebra.LinearAlgebra.SimpleModule.Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7242561df1752d6a9ccececfe48b9f9b7a31d424",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7242561df1752d6a9ccececfe48b9f9b7a31d424`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Isomorphisms` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.JordanHolder` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsSimpleModule](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/issimplemodule--06936cdcfc430ddde563a9ab.md) | 43 | `declaration-track:06936cdcfc430ddde563a9abf5322b8cae23e0dd3bb20625a638537e034b80ba` |
| 2 | `abbrev` | [IsSemisimpleModule](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/issemisimplemodule--3c0cd121f699f5f52de8f73a.md) | 49 | `declaration-track:3c0cd121f699f5f52de8f73a8bdaf9c8c9475fc2d335fe544d8003a39cedf14e` |
| 3 | `theorem` | [IsSimpleModule.nontrivial](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/issimplemodule-nontrivial--c41b57767dafe25b575b87c4.md) | 54 | `result-track:c41b57767dafe25b575b87c4b34c306203a1090e1d287ee4b92f73596d682cdf` |
| 4 | `theorem` | [IsSimpleModule.congr](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/issimplemodule-congr--55e2e0642d309c3309ff1e3c.md) | 65 | `result-track:55e2e0642d309c3309ff1e3c8c17aa66e4483f17cb12b7c58abfd7c2ad0c8352` |
| 5 | `theorem` | [isSimpleModule_iff_isAtom](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/issimplemodule-iff-isatom--8548890d3a90afb8e189b3a3.md) | 69 | `result-track:8548890d3a90afb8e189b3a3f64ae8b3fd48d4729988afb3338c977457de9c86` |
| 6 | `theorem` | [isSimpleModule_iff_isCoatom](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/issimplemodule-iff-iscoatom--f3cefccb754091e542ebaa56.md) | 75 | `result-track:f3cefccb754091e542ebaa565ef0c21f6ec5188b79d3bb722f01749b16dc4e13` |
| 7 | `theorem` | [covby_iff_quot_is_simple](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/covby-iff-quot-is-simple--91ffea1d5e66389c09240a89.md) | 81 | `result-track:91ffea1d5e66389c09240a89e79b11a41984b490157d8165315f77ff149e3309` |
| 8 | `theorem` | [isAtom](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/isatom--b8aebd4c47ff3721e0c1df8f.md) | 94 | `result-track:b8aebd4c47ff3721e0c1df8f96ad0ea58bf5456f45fcb799c483326575a5f8ff` |
| 9 | `theorem` | [is_semisimple_of_sSup_simples_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/is-semisimple-of-ssup-simples-eq-top--5d13723f3905b90acb40720d.md) | 100 | `result-track:5d13723f3905b90acb40720db91a40c5b597cb2dbc36909bd5a11bd9d4e93553` |
| 10 | `theorem` | [sSup_simples_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/ssup-simples-eq-top--7d603dde4e58384a51d04120.md) | 109 | `result-track:7d603dde4e58384a51d041204efc527e3fa82966fe621fbb8abff20e9fa8e62b` |
| 11 | `instance` | [is_semisimple_submodule](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/is-semisimple-submodule--f6791ffe1a85401162b24828.md) | 114 | `declaration-track:f6791ffe1a85401162b24828c595c03e1ba4ff343da4e69e49dd6a1983988396` |
| 12 | `theorem` | [is_semisimple_iff_top_eq_sSup_simples](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/is-semisimple-iff-top-eq-ssup-simples--c247f7628ee0f77840e36d93.md) | 121 | `result-track:c247f7628ee0f77840e36d93a7bdc6757948c72aea659152a0028dba22a83ee6` |
| 13 | `theorem` | [injective_or_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/injective-or-eq-zero--5c5fd1257d12a43b370d711d.md) | 130 | `result-track:5c5fd1257d12a43b370d711d27a3497e7c34eeba59724ec3c7f85716f06ae017` |
| 14 | `theorem` | [injective_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/injective-of-ne-zero--a7a16c21bd9f47deb9eaf1f7.md) | 136 | `result-track:a7a16c21bd9f47deb9eaf1f72987ff10d24dff01654e9c76929f7830da50b13a` |
| 15 | `theorem` | [surjective_or_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/surjective-or-eq-zero--a1c0168dabbcdd3466b26bee.md) | 141 | `result-track:a1c0168dabbcdd3466b26bee823c83d25ffae74234fbb9990853be2d60b8bba4` |
| 16 | `theorem` | [surjective_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/surjective-of-ne-zero--3938d9df08d87578225801f6.md) | 147 | `result-track:3938d9df08d87578225801f61168fc36812435da0ca441ec50f21d0e03e3e143` |
| 17 | `theorem` | [bijective_or_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/bijective-or-eq-zero--e614d8b00d1b09383ede41f7.md) | 153 | `result-track:e614d8b00d1b09383ede41f7d1d8aef57fc49836673676faea8f162901a14b4f` |
| 18 | `theorem` | [bijective_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/bijective-of-ne-zero--4a0bfe96644e25f2ed80ba44.md) | 161 | `result-track:4a0bfe96644e25f2ed80ba4402a41187574a8c61859975780667647f59540fac` |
| 19 | `theorem` | [isCoatom_ker_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/iscoatom-ker-of-surjective--001f3b9bb026500a9a360b7f.md) | 166 | `result-track:001f3b9bb026500a9a360b7fd37a60c94030447dd25302551374a44a1d6f9ab3` |
| 20 | `instance` | [_root_.GRWTSK.Algebra.LinearAlgebra.IsSimpleModule.Variant67aeb79e9d0ee9c8df6ed06447316745c34c5a966e0298f82cfa11e49c4c1151.Module.End.divisionRing](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/root-grwtsk-algebra-linearalgebra-issimplemodule-variant67aeb79e9d0ee9c8--ebc270184fe164bc8c4672ec.md) | 173 | `declaration-track:ebc270184fe164bc8c4672ec79b89aea693386c6738f8afaa68221cb447c33cf` |
| 21 | `def` | [Iso](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/iso--240fb568a905b9118b747470.md) | 212 | `declaration-track:240fb568a905b9118b747470747f00b9ecf543810513e7e5a5995b5adcbf9ca4` |
| 22 | `theorem` | [iso_symm](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/iso-symm--1fd740e46548e934965ab7e8.md) | 215 | `result-track:1fd740e46548e934965ab7e872d2fb125e24f64c1bb13a0d0f82766e926ddc60` |
| 23 | `theorem` | [iso_trans](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/iso-trans--0fc5a6b713986f9db411e9fa.md) | 218 | `result-track:0fc5a6b713986f9db411e9fa8974cfa4610b9e8a017bb188522f1d2fa96ae9de` |
| 24 | `theorem` | [second_iso](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/second-iso--49f074cc848c0ef6f5655798.md) | 222 | `result-track:49f074cc848c0ef6f5655798d6d861db820230c7166837e92ad5261313347884` |
| 25 | `instance` | [instJordanHolderLattice](../../../../../mathematics/Algebra/LinearAlgebra/SimpleModule/Variantc07ca136181efca3cdf93ad52df1df989edde1d0c50da5cf14bc769233c52481.lean/declarations/instjordanholderlattice--890332945222b862fcf2ec87.md) | 229 | `declaration-track:890332945222b862fcf2ec8798b2baa00cacd30dade79e94eb0095c7a74cb4bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
