# Verification target: GRWTSK.NumberTheory.Basic.Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d63cf09e4eb2025afc11612d679ad45f2e42854c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d63cf09e4eb2025afc11612d679ad45f2e42854c`.

Source path: `GRWTSK/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FermatLastTheoremWith](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/declarations/fermatlasttheoremwith--39e117bf37de0672318c81b7.md) | 52 | `declaration-track:39e117bf37de0672318c81b7fccbfe3f94030a5eb11106207ad1073677b9ec7f` |
| 2 | `def` | [FermatLastTheoremFor](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/declarations/fermatlasttheoremfor--86a0b3cd4759e5800348a9dd.md) | 56 | `declaration-track:86a0b3cd4759e5800348a9ddbfc12e95442bb1b630a8c8410c246ade86532550` |
| 3 | `def` | [FermatLastTheorem](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/declarations/fermatlasttheorem--1937016b573e66c01712c71c.md) | 64 | `declaration-track:1937016b573e66c01712c71c59523a2a88815d86e5ee7dfb4befd66543c6935d` |
| 4 | `lemma` | [fermatLastTheoremFor_zero](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/declarations/fermatlasttheoremfor-zero--94c80c5f374afa14b3aaf2f9.md) | 66 | `result-track:94c80c5f374afa14b3aaf2f929dde230996913e7621e0d1cf91e5ad6573a88b3` |
| 5 | `lemma` | [not_fermatLastTheoremFor_one](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/declarations/not-fermatlasttheoremfor-one--3563962df1e1ff06e98c9288.md) | 69 | `result-track:3563962df1e1ff06e98c92885517d9ce8a55b6ea273f99971e68f2c3e3c9e252` |
| 6 | `lemma` | [not_fermatLastTheoremFor_two](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/declarations/not-fermatlasttheoremfor-two--ee3f32fa173c1cb1142bde41.md) | 72 | `result-track:ee3f32fa173c1cb1142bde4116e7d7ffb1f0d9bd0f686b57d34c274035f26f30` |
| 7 | `lemma` | [FermatLastTheoremWith.mono](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/declarations/fermatlasttheoremwith-mono--f94f3d16e80200f934738a1d.md) | 77 | `result-track:f94f3d16e80200f934738a1d82a8f8af950351ca5e56901eb3ecefbaecb755d3` |
| 8 | `lemma` | [FermatLastTheoremFor.mono](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/declarations/fermatlasttheoremfor-mono--d20d1f7e7740889651c823a7.md) | 84 | `result-track:d20d1f7e7740889651c823a7c383adf5c33191b3957feda26abde99540c0d8db` |
| 9 | `lemma` | [fermatLastTheoremWith_nat_int_rat_tfae](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/declarations/fermatlasttheoremwith-nat-int-rat-tfae--47ead57ea09c07cb31f63079.md) | 88 | `result-track:47ead57ea09c07cb31f63079503810bd2d31809136be03ce9203914ea4b02a0e` |
| 10 | `lemma` | [fermatLastTheoremFor_iff_nat](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/declarations/fermatlasttheoremfor-iff-nat--564e40a3d40f801b7563cee5.md) | 145 | `result-track:564e40a3d40f801b7563cee5834a2c52531a25c8da88122af8275962b08e3841` |
| 11 | `lemma` | [fermatLastTheoremFor_iff_int](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/declarations/fermatlasttheoremfor-iff-int--fb5b0c9bd49805e7f73acc18.md) | 148 | `result-track:fb5b0c9bd49805e7f73acc1844cd370e4ff4573121fb28374485ce692de42c26` |
| 12 | `lemma` | [fermatLastTheoremFor_iff_rat](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/declarations/fermatlasttheoremfor-iff-rat--13362cf3a9f33548ed691c39.md) | 151 | `result-track:13362cf3a9f33548ed691c39ff01bb7510408e5ff9004274a0d17de201b245ef` |
| 13 | `def` | [FermatLastTheoremWith'](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/declarations/fermatlasttheoremwith--76adb14085e60500cf981a68.md) | 166 | `declaration-track:76adb14085e60500cf981a687add92e5f09cc659e05caf3b308e85d5d0fc0749` |
| 14 | `lemma` | [FermatLastTheoremWith.fermatLastTheoremWith'](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/declarations/fermatlasttheoremwith-fermatlasttheoremwith--08dbe2744c81dc477f556300.md) | 170 | `result-track:08dbe2744c81dc477f55630099155201e1dfe0c7384b4384299c70736c60488d` |
| 15 | `lemma` | [fermatLastTheoremWith'_of_semifield](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/declarations/fermatlasttheoremwith-of-semifield--423f5065c444e1301d77c98a.md) | 174 | `result-track:423f5065c444e1301d77c98a6bd7fb1a093c8eb16dff06985b265a70c58558c7` |
| 16 | `lemma` | [FermatLastTheoremWith'.fermatLastTheoremWith](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/declarations/fermatlasttheoremwith-fermatlasttheoremwith--ab5006dfc8607af2cb959bd9.md) | 180 | `result-track:ab5006dfc8607af2cb959bd9e330871feaa88282dbf385df6cae74d35e502e00` |
| 17 | `lemma` | [fermatLastTheoremWith'_iff_fermatLastTheoremWith](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/declarations/fermatlasttheoremwith-iff-fermatlasttheoremwith--0d004e7d001bbee75e86dd84.md) | 189 | `result-track:0d004e7d001bbee75e86dd84e2321a323dc359ca555ccad13204ce6fade5d40d` |
| 18 | `lemma` | [fermatLastTheoremWith'_nat_int_tfae](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/declarations/fermatlasttheoremwith-nat-int-tfae--8d7a4c2d2a9756cbed198c0f.md) | 194 | `result-track:8d7a4c2d2a9756cbed198c0f31ca791e710a5c6136ecc01e2dfc5eef2aa3ea8e` |
| 19 | `lemma` | [fermatLastTheoremWith_of_fermatLastTheoremWith_coprime](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/declarations/fermatlasttheoremwith-of-fermatlasttheoremwith-coprime--cf4b83013dffe09379657699.md) | 218 | `result-track:cf4b83013dffe09379657699b3086df9073ed55787b75c755f710ecc1cfcd4e9` |
| 20 | `lemma` | [dvd_c_of_prime_of_dvd_a_of_dvd_b_of_FLT](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/declarations/dvd-c-of-prime-of-dvd-a-of-dvd-b-of-flt--6fe2342608ee27052097dfce.md) | 236 | `result-track:6fe2342608ee27052097dfce870b0111e6d5e41b5ff6f06d85f6c8cb3c2c1591` |
| 21 | `lemma` | [isCoprime_of_gcd_eq_one_of_FLT](../../../../mathematics/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/declarations/iscoprime-of-gcd-eq-one-of-flt--ec609f0155b3098e994c6b1a.md) | 244 | `result-track:ec609f0155b3098e994c6b1a49db5dec30c1955447c4b378e1cd8779195a1a24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
