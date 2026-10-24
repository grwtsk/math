# Verification target: GRWTSK.Algebra.Identities.Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5ad4dcc8c3bd5a07a4a3ab796e6e6c8e4f6daaa",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/index.md) · [Full source](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5ad4dcc8c3bd5a07a4a3ab796e6e6c8e4f6daaa`.

Source path: `GRWTSK/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Frobenius` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Verschiebung` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.MulP` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [frobenius_verschiebung](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/frobenius-verschiebung--beee8440b897293ac5fe9355.md) | 40 | `result-track:beee8440b897293ac5fe935543acdec556c4401c0668e8f5d061541da799218e` |
| 2 | `theorem` | [verschiebung_zmod](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/verschiebung-zmod--b1ee8a1ce9eae62278370f4a.md) | 48 | `result-track:b1ee8a1ce9eae62278370f4aa4a565e6edb27bb3f10dbd746cd15b97dfa77937` |
| 3 | `theorem` | [coeff_p_pow](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/coeff-p-pow--9eb8ca635865811b079796e6.md) | 53 | `result-track:9eb8ca635865811b079796e6a5136ad6fe345f3715003372f1490a390bfa9a7a` |
| 4 | `theorem` | [coeff_p_pow_eq_zero](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/coeff-p-pow-eq-zero--c2e927750efa1f96e6d364f2.md) | 59 | `result-track:c2e927750efa1f96e6d364f2f51cc700aa059d3c1a9127636e85ba3ae97e0f3f` |
| 5 | `theorem` | [coeff_p](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/coeff-p--72d526cc98424e8d0baf85ed.md) | 68 | `result-track:72d526cc98424e8d0baf85ed9ae2780e09903960265baa9b290adf7a12562c3f` |
| 6 | `theorem` | [coeff_p_zero](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/coeff-p-zero--2a09703de230afdfdde043f5.md) | 74 | `result-track:2a09703de230afdfdde043f59ac292a7212b107a2dbaf315b0e20002645f5cf2` |
| 7 | `theorem` | [coeff_p_one](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/coeff-p-one--ca8f04f05f4d84618239b9e2.md) | 79 | `result-track:ca8f04f05f4d84618239b9e234ae6db29a7ea860eed853df4dfbfcf28e57be33` |
| 8 | `theorem` | [p_nonzero](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/p-nonzero--47c9da44f4748ee0e7e14f11.md) | 81 | `result-track:47c9da44f4748ee0e7e14f11f0a9db7b4594f05806db42aa32e91726d265b6a1` |
| 9 | `theorem` | [FractionRing.p_nonzero](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/fractionring-p-nonzero--b3f526e77726ad8565649fce.md) | 85 | `result-track:b3f526e77726ad8565649fceedd009b4d267907b154dd3f723a42540c946a47e` |
| 10 | `theorem` | [verschiebung_mul_frobenius](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/verschiebung-mul-frobenius--76318da3c3bf9d7f623640b5.md) | 92 | `result-track:76318da3c3bf9d7f623640b57e33a1bb8eaff23d17d4916eb917946d70eab927` |
| 11 | `theorem` | [mul_charP_coeff_zero](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/mul-charp-coeff-zero--25bbb91e31738bb335734891.md) | 102 | `result-track:25bbb91e31738bb3357348914eeb8cfba4b7ffe5632e3ec6c56f2d768be1537e` |
| 12 | `theorem` | [mul_charP_coeff_succ](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/mul-charp-coeff-succ--a251df344ab2decd886f77c3.md) | 106 | `result-track:a251df344ab2decd886f77c3f9b53d982b5655f48586b1873c1975c9c1612b55` |
| 13 | `theorem` | [mul_pow_charP_coeff_zero](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/mul-pow-charp-coeff-zero--7e914aacf0ec63f5bbdb167a.md) | 110 | `result-track:7e914aacf0ec63f5bbdb167afafca1b002bc010b432ceb4fa329ab29bb6cccd8` |
| 14 | `theorem` | [mul_pow_charP_coeff_succ](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/mul-pow-charp-coeff-succ--e409057af4b3853011febd5e.md) | 121 | `result-track:e409057af4b3853011febd5ee9a9c5256dd59a0416a61a3138b815db2842fdca` |
| 15 | `theorem` | [verschiebung_frobenius](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/verschiebung-frobenius--dbad03df4dd61c3088be1c51.md) | 129 | `result-track:dbad03df4dd61c3088be1c51ed754b9db04e22b953116c97849d83452cd29669` |
| 16 | `theorem` | [verschiebung_frobenius_comm](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/verschiebung-frobenius-comm--ec6077e75c59384c97b9b2ae.md) | 134 | `result-track:ec6077e75c59384c97b9b2ae8e056c195ab432b3c6ff623dcb843cf9a7d4c374` |
| 17 | `theorem` | [iterate_verschiebung_coeff_eq_zero](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/iterate-verschiebung-coeff-eq-zero--34bf9f708b7d31c63b9a4e0d.md) | 145 | `result-track:34bf9f708b7d31c63b9a4e0dae2e5f09ad38b8d717d8e175972a46f37bf2048f` |
| 18 | `theorem` | [iterate_verschiebung_coeff](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/iterate-verschiebung-coeff--b775c89f73535f4522186ff1.md) | 156 | `result-track:b775c89f73535f4522186ff152025678199a65198d9b5629731cc946f99efba9` |
| 19 | `theorem` | [iterate_verschiebung_mul_left](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/iterate-verschiebung-mul-left--b436bc8bdb5c8a4dcd52a758.md) | 163 | `result-track:b436bc8bdb5c8a4dcd52a758cb36821a714074e2db00aa03a03bfa15f6b59901` |
| 20 | `theorem` | [iterate_verschiebung_mul](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/iterate-verschiebung-mul--48266ff7ae7255b3e39d41f2.md) | 173 | `result-track:48266ff7ae7255b3e39d41f29f483e756fcaa6d029e7c7723d7da5f1ad8a6d39` |
| 21 | `theorem` | [iterate_frobenius_coeff](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/iterate-frobenius-coeff--9ba35d775ae69492bf0f88da.md) | 191 | `result-track:9ba35d775ae69492bf0f88da807f5033174304e96ce648fabc26c598ec4133ce` |
| 22 | `theorem` | [iterate_verschiebung_mul_coeff](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/iterate-verschiebung-mul-coeff--75726e40a5cf66137390408a.md) | 199 | `result-track:75726e40a5cf66137390408a04f1743c7975b6919a652e77203428bd3d4c957d` |
| 23 | `theorem` | [iterate_verschiebung_iterate_frobenius](../../../../mathematics/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/declarations/iterate-verschiebung-iterate-frobenius--eeb6f4aa8b54eba86d8d45e5.md) | 213 | `result-track:eeb6f4aa8b54eba86d8d45e599742c970a13f236862306183ad76954beff0c2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
