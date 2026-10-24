# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Coeff.Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "975ed8973f579e0f1cd7990918f2db5d52954b6f",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `975ed8973f579e0f1cd7990918f2db5d52954b6f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Expand` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Laurent` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.SMul` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Reindex` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Nilpotent` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [charmatrix_apply_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/charmatrix-apply-natdegree--097aff28f6f10a30ced6d365.md) | 54 | `result-track:097aff28f6f10a30ced6d365ee1b87e34294663fda98cf43253b270838a008f4` |
| 2 | `theorem` | [charmatrix_apply_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/charmatrix-apply-natdegree-le--5d4e6089f04f0cb8201edfc6.md) | 58 | `result-track:5d4e6089f04f0cb8201edfc6724076d1c4552d110cafaee1138ccade602dd21a` |
| 3 | `theorem` | [charpoly_sub_diagonal_degree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/charpoly-sub-diagonal-degree-lt--3837646d47514fa6cb637137.md) | 64 | `result-track:3837646d47514fa6cb637137e9c69f657c726ac22804176862a2f1b7162d9c06` |
| 4 | `theorem` | [charpoly_coeff_eq_prod_coeff_of_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/charpoly-coeff-eq-prod-coeff-of-le--69654cfcf80686d45baaac46.md) | 83 | `result-track:69654cfcf80686d45baaac467a3d95b272ca9926f6f228d55f012c5166e880f3` |
| 5 | `theorem` | [det_of_card_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/det-of-card-zero--3b79e93d8249bd774594477f.md) | 90 | `result-track:3b79e93d8249bd774594477fbdf80889ff1f334b00514bff5b5dcbb3ef8a89bc` |
| 6 | `theorem` | [charpoly_degree_eq_dim](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/charpoly-degree-eq-dim--0b58c59d3c99c943c388eae3.md) | 96 | `result-track:0b58c59d3c99c943c388eae31fdc2663b6b308224cee00658845b6586e0485fc` |
| 7 | `theorem` | [charpoly_natDegree_eq_dim](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/charpoly-natdegree-eq-dim--ecf324c432f3be86f5c30015.md) | 121 | `result-track:ecf324c432f3be86f5c30015de83bd7c6cea49eb803b7d47f4815b520c018106` |
| 8 | `theorem` | [charpoly_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/charpoly-monic--db3aa258ff5bc7de49985837.md) | 125 | `result-track:db3aa258ff5bc7de4998583749a701253827f88698d03e9055d9cba558f5d3f7` |
| 9 | `theorem` | [trace_eq_neg_charpoly_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/trace-eq-neg-charpoly-coeff--261698449811f8a03ebddd7b.md) | 146 | `result-track:261698449811f8a03ebddd7b5849c5de473ee9b4c790921311015b7f175a8a45` |
| 10 | `theorem` | [matPolyEquiv_symm_map_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/matpolyequiv-symm-map-eval--facac85e196b1768fab4ee83.md) | 152 | `result-track:facac85e196b1768fab4ee839123227bcfa696ceeed3ee3b775e3b50d04e9fa7` |
| 11 | `theorem` | [matPolyEquiv_eval_eq_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/matpolyequiv-eval-eq-map--3a6a1f5e9b5d24ef4004f77b.md) | 163 | `result-track:3a6a1f5e9b5d24ef4004f77b62f8576b80a2a61d4116d4f7ba571da8176780d4` |
| 12 | `theorem` | [matPolyEquiv_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/matpolyequiv-eval--04a0c0cfade84b0140a9ebe2.md) | 168 | `result-track:04a0c0cfade84b0140a9ebe2e53d9a84b7612c97b272ced3be4429c3fff7f72c` |
| 13 | `theorem` | [eval_det](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/eval-det--a5ab3b3a686b1fa05c9d32ab.md) | 172 | `result-track:a5ab3b3a686b1fa05c9d32ab45d6b5deb93ad0d7ceca7c5028ef242fda1e1a93` |
| 14 | `theorem` | [det_eq_sign_charpoly_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/det-eq-sign-charpoly-coeff--e692609f3ea1db449470918a.md) | 180 | `result-track:e692609f3ea1db449470918a23d4afd3f241222d357dc3080841c8395ab330a6` |
| 15 | `lemma` | [eval_det_add_X_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/eval-det-add-x-smul--42e21bb245b477acd718055f.md) | 185 | `result-track:42e21bb245b477acd718055f1f8eaef042ee57b2f9c40d793428ce32f9c96cee` |
| 16 | `lemma` | [derivative_det_one_add_X_smul_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/derivative-det-one-add-x-smul-aux--fb20abc95a7fc5d6464b9d79.md) | 191 | `result-track:fb20abc95a7fc5d6464b9d794b149c36227ce474f26b9a3e1b004724b81609bf` |
| 17 | `lemma` | [derivative_det_one_add_X_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/derivative-det-one-add-x-smul--5260c27bcc2d2ff0b2b2d581.md) | 218 | `result-track:5260c27bcc2d2ff0b2b2d5811a7e198bac7f84d1d644a6072c3b76f80484ee9e` |
| 18 | `lemma` | [coeff_det_one_add_X_smul_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/coeff-det-one-add-x-smul-one--cd98f4aa04cd772cfde28c7f.md) | 228 | `result-track:cd98f4aa04cd772cfde28c7f0ea4bae561d92c1c913c353ccc0783e09567e621` |
| 19 | `lemma` | [det_one_add_X_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/det-one-add-x-smul--37a902e91b5f95dca32416d3.md) | 233 | `result-track:37a902e91b5f95dca32416d3eb2bc684cd278a2d78aef5f78bf1304815e9eac6` |
| 20 | `lemma` | [det_one_add_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/det-one-add-smul--c871fc989e9b1e59317510e0.md) | 243 | `result-track:c871fc989e9b1e59317510e02d0fa1112615616fc6f5507f4e3b69f63f1201f8` |
| 21 | `theorem` | [matPolyEquiv_eq_X_pow_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/matpolyequiv-eq-x-pow-sub-c--0218ce7c46a31c395eff00a6.md) | 252 | `result-track:0218ce7c46a31c395eff00a63f12d3f6a4006b40b552198121abf94b260fd926` |
| 22 | `theorem` | [aeval_eq_aeval_mod_charpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/aeval-eq-aeval-mod-charpoly--61c2a72b4d8206e848cc8a9e.md) | 268 | `result-track:61c2a72b4d8206e848cc8a9e633ae9bf5e313c3e064c3b4d922b87d38ab5a8cd` |
| 23 | `theorem` | [pow_eq_aeval_mod_charpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/pow-eq-aeval-mod-charpoly--11455729747a65f600cb71ed.md) | 275 | `result-track:11455729747a65f600cb71ed7dd625698a116b5785c5fdfe46faa1422056f6fe` |
| 24 | `theorem` | [coeff_charpoly_mem_ideal_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/coeff-charpoly-mem-ideal-pow--7ce4fe841c694bf66f3aac96.md) | 280 | `result-track:7ce4fe841c694bf66f3aac96544404850b1b8eea5c606f8f283459b1934ac778` |
| 25 | `def` | [charpolyRev](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/charpolyrev--2358178b20f3c784a4d6f6f7.md) | 308 | `declaration-track:2358178b20f3c784a4d6f6f75d31b309a699234959d563c3515ca073e7660d91` |
| 26 | `lemma` | [reverse_charpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/reverse-charpoly--23496617f59f0e361aa30d5e.md) | 310 | `result-track:23496617f59f0e361aa30d5e5df5429a9b49b0a0953bc6ede96d48c593bd39a2` |
| 27 | `lemma` | [eval_charpolyRev](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/eval-charpolyrev--c4564406dacd02f590b03f13.md) | 332 | `result-track:c4564406dacd02f590b03f13af03d223d3bfa922f2da9c56a0058d2102091636` |
| 28 | `lemma` | [coeff_charpolyRev_eq_neg_trace](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/coeff-charpolyrev-eq-neg-trace--2d134d8a7e9715cb7806f55f.md) | 339 | `result-track:2d134d8a7e9715cb7806f55fe10ddcf9dfbe4953467111a74aa402c40e88eb45` |
| 29 | `lemma` | [isUnit_charpolyRev_of_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/isunit-charpolyrev-of-isnilpotent--2e054aecda3abb2cf6c65737.md) | 346 | `result-track:2e054aecda3abb2cf6c657371505de85da3ccddbff5e3ce4acd6bd11df3280df` |
| 30 | `lemma` | [isNilpotent_trace_of_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/isnilpotent-trace-of-isnilpotent--a674a45d5f0dd7e296716911.md) | 356 | `result-track:a674a45d5f0dd7e296716911573ba005cd3d8a9bf72fa34ab67d6fbc3c472a4e` |
| 31 | `lemma` | [isNilpotent_charpoly_sub_pow_of_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant278f51197e72c856a8ccbbdc96a3c73a2bda0fc5941e8a51846e7aea22c07e62.lean/declarations/isnilpotent-charpoly-sub-pow-of-isnilpotent--f49ca7e18d8a75a76dbfef12.md) | 364 | `result-track:f49ca7e18d8a75a76dbfef1265c021fa7d7ec0fc7e627af4e6b4ba47daa783d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
