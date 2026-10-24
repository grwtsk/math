# Verification target: GRWTSK.Algebra.LinearAlgebra.StdBasis.Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "474327d3552dc04a895a8f4ddb60c6063295832a",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `474327d3552dc04a895a8f4ddb60c6063295832a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.VectorSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [linearIndependent_single](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean/declarations/linearindependent-single--8cf85f7d860b4da53e7b2cd7.md) | 48 | `result-track:8cf85f7d860b4da53e7b2cd7adcb7bc9552f0a7e6914f266aeeb6d1652020c7c` |
| 2 | `theorem` | [linearIndependent_single_one](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean/declarations/linearindependent-single-one--2bbace7bbc61fe85f3f0343c.md) | 53 | `result-track:2bbace7bbc61fe85f3f0343ca2f997b065d87bd86a53b24d7c32456ee325d516` |
| 3 | `lemma` | [linearIndependent_single_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean/declarations/linearindependent-single-of-ne-zero--1b76a33156399a8776dbad08.md) | 59 | `result-track:1b76a33156399a8776dbad08039d989e1dc13a2852397049199700ae9d16e4ce` |
| 4 | `theorem` | [linearIndependent_single_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean/declarations/linearindependent-single-ne-zero--1fdb484ac3b4924b7a8da2d0.md) | 67 | `result-track:1fdb484ac3b4924b7a8da2d0024b4e1cf21bae783cc811d4d00517208c8d974d` |
| 5 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean/declarations/basis--dfa9bc237b7862cbb4ad3eb7.md) | 84 | `declaration-track:dfa9bc237b7862cbb4ad3eb7bcdabd97772fdbb6428163780ffe23f975b1c92f` |
| 6 | `theorem` | [basis_repr_single](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean/declarations/basis-repr-single--7ce38c0fe3dea50affdd3a6d.md) | 91 | `result-track:7ce38c0fe3dea50affdd3a6de1249000029e6bd6071f4b4aa01ce645883deede` |
| 7 | `theorem` | [basis_apply](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean/declarations/basis-apply--414b73b4e917ffe8208e3001.md) | 111 | `result-track:414b73b4e917ffe8208e3001eb2ab6b6e8178b1439d041ac84d4e2b1159e9239` |
| 8 | `theorem` | [basis_repr](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean/declarations/basis-repr--4340569554acfb27a812e961.md) | 116 | `result-track:4340569554acfb27a812e96106c9345cf34295b05eefc29e39a5509abaa595b8` |
| 9 | `def` | [basisFun](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean/declarations/basisfun--d9a864eca5b23c18e5c47e7b.md) | 128 | `declaration-track:d9a864eca5b23c18e5c47e7bee26d89f7ccb855feea80ae9d3026f583d3092c4` |
| 10 | `theorem` | [basisFun_apply](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean/declarations/basisfun-apply--50cb98562f91ea8f171895f6.md) | 132 | `result-track:50cb98562f91ea8f171895f68905eaf91e2e318ffce9acd5845f4cef54182e93` |
| 11 | `theorem` | [basisFun_repr](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean/declarations/basisfun-repr--7567a0537ec81cd11927142e.md) | 137 | `result-track:7567a0537ec81cd11927142ed8b2cb7881c11a97edf1cbdd401db6655b25cbe5` |
| 12 | `theorem` | [basisFun_equivFun](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean/declarations/basisfun-equivfun--f1324a5c133c2bd118601ab9.md) | 140 | `result-track:f1324a5c133c2bd118601ab92c1c8ef32b2aa3ae28087cf11fc65e390919e80e` |
| 13 | `lemma` | [AlgHom.eq_piEvalAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean/declarations/alghom-eq-pievalalghom--a292140a0555dd97e630eac7.md) | 151 | `result-track:a292140a0555dd97e630eac72384f8191d9cd934240fc1d5239e027e292e239d` |
| 14 | `def` | [piEquiv](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean/declarations/piequiv--15fd13c9e529a77fc90379e9.md) | 180 | `declaration-track:15fd13c9e529a77fc90379e936e445d706d4e296d18a6a612fb7258d018120ff` |
| 15 | `lemma` | [piEquiv_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean/declarations/piequiv-apply-apply--af3389760d9923ea404dd3fe.md) | 182 | `result-track:af3389760d9923ea404dd3fe3cdba00128ff7d0e7e84291dd8c58d85045df58f` |
| 16 | `lemma` | [range_piEquiv](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean/declarations/range-piequiv--0cddae851095f8645197f5f0.md) | 188 | `result-track:0cddae851095f8645197f5f0d427799081c26133c4c2debddfb5918b66dd53e8` |
| 17 | `lemma` | [surjective_piEquiv_apply_iff](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean/declarations/surjective-piequiv-apply-iff--ffd193acbaab3644e12e71d3.md) | 192 | `result-track:ffd193acbaab3644e12e71d3d570b8c9ecf27d32c3e6d5ffafb1ca64033fbae0` |
| 18 | `instance` | [_root_.Module.Free.pi](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean/declarations/root-module-free-pi--8673e1aee6cc205204d145fb.md) | 203 | `declaration-track:8673e1aee6cc205204d145fbd9cf929b12ad8b8396db898e1bf27482e8056530` |
| 19 | `instance` | [_root_.Module.Free.function](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.lean/declarations/root-module-free-function--9c1bc292886b9aa01bc22294.md) | 211 | `declaration-track:9c1bc292886b9aa01bc22294efd7955afe4994ff05a83d329dfe87e1b1ca3bbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
