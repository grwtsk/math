# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Construction.Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "472d9e1b12f1704d028c8a725cac477be5728c80",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `472d9e1b12f1704d028c8a725cac477be5728c80`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.SplittingField.IsSplittingField` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [factor](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/factor--f5d252da88bdac2ddc5c5c86.md) | 57 | `declaration-track:f5d252da88bdac2ddc5c5c86d83d2c7c91350d36ecbb4d1f761f306d25485a91` |
| 2 | `theorem` | [irreducible_factor](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/irreducible-factor--d50ed9c80236b9b854bb05d3.md) | 60 | `result-track:d50ed9c80236b9b854bb05d3af4a0d162099c185d0c36e37b0a436a658092b5e` |
| 3 | `theorem` | [fact_irreducible_factor](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/fact-irreducible-factor--8001653265afe01dec6afd7e.md) | 67 | `result-track:8001653265afe01dec6afd7e70aadeacaa17feabf18198db336e077fa52dcd74` |
| 4 | `theorem` | [factor_dvd_of_not_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/factor-dvd-of-not-isunit--4e7bf24725334a7e90d1e3eb.md) | 72 | `result-track:4e7bf24725334a7e90d1e3ebc3939ca1ec19df2d86c8be6fa43ec09f0f4afaa1` |
| 5 | `theorem` | [factor_dvd_of_degree_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/factor-dvd-of-degree-ne-zero--454912a01525ed234a86af71.md) | 77 | `result-track:454912a01525ed234a86af7105b36fafd9bfa2cfefd6ab316b31251bbe3c3d0a` |
| 6 | `theorem` | [factor_dvd_of_natDegree_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/factor-dvd-of-natdegree-ne-zero--afaf9ce9035695a8ac3dc40c.md) | 80 | `result-track:afaf9ce9035695a8ac3dc40c0c3a70ee9a330888da89d46fff95d85aa6428acc` |
| 7 | `lemma` | [isCoprime_iff_aeval_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/iscoprime-iff-aeval-ne-zero--cf77c240010df3480796e5c0.md) | 83 | `result-track:cf77c240010df3480796e5c0f90ef8680d5d3c0a4b581f90a7e8711c1b8d03b5` |
| 8 | `def` | [removeFactor](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/removefactor--9efae36d34ada19dc3058e4f.md) | 95 | `declaration-track:9efae36d34ada19dc3058e4f959d29ab5259d14aa027eb8f56e426dbeff5d51f` |
| 9 | `theorem` | [X_sub_C_mul_removeFactor](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/x-sub-c-mul-removefactor--e4ba163694b2605f3d01f37e.md) | 98 | `result-track:e4ba163694b2605f3d01f37e4de00716dad7e521dcd63c8034e1f05348ea19fc` |
| 10 | `theorem` | [natDegree_removeFactor](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/natdegree-removefactor--88486895f638421f292f5148.md) | 105 | `result-track:88486895f638421f292f51485ed508fa38017fe7f9dc9f6295af01d20565c9e0` |
| 11 | `theorem` | [natDegree_removeFactor'](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/natdegree-removefactor--6489943847753f2c811ea93e.md) | 108 | `result-track:6489943847753f2c811ea93e47d73880b3fef03adf3b44304c3d74a92ac31a0f` |
| 12 | `def` | [SplittingFieldAuxAux](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/splittingfieldauxaux--4abaab4ec4da8b0ccac14ab6.md) | 118 | `declaration-track:4abaab4ec4da8b0ccac14ab6a80d87e01fea7fe7946f1fb51e3ae8d24363ce5e` |
| 13 | `def` | [SplittingFieldAux](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/splittingfieldaux--1f386da291a305d90e85d4f0.md) | 131 | `declaration-track:1f386da291a305d90e85d4f0c346a4d5e55f15b61c8656a601ba30dd6177708d` |
| 14 | `instance` | [SplittingFieldAux.field](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/splittingfieldaux-field--1ace75d86492ce53077a3437.md) | 134 | `declaration-track:1ace75d86492ce53077a3437e6c85f5ce08ef1e809e9292ed841efaa3f1e9241` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/instance--e775168e6d5941e6cecf9a07.md) | 138 | `declaration-track:e775168e6d5941e6cecf9a0776bd14da0f81e7fa5089140c95c12cb327d532be` |
| 16 | `instance` | [SplittingFieldAux.algebra](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/splittingfieldaux-algebra--cc582e4b727baa5805850daa.md) | 141 | `declaration-track:cc582e4b727baa5805850daae8de1bd98c5926aa4eb0f5fa6c469123b64b8fa0` |
| 17 | `theorem` | [succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/succ--94e0c0262ff3ae09b49f7e02.md) | 147 | `result-track:94e0c0262ff3ae09b49f7e0270315531f1d22bd448c46f84d7e709e0b715d320` |
| 18 | `instance` | [algebra'''](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/algebra--bf2e8023d94c56ce6fb220eb.md) | 151 | `declaration-track:bf2e8023d94c56ce6fb220eb845f96c4d10fa0d63f03d14ea2bcdb56cf7f4f36` |
| 19 | `instance` | [algebra'](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/algebra--9b22d7730a80ae9ead56ba53.md) | 155 | `declaration-track:9b22d7730a80ae9ead56ba537db1eaaf1e072810432f7ed806c53b740914be3e` |
| 20 | `instance` | [algebra''](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/algebra--1f864c7a0ef9c607609e22f0.md) | 158 | `declaration-track:1f864c7a0ef9c607609e22f0ad85a01e2390e6aaa7bf5d69c1a3816ae7562e43` |
| 21 | `instance` | [scalar_tower'](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/scalar-tower--3b42803e1b2a520ab7f81388.md) | 161 | `declaration-track:3b42803e1b2a520ab7f81388ad068f1a629967509850c53c871ffe2405cb153c` |
| 22 | `theorem` | [algebraMap_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/algebramap-succ--271b9fe571abd019d166a987.md) | 165 | `result-track:271b9fe571abd019d166a987cb065e8964e169af2daaf3cb229420d78c754344` |
| 23 | `theorem` | [splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/splits--020682c4652440f190b17315.md) | 171 | `result-track:020682c4652440f190b17315cf01a6b0d44cdc1920aba9098bebef36b7062306` |
| 24 | `theorem` | [adjoin_rootSet](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/adjoin-rootset--b3a0569794957334b7119afe.md) | 184 | `result-track:b3a0569794957334b7119afee494c72b23c671c551da9061dbcdb767946ffc2e` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/instance--a8c73c87f76032eb7174af61.md) | 214 | `declaration-track:a8c73c87f76032eb7174af6142a1fac799a57888c4ebf4d3cb3473f77f4f9fff` |
| 26 | `def` | [SplittingField](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/splittingfield--8d7a02e2235ca2be40a8a76c.md) | 221 | `declaration-track:8d7a02e2235ca2be40a8a76ce83c43b8809f5d2ee6e56ef38d548bca4a7dcda0` |
| 27 | `instance` | [commRing](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/commring--6cef09269f1bbead8f899a86.md) | 229 | `declaration-track:6cef09269f1bbead8f899a86ef5417a031467bf72cd5fa1b162cd02769266021` |
| 28 | `instance` | [inhabited](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/inhabited--bba399dde7e9843875ae92ee.md) | 232 | `declaration-track:bba399dde7e9843875ae92ee474abeaae16e9b01f729262e6108336c0963ee00` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/instance--bd664208aff2c6b9c0e7a20e.md) | 235 | `declaration-track:bd664208aff2c6b9c0e7a20e79c0c40ca70b93d523e30d3b8531bcb49f3d3b38` |
| 30 | `instance` | [algebra](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/algebra--e8b518c2588508fb30e31fc6.md) | 238 | `declaration-track:e8b518c2588508fb30e31fc6b4fbfaed8561da2a36c1b96ba000be39e79c4d44` |
| 31 | `instance` | [algebra'](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/algebra--28a6ca252e24e502c71e7c45.md) | 241 | `declaration-track:28a6ca252e24e502c71e7c45cb9860c08f3bd7ad659eb7913fb565bc24094df8` |
| 32 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/isscalartower--d8e61f5d2df7b35c399cda54.md) | 244 | `declaration-track:d8e61f5d2df7b35c399cda54710974a87836409440cfd6480b5a0299145e0824` |
| 33 | `def` | [algEquivSplittingFieldAux](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/algequivsplittingfieldaux--da20c5903aaa82e7516db184.md) | 250 | `declaration-track:da20c5903aaa82e7516db184034be4a57716f5616d2415a14ca207e55dbcc004` |
| 34 | `instance` | [instGroupWithZero](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/instgroupwithzero--29800e1b04a66b14b72940bf.md) | 253 | `declaration-track:29800e1b04a66b14b72940bfa2ab62a7fb135d98bda24dc7174ffde9800d6899` |
| 35 | `instance` | [instField](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/instfield--a95e5a27376793ce255a06b0.md) | 260 | `declaration-track:a95e5a27376793ce255a06b00f42221d5f339c38f35a00f0ef5831ef3886d4e6` |
| 36 | `instance` | [instCharZero](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/instcharzero--37baf7b58241c40b551b3f89.md) | 275 | `declaration-track:37baf7b58241c40b551b3f897b53c53dd0e123062af8811d942f0b27a91e052c` |
| 37 | `instance` | [instCharP](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/instcharp--802a13423a0e57778128b9b6.md) | 278 | `declaration-track:802a13423a0e57778128b9b6e2900d3acb35a803dc2aab35334725544878ad33` |
| 38 | `instance` | [instExpChar](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/instexpchar--d4324c2bc87d8f4645294a72.md) | 281 | `declaration-track:d4324c2bc87d8f4645294a72cacc08a62115abfca4f27a3fe68b78a2ff17d206` |
| 39 | `instance` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.Factor.Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.Polynomial.IsSplittingField.splittingField](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/root-grwtsk-algebra-commutativealgebra-factor-variantc07d6057e082cdb2ae3--49bea7c9d15dc37b4fc4c767.md) | 284 | `declaration-track:49bea7c9d15dc37b4fc4c767abc8100bdbf30324ebacd7f442fc57a89571aec1` |
| 40 | `theorem` | [splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/splits--e033466319cf8aaf64cb0e35.md) | 289 | `result-track:e033466319cf8aaf64cb0e3570378624b2ee61cba4683d0dbf6e4019ed0ea316` |
| 41 | `def` | [lift](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/lift--6cbdeee4238c106b74439ab6.md) | 295 | `declaration-track:6cbdeee4238c106b74439ab6dc2219ed0af60d05c8ef494706ab763b5abeba06` |
| 42 | `theorem` | [adjoin_rootSet](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/adjoin-rootset--ad4c304684e4c47c9cb46603.md) | 298 | `result-track:ad4c304684e4c47c9cb46603876461cc8edb02b8ca8c0b8da504ea99fa099360` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/instance--e78503ca238ffb60a7a632bb.md) | 311 | `declaration-track:e78503ca238ffb60a7a632bbd5fec7f645a9bedcc2a198daca9fd69833ba8922` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/instance--cfb9f159d8800014c9afb656.md) | 314 | `declaration-track:cfb9f159d8800014c9afb6565218fdba480d2f2c87aebebb05391a50161c3c22` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/instance--caa5b4f88b31df7b09a9d8f8.md) | 317 | `declaration-track:caa5b4f88b31df7b09a9d8f858877e24d97deccfa5f3354f13ffbd5668b2afb6` |
| 46 | `def` | [algEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/declarations/algequiv--fcb72ebaa6ec910130800281.md) | 321 | `declaration-track:fcb72ebaa6ec91013080028164530c986943861d87fc38504a07d79953f4a805` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
