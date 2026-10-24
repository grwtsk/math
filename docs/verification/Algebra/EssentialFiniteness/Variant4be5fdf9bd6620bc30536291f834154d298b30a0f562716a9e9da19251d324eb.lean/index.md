# Verification target: GRWTSK.Algebra.EssentialFiniteness.Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de9a8b813eaa714eb7ed203c3f7fcead56b239f5",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/index.md) · [Full source](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de9a8b813eaa714eb7ed203c3f7fcead56b239f5`.

Source path: `GRWTSK/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.FiniteType` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EssFiniteType](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/essfinitetype--1590d18fd92d7721f604da26.md) | 33 | `declaration-track:1590d18fd92d7721f604da267549e220313e6466667b1d91ed0c81f977d99b5a` |
| 2 | `def` | [EssFiniteType.finset](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/essfinitetype-finset--ce7dedb149b7d8c07849db10.md) | 40 | `declaration-track:ce7dedb149b7d8c07849db1055e0c1bf456289f94d6dcf2b5a77a15f962739b7` |
| 3 | `abbrev` | [EssFiniteType.subalgebra](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/essfinitetype-subalgebra--694ca7337b4652ba38e6605f.md) | 45 | `declaration-track:694ca7337b4652ba38e6605f8199de7c81949c7ebaa365dcc702fc3349af7e06` |
| 4 | `lemma` | [EssFiniteType.adjoin_mem_finset](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/essfinitetype-adjoin-mem-finset--f0363221500ffdb4367973c5.md) | 48 | `result-track:f0363221500ffdb4367973c5d144ec67541951bac6daf357d68f08fb661fcab1` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/instance--30402d53d66c2f65af3eed33.md) | 51 | `declaration-track:30402d53d66c2f65af3eed33d050c5abe34ec1907573ae966e7859f2ce1b767b` |
| 6 | `def` | [EssFiniteType.submonoid](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/essfinitetype-submonoid--55c3b51c8aa722fb35dc7580.md) | 58 | `declaration-track:55c3b51c8aa722fb35dc75804b8f4fc9ecaba8e2e2f252dad48e54acc1dcd7f9` |
| 7 | `instance` | [EssFiniteType.isLocalization](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/essfinitetype-islocalization--5492f31c326d617dffa326b6.md) | 61 | `declaration-track:5492f31c326d617dffa326b648262dbeb4dfb5ecebd375660134dd2748a92c2e` |
| 8 | `lemma` | [essFiniteType_cond_iff](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/essfinitetype-cond-iff--366662dbcd1bfabcf4257f89.md) | 65 | `result-track:366662dbcd1bfabcf4257f89c23ea85fdfe048036d322c13fcac341bf0f2ca9f` |
| 9 | `lemma` | [essFiniteType_iff](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/essfinitetype-iff--caae1516bfba55e6347bd987.md) | 81 | `result-track:caae1516bfba55e6347bd987fa83208d04c2171f21aefb78175bba4f45452368` |
| 10 | `instance` | [EssFiniteType.of_finiteType](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/essfinitetype-of-finitetype--ced3a624921c17ec74708410.md) | 88 | `declaration-track:ced3a624921c17ec74708410aceb52eed93520e851fae6655bb334bf77e87edd` |
| 11 | `lemma` | [EssFiniteType.of_isLocalization](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/essfinitetype-of-islocalization--151a42190beb698e38c43bcc.md) | 94 | `result-track:151a42190beb698e38c43bcc589cec9ae7d7d72f561855f33d2c0c4dbe5515d1` |
| 12 | `lemma` | [EssFiniteType.of_id](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/essfinitetype-of-id--a483a0d48cd055558f122b77.md) | 104 | `result-track:a483a0d48cd055558f122b771ca838bfd110f3d624dd265aa6525db454fc812d` |
| 13 | `lemma` | [EssFiniteType.aux](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/essfinitetype-aux--4a9dfb89d525c24d8783babb.md) | 109 | `result-track:4a9dfb89d525c24d8783babb4098b2bf8dad2703233a9cdcf635217cb197c5b6` |
| 14 | `lemma` | [EssFiniteType.comp](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/essfinitetype-comp--9a6b15cef20e8ca562dc40bc.md) | 133 | `result-track:9a6b15cef20e8ca562dc40bc49db0b5b46d16832d3d47e64c408679b69c6d668` |
| 15 | `lemma` | [essFiniteType_iff_exists_subalgebra](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/essfinitetype-iff-exists-subalgebra--689a143d662aaaafbe1cdb50.md) | 154 | `result-track:689a143d662aaaafbe1cdb501b398757ab003d896dbb51343cbed6c4e66cc317` |
| 16 | `instance` | [EssFiniteType.baseChange](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/essfinitetype-basechange--1488c1bdb3b663a249f0b35d.md) | 161 | `declaration-track:1488c1bdb3b663a249f0b35d221a3e15b6f78489bde450606f6edde240e84833` |
| 17 | `lemma` | [EssFiniteType.of_comp](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/essfinitetype-of-comp--e8ee8bfebc2c60e1986fbd22.md) | 193 | `result-track:e8ee8bfebc2c60e1986fbd2275bf67a61031fe0bde5a80b0307e6733198d26ea` |
| 18 | `lemma` | [EssFiniteType.comp_iff](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/essfinitetype-comp-iff--521f49f8c9851e799208d12d.md) | 203 | `result-track:521f49f8c9851e799208d12d116b3e5ed35ca0909d083ee95794996cfddf7593` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/instance--d5b84621fbd1bca68d81b701.md) | 207 | `declaration-track:d5b84621fbd1bca68d81b701fa02e14328308da8b181b728e68ee4fce8979cfd` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/instance--659bd495b54e924bc92a7b61.md) | 210 | `declaration-track:659bd495b54e924bc92a7b6137484078fb0d1999aaa7ec2bf9bc4005ab0ebfed` |
| 21 | `lemma` | [EssFiniteType.algHom_ext](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/essfinitetype-alghom-ext--3b32a5166191b811858f27fd.md) | 217 | `result-track:3b32a5166191b811858f27fdbc5e0dce85c7530d9d788403d196585c67424285` |
| 22 | `def` | [EssFiniteType](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/essfinitetype--2c387f54b2dc580decfe6806.md) | 242 | `declaration-track:2c387f54b2dc580decfe680678c0d6590a404a4d9a036a7898d127f3d3889038` |
| 23 | `def` | [EssFiniteType.finset](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/essfinitetype-finset--2c7ca7c980c2a55867fb1938.md) | 249 | `declaration-track:2c7ca7c980c2a55867fb1938fca0cda76501015771a70a268d22ca0155b67a26` |
| 24 | `lemma` | [FiniteType.essFiniteType](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/finitetype-essfinitetype--4036148fcde7f0262cbe495f.md) | 254 | `result-track:4036148fcde7f0262cbe495f71a01e93188afcb6f8ff7799f9fbb50b551259f4` |
| 25 | `lemma` | [EssFiniteType.ext](../../../../mathematics/Algebra/EssentialFiniteness/Variant4be5fdf9bd6620bc30536291f834154d298b30a0f562716a9e9da19251d324eb.lean/declarations/essfinitetype-ext--3cfbffd36bfca8575462b047.md) | 259 | `result-track:3cfbffd36bfca8575462b047571e94de32d8d1a48f1636dab88f603cfe6f10e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
