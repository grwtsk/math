# Verification target: GRWTSK.Algebra.Basic.Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a757179b63811a24a4328ea3c6bb2a7bd6c12f77",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a757179b63811a24a4328ea3c6bb2a7bd6c12f77`.

Source path: `GRWTSK/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Extension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Normal.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Solvable` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.SplittingField.Construction` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Normal.exists_isSplittingField](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/declarations/normal-exists-issplittingfield--914c25250fcaada4d9cb70eb.md) | 32 | `result-track:914c25250fcaada4d9cb70eb6713503d453b7aa6e3872166ded8d20e9e7e5dd4` |
| 2 | `theorem` | [Normal.of_isSplittingField](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/declarations/normal-of-issplittingfield--a61909dc330bd10ffbd63eca.md) | 59 | `result-track:a61909dc330bd10ffbd63eca84ff84f434d91fbb5ff7e472d3cef7e9dc9d0f02` |
| 3 | `instance` | [Polynomial.SplittingField.instNormal](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/declarations/polynomial-splittingfield-instnormal--d9fd8fc6a15e656a582e6a4a.md) | 83 | `declaration-track:d9fd8fc6a15e656a582e6a4aa7822b908153e4c7bdf750b27ecf98c601f38f0c` |
| 4 | `instance` | [normal_iSup](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/declarations/normal-isup--459f94648a42d6590b1d92db.md) | 91 | `declaration-track:459f94648a42d6590b1d92db6b20a4214121b6384902d43c86603f96ab31f958` |
| 5 | `theorem` | [splits_of_mem_adjoin](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/declarations/splits-of-mem-adjoin--42b36b3f37e3db9ce4e3bc99.md) | 114 | `result-track:42b36b3f37e3db9ce4e3bc99e358f56f3b6f18602ca023fe8bc9ffef5415f505` |
| 6 | `instance` | [normal_sup](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/declarations/normal-sup--80f214215b4bb234ba4f9d9b.md) | 126 | `declaration-track:80f214215b4bb234ba4f9d9bb34d570a834eaebc05e1e8bc1aeded3c22332dbb` |
| 7 | `instance` | [normal_iInf](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/declarations/normal-iinf--f1f6e04e04cac51bc6f5b0f3.md) | 133 | `declaration-track:f1f6e04e04cac51bc6f5b0f335c059e86b9b1d77cf20086f852f3e91f9f0d176` |
| 8 | `instance` | [normal_inf](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/declarations/normal-inf--a10c1ec5589e7be714f80164.md) | 148 | `declaration-track:a10c1ec5589e7be714f80164cdf0427a43deff6ae02549729fb4078eb9d78da0` |
| 9 | `theorem` | [AlgHom.fieldRange_of_normal](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/declarations/alghom-fieldrange-of-normal--944bbe31b0dff2c6391b1f90.md) | 165 | `result-track:944bbe31b0dff2c6391b1f90d5e48ef3151338b3b8e19f3e6716796d5bc1a49e` |
| 10 | `def` | [AlgHom.liftNormal](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/declarations/alghom-liftnormal--125c0463e60f1de0ec1089c4.md) | 182 | `declaration-track:125c0463e60f1de0ec1089c4f6857fec5fbb7c8ecc622e3f537058b2be3a595f` |
| 11 | `theorem` | [AlgHom.liftNormal_commutes](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/declarations/alghom-liftnormal-commutes--d3585819fdf912af1fd83062.md) | 197 | `result-track:d3585819fdf912af1fd83062e0e66b52d8faf09414749d12a6bcf6049017142b` |
| 12 | `theorem` | [AlgHom.restrict_liftNormal](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/declarations/alghom-restrict-liftnormal--28a9fa1bab63d86e7e43cc2f.md) | 204 | `result-track:28a9fa1bab63d86e7e43cc2f243f09b48a48b7160a1e10209ee83659094cef9c` |
| 13 | `def` | [AlgEquiv.liftNormal](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/declarations/algequiv-liftnormal--89bd32c0a4c80e5461e45485.md) | 212 | `declaration-track:89bd32c0a4c80e5461e4548523182c7d0aab30bb512b3d3c44bdf73dfea5ee21` |
| 14 | `theorem` | [AlgEquiv.liftNormal_commutes](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/declarations/algequiv-liftnormal-commutes--05d76f1117c274d26b6ceeb5.md) | 216 | `result-track:05d76f1117c274d26b6ceeb5faaa6dec4a35def1bad699fa334bed8acbdd73ab` |
| 15 | `theorem` | [AlgEquiv.restrict_liftNormal](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/declarations/algequiv-restrict-liftnormal--0a73dc8987300accaa77a482.md) | 221 | `result-track:0a73dc8987300accaa77a4824a051daa6253e5deff48ea6ed7d3df79942c6cd0` |
| 16 | `theorem` | [AlgEquiv.restrictNormalHom_surjective](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/declarations/algequiv-restrictnormalhom-surjective--7e45c050181123dd07b48c74.md) | 229 | `result-track:7e45c050181123dd07b48c74423b33e5fa81a5ccc9a6a1235475e359d523696b` |
| 17 | `theorem` | [Normal.minpoly_eq_iff_mem_orbit](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/declarations/normal-minpoly-eq-iff-mem-orbit--b3a4b2c0b4a703d8cd2c9ee4.md) | 234 | `result-track:b3a4b2c0b4a703d8cd2c9ee48d16ce3bc6c947a7434b09c4cd0d54d5b3497904` |
| 18 | `theorem` | [isSolvable_of_isScalarTower](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/declarations/issolvable-of-isscalartower--754c859fe0aa324fb3539201.md) | 242 | `result-track:754c859fe0aa324fb35392014a23a8c22fde374e14398f17ba38f21dc5e51e9e` |
| 19 | `theorem` | [exists_algEquiv_of_root](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/declarations/exists-algequiv-of-root--456d3791fc8815ac09f5e61e.md) | 265 | `result-track:456d3791fc8815ac09f5e61eccad9e98e5a0db21ab082fe4b632d55f63836258` |
| 20 | `theorem` | [exists_algEquiv_of_root'](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/declarations/exists-algequiv-of-root--50fbf2a170ab3516f22911ba.md) | 275 | `result-track:50fbf2a170ab3516f22911ba31e9dc5e0970c570a618f080203b6a7353a8d59f` |
| 21 | `instance` | [Algebra.IsQuadraticExtension.normal](../../../../mathematics/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/declarations/algebra-isquadraticextension-normal--4fb9ffeab12769da41ed5d0c.md) | 286 | `declaration-track:4fb9ffeab12769da41ed5d0c70902ce14c66ced6e3f6872cf9cda3adae0e430d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
