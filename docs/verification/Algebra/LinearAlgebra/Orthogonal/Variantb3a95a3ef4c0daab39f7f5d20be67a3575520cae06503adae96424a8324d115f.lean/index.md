# Verification target: GRWTSK.Algebra.LinearAlgebra.Orthogonal.Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1767ed927c2ad3dd40379d94fc1914d41d44ef10",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1767ed927c2ad3dd40379d94fc1914d41d44ef10`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.NonZeroDivisors` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearForm.Properties` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsOrtho](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/isortho--eb0a527639f722e48d74d27a.md) | 49 | `declaration-track:eb0a527639f722e48d74d27a3e373264f5754d917b4839270a518143e30648dc` |
| 2 | `theorem` | [isOrtho_def](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/isortho-def--e6e70f88a4668812ccb14789.md) | 52 | `result-track:e6e70f88a4668812ccb147894e4619b057f11d57f7c7795f5a62cbae8900c534` |
| 3 | `theorem` | [isOrtho_zero_left](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/isortho-zero-left--6603c69a94d8b6c851c84bbd.md) | 55 | `result-track:6603c69a94d8b6c851c84bbd8fec974c854bc7c2a3614b0d3bcf6e14943de165` |
| 4 | `theorem` | [isOrtho_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/isortho-zero-right--45a04983a8930535ee21dcd3.md) | 57 | `result-track:45a04983a8930535ee21dcd3397b3ea26ae119a3c3e1cbdc53ba139087c5cd0d` |
| 5 | `theorem` | [ne_zero_of_not_isOrtho_self](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/ne-zero-of-not-isortho-self--6639064eba0ff6f723c59ab7.md) | 60 | `result-track:6639064eba0ff6f723c59ab7fdf322bc37d3e5ad7224ca78246c7bef2d597c7f` |
| 6 | `theorem` | [IsRefl.ortho_comm](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/isrefl-ortho-comm--cec1a353d7b65f8cc8f1bbdc.md) | 63 | `result-track:cec1a353d7b65f8cc8f1bbdcbb8df74717f699eb729b34e953d7bd4a6a8caed5` |
| 7 | `theorem` | [IsAlt.ortho_comm](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/isalt-ortho-comm--fc5e83dc8e1396aa192f1671.md) | 66 | `result-track:fc5e83dc8e1396aa192f167120bc00c4c8b71c6d6af0713fd992411e27b7d710` |
| 8 | `theorem` | [IsSymm.ortho_comm](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/issymm-ortho-comm--d710db1d01c17d40956a6f35.md) | 69 | `result-track:d710db1d01c17d40956a6f3529e56bd8fd7a8c5de1cd214a01d84ab16d2fa067` |
| 9 | `def` | [iIsOrtho](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/iisortho--06743f06d99850f7061a9126.md) | 75 | `declaration-track:06743f06d99850f7061a9126dbfaf33c13827049a511fb501c3d405fe7a37ad9` |
| 10 | `theorem` | [iIsOrtho_def](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/iisortho-def--b9b0a0cc8dd4443b243726c7.md) | 78 | `result-track:b9b0a0cc8dd4443b243726c7ce1c56b1e615f42b26b957e80a794e9f70af449a` |
| 11 | `theorem` | [isOrtho_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/isortho-smul-left--ddc7f563b51a2896de07ad27.md) | 88 | `result-track:ddc7f563b51a2896de07ad27f373a8646644ee23f8f19abb3d4c0b44169119d7` |
| 12 | `theorem` | [isOrtho_smul_right](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/isortho-smul-right--9d0f99edbbef0bf7a8ed13f5.md) | 96 | `result-track:9d0f99edbbef0bf7a8ed13f5d3e3d88a57755603b86ec27fc3e8c713844e9fbc` |
| 13 | `theorem` | [linearIndependent_of_iIsOrtho](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/linearindependent-of-iisortho--08edd4fc75191005ce6ae1ba.md) | 105 | `result-track:08edd4fc75191005ce6ae1baceba0bc6e11edbf502b90e3b3491e5472899ee80` |
| 14 | `def` | [orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/orthogonal--9c1d6245c5135623a03527c6.md) | 129 | `declaration-track:9c1d6245c5135623a03527c64c1d38086d04fe856570ce4c95c9357ec80a8812` |
| 15 | `theorem` | [mem_orthogonal_iff](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/mem-orthogonal-iff--6caf3143936e2c279b0e63ae.md) | 140 | `result-track:6caf3143936e2c279b0e63ae511ae32719e77d74df141767861d71aee460ce1e` |
| 16 | `lemma` | [orthogonal_bot](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/orthogonal-bot--68bed1cd0e8b872cab7bf84d.md) | 144 | `result-track:68bed1cd0e8b872cab7bf84d9da43391a0f44869ecba793521407128b715c10c` |
| 17 | `theorem` | [orthogonal_le](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/orthogonal-le--41338ea3eaebf16761019750.md) | 146 | `result-track:41338ea3eaebf1676101975062f9dd6c7d0a787c989913f59d5a428e9344a364` |
| 18 | `theorem` | [le_orthogonal_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/le-orthogonal-orthogonal--c04d9682e500c4cda421bf11.md) | 148 | `result-track:c04d9682e500c4cda421bf11d833e1cfa829fc870b6b602c5feb65050000cc22` |
| 19 | `lemma` | [orthogonal_top_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/orthogonal-top-eq-ker--393cbc963b09e1867b87cd07.md) | 151 | `result-track:393cbc963b09e1867b87cd07c98b4a49ccd3688e6066c5c2ca251dd8ba48c6d5` |
| 20 | `lemma` | [orthogonal_top_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/orthogonal-top-eq-bot--00a64e87e86d01df716f4f69.md) | 155 | `result-track:00a64e87e86d01df716f4f69c097b0487e42124ee022c4bc0e502ba9e15382ae` |
| 21 | `theorem` | [span_singleton_inf_orthogonal_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/span-singleton-inf-orthogonal-eq-bot--a8713ae5d18a52a2474ac763.md) | 160 | `result-track:a8713ae5d18a52a2474ac7635db3e45fcfbd2decdbaf5e9388afc2a146a13090` |
| 22 | `theorem` | [orthogonal_span_singleton_eq_toLin_ker](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/orthogonal-span-singleton-eq-tolin-ker--2f432dd40d7e4ed20267f373.md) | 175 | `result-track:2f432dd40d7e4ed20267f3730a6e4429915b8a8bf50d0bb5c99a9658a63d0a3d` |
| 23 | `theorem` | [span_singleton_sup_orthogonal_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/span-singleton-sup-orthogonal-eq-top--bc17d9a6d70c7345e43c9481.md) | 185 | `result-track:bc17d9a6d70c7345e43c94810def6a55bcc0c9c24366e5d82ea2afdee48fa2bf` |
| 24 | `theorem` | [isCompl_span_singleton_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/iscompl-span-singleton-orthogonal--7bbb3b9bfa118c87fb7e0090.md) | 192 | `result-track:7bbb3b9bfa118c87fb7e00900b3d9ef329ce4f332409c32c449e1f4331f05999` |
| 25 | `theorem` | [nondegenerate_restrict_of_disjoint_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/nondegenerate-restrict-of-disjoint-orthogonal--b2830dbd151aee43eb89cfd1.md) | 204 | `result-track:b2830dbd151aee43eb89cfd18ca84d377a8fcf56e27caf1d9ebd5d7d0a67bbb8` |
| 26 | `theorem` | [iIsOrtho.not_isOrtho_basis_self_of_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/iisortho-not-isortho-basis-self-of-nondegenerate--e99d1495294fd5256f738490.md) | 215 | `result-track:e99d1495294fd5256f738490ebf3307348b3cb56305739359cae3e35976d65fc` |
| 27 | `theorem` | [iIsOrtho.nondegenerate_iff_not_isOrtho_basis_self](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/iisortho-nondegenerate-iff-not-isortho-basis-self--b358994527f133437589b2c8.md) | 232 | `result-track:b358994527f133437589b2c802f148d7476470570203539786a864578da3a333` |
| 28 | `theorem` | [toLin_restrict_ker_eq_inf_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/tolin-restrict-ker-eq-inf-orthogonal--cc205429b056d26a3512e86c.md) | 254 | `result-track:cc205429b056d26a3512e86c45631969ffa75f7c129dbfbfdfa297de545307f4` |
| 29 | `theorem` | [toLin_restrict_range_dualCoannihilator_eq_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/tolin-restrict-range-dualcoannihilator-eq-orthogonal--fbc3bd6fc60f151aa0e60ad1.md) | 273 | `result-track:fbc3bd6fc60f151aa0e60ad13f68a25a8806fab1295670bc4879f07f01468aab` |
| 30 | `lemma` | [ker_restrict_eq_of_codisjoint](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/ker-restrict-eq-of-codisjoint--80dfc5bf27bb630dab3c486c.md) | 284 | `result-track:80dfc5bf27bb630dab3c486ce24331d5bb8bd5c52ecebf5e5d18c45cdf40f225` |
| 31 | `lemma` | [inf_orthogonal_self_le_ker_restrict](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/inf-orthogonal-self-le-ker-restrict--128a3c37d0415029888ff39d.md) | 296 | `result-track:128a3c37d0415029888ff39d8251a90f910ff833d2f081bba8f0057d84883f4f` |
| 32 | `theorem` | [finrank_add_finrank_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/finrank-add-finrank-orthogonal--d28bdfe5e4e5dceaa57f8873.md) | 311 | `result-track:d28bdfe5e4e5dceaa57f8873bba7b13015245bb7fc7e1b516b8b0c3f3129fd27` |
| 33 | `lemma` | [finrank_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/finrank-orthogonal--52ac3c26b18f06a20ab35451.md) | 322 | `result-track:52ac3c26b18f06a20ab354517a9ba77ed04adb7ed2ad148dc188db984c3dc7ac` |
| 34 | `lemma` | [orthogonal_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/orthogonal-orthogonal--f2a08f35a4213e06beb047cc.md) | 328 | `result-track:f2a08f35a4213e06beb047cc79ce4caac815b6e0133bdb0a550ced1ddfb4fa72` |
| 35 | `lemma` | [isCompl_orthogonal_iff_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/iscompl-orthogonal-iff-disjoint--9c63d14ee8a62e1d17582fea.md) | 336 | `result-track:9c63d14ee8a62e1d17582fea793960ce6d3af3451e6b49d69d84ba1fd34cebc3` |
| 36 | `theorem` | [isCompl_orthogonal_of_restrict_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/iscompl-orthogonal-of-restrict-nondegenerate--5f281ada83019eb97bdde219.md) | 349 | `result-track:5f281ada83019eb97bdde2198f28dda3681637d222379d73100029ef5466d108` |
| 37 | `theorem` | [restrict_nondegenerate_iff_isCompl_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/restrict-nondegenerate-iff-iscompl-orthogonal--cef62254c32a015ca0bfebb5.md) | 367 | `result-track:cef62254c32a015ca0bfebb5b1d43958db37896b3576c5fd4a482ea58d41cd24` |
| 38 | `lemma` | [orthogonal_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/orthogonal-eq-top-iff--7780cb422d2f7b75755a65bc.md) | 372 | `result-track:7780cb422d2f7b75755a65bcd052d12a05448a82401adf2c3c5a2e3c63bda25c` |
| 39 | `lemma` | [eq_top_of_restrict_nondegenerate_of_orthogonal_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/eq-top-of-restrict-nondegenerate-of-orthogonal-eq-bot--511f7dff1806d44551cf2e2d.md) | 378 | `result-track:511f7dff1806d44551cf2e2d7b30316c56d8a7e703fac3ae6b925cf6a0d337e2` |
| 40 | `lemma` | [orthogonal_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/orthogonal-eq-bot-iff--05cbbe17830a47d3173fe715.md) | 384 | `result-track:05cbbe17830a47d3173fe7154752880b4db3db5fdd2858b663d69f9bbdce275d` |
| 41 | `theorem` | [restrict_nondegenerate_orthogonal_spanSingleton](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/declarations/restrict-nondegenerate-orthogonal-spansingleton--5ffaa2e6821adb29ba30a99a.md) | 401 | `result-track:5ffaa2e6821adb29ba30a99aaa800e8b535fce328ea7de4f0e9eeb1db92e92f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
