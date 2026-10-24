# Verification target: GRWTSK.Algebra.UniversalAlgebra.PosPart.Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b79ca12e90574069c016172df524b23709e327cf",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b79ca12e90574069c016172df524b23709e327cf`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Notation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instOneLePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/instonelepart--cc91b1c970c9b8d7b9fa6b88.md) | 51 | `declaration-track:cc91b1c970c9b8d7b9fa6b88c765d3fef5d6b4989c9d7412462fc07d4a831adb` |
| 2 | `instance` | [instLeOnePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/instleonepart--cb203a63d17a5ebb1cc5a3fb.md) | 58 | `declaration-track:cb203a63d17a5ebb1cc5a3fb52ed81f9099b973c9f94bd65d790defa1a7de536` |
| 3 | `lemma` | [leOnePart_def](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/leonepart-def--19ea7de77dc2b4beee997a61.md) | 61 | `result-track:19ea7de77dc2b4beee997a611a0a1c8bb401451b0064f991f8a4de5215921292` |
| 4 | `lemma` | [oneLePart_def](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/onelepart-def--06d74bd7795960e2a689cac0.md) | 63 | `result-track:06d74bd7795960e2a689cac0214c9f6fe7f162591b11966f8f796d56f0b3cc07` |
| 5 | `lemma` | [oneLePart_mono](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/onelepart-mono--4f223a458c0e51798a47cb27.md) | 65 | `result-track:4f223a458c0e51798a47cb27a73f9326e40dab8481aa3eddde82ef52e64c85a6` |
| 6 | `lemma` | [oneLePart_one](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/onelepart-one--967021551f27fd45f4b28a4f.md) | 68 | `result-track:967021551f27fd45f4b28a4ffc8a9d10f68afef2b7f23d4709ff7e2aa534843d` |
| 7 | `lemma` | [leOnePart_one](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/leonepart-one--ac18493787a919b8b11c637d.md) | 70 | `result-track:ac18493787a919b8b11c637dbd87b21884cdf9bf396919d5bf9a23f38c10dfbc` |
| 8 | `lemma` | [one_le_oneLePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/one-le-onelepart--923203a2fb2d2de5deb4073e.md) | 72 | `result-track:923203a2fb2d2de5deb4073e20ff4d56e38ed788f739d76f04ff597ebc53fdd3` |
| 9 | `lemma` | [one_le_leOnePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/one-le-leonepart--1f07f279a026827b37712d9b.md) | 74 | `result-track:1f07f279a026827b37712d9baf6142dfb326451e7bb6dc54187a222a5f96d33f` |
| 10 | `lemma` | [le_oneLePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/le-onelepart--daf39f19d454aed0ab9c5e8c.md) | 77 | `result-track:daf39f19d454aed0ab9c5e8c38e589d56dd3f0503ac981d8f8811979c1c719e0` |
| 11 | `lemma` | [inv_le_leOnePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/inv-le-leonepart--db6f128ce9ae6acb60d0c88e.md) | 79 | `result-track:db6f128ce9ae6acb60d0c88ec46bea001d367cdb47e37f68ace5d8b4131a9de4` |
| 12 | `lemma` | [oneLePart_eq_self](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/onelepart-eq-self--f0e829fb0d841ed690ca2617.md) | 81 | `result-track:f0e829fb0d841ed690ca26176834dc292ca5cf158d0311b94ae8a422a47ae919` |
| 13 | `lemma` | [oneLePart_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/onelepart-eq-one--870cbef024c990c3795940fb.md) | 82 | `result-track:870cbef024c990c3795940fb3820bce1893265f6043b48ad027abdee90244ce0` |
| 14 | `lemma` | [leOnePart_eq_inv'](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/leonepart-eq-inv--c30f519a446b123f359706e5.md) | 89 | `result-track:c30f519a446b123f359706e590c69997b8f808820616ffd80ad8209236c914d8` |
| 15 | `lemma` | [leOnePart_eq_one'](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/leonepart-eq-one--cdae9dcaf76537044749fb9c.md) | 93 | `result-track:cdae9dcaf76537044749fb9c123cfabe445ede8f9ed90bb8db71af57a5661b53` |
| 16 | `lemma` | [oneLePart_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/onelepart-le-one--910dfa58daa8835904d51a7b.md) | 95 | `result-track:910dfa58daa8835904d51a7bb5124fc0fd50c1a38794faeababc29dfe45fab66` |
| 17 | `lemma` | [leOnePart_le_one'](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/leonepart-le-one--63d62caeb29a85091efd0026.md) | 99 | `result-track:63d62caeb29a85091efd0026476c28d8185896458242aa189a3e3de036049863` |
| 18 | `lemma` | [leOnePart_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/leonepart-le-one--5d9f05d1a431a2ead38d380a.md) | 101 | `result-track:5d9f05d1a431a2ead38d380afaec29cc1540b2f04d5418d293ec4ced4d637370` |
| 19 | `lemma` | [one_lt_oneLePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/one-lt-onelepart--92a1c5e90dad4dd7c7572b00.md) | 103 | `result-track:92a1c5e90dad4dd7c7572b005df6b082919291d19c9d99db3c3de94299519762` |
| 20 | `lemma` | [oneLePart_inv](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/onelepart-inv--7e8bf5d6ff23a925f61255a9.md) | 106 | `result-track:7e8bf5d6ff23a925f61255a9f224796f19b9504b3b7ea0566c9e87fe3f6efc60` |
| 21 | `lemma` | [leOnePart_inv](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/leonepart-inv--dd42f62336370199940d2856.md) | 108 | `result-track:dd42f62336370199940d28564449052f1c33934c3163cc6db48e1b96ecc923a3` |
| 22 | `lemma` | [leOnePart_eq_inv](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/leonepart-eq-inv--be7d40118826b88a2afdf005.md) | 114 | `result-track:be7d40118826b88a2afdf005e80c65fc65ca2a7bb1c946cfde421bad32b56a4d` |
| 23 | `lemma` | [leOnePart_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/leonepart-eq-one--c7ea998ec097e74b7c7f50a9.md) | 117 | `result-track:c7ea998ec097e74b7c7f50a9b9440ce19cc031ad8b16fbea6239d29208de77aa` |
| 24 | `lemma` | [one_lt_ltOnePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/one-lt-ltonepart--d757fe378abe186e0ede13c3.md) | 122 | `result-track:d757fe378abe186e0ede13c328a6fce04798dbcf6099caf112daa6003130b966` |
| 25 | `lemma` | [oneLePart_div_leOnePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/onelepart-div-leonepart--d650d58e71096b10212144f0.md) | 126 | `result-track:d650d58e71096b10212144f0a0728efc3af68185e11b3cb0f392d749e2435d6e` |
| 26 | `lemma` | [leOnePart_div_oneLePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/leonepart-div-onelepart--152128aaaf261d05f7a388f9.md) | 130 | `result-track:152128aaaf261d05f7a388f90b121c384b7550e69e81dd22dc4d92d667beb493` |
| 27 | `lemma` | [oneLePart_leOnePart_injective](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/onelepart-leonepart-injective--6a9e19995a5ca0b41e10608d.md) | 134 | `result-track:6a9e19995a5ca0b41e10608daee0cb41612dd4bb68f8a883e7eea8edf9362f43` |
| 28 | `lemma` | [oneLePart_leOnePart_inj](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/onelepart-leonepart-inj--d3448f207b6a331831f6c7cc.md) | 140 | `result-track:d3448f207b6a331831f6c7ccc8c78410b871edbd20dc4163dc122c8c8eb477cf` |
| 29 | `lemma` | [leOnePart_anti](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/leonepart-anti--19d10b9ac38d774072626223.md) | 146 | `result-track:19d10b9ac38d7740726262236921fea56a02351781f23f0cd2397914268395a0` |
| 30 | `lemma` | [leOnePart_eq_inv_inf_one](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/leonepart-eq-inv-inf-one--88543360e6252ca094376526.md) | 150 | `result-track:88543360e6252ca09437652688e985657406d5e38e7182d3fff6fa9cf7036131` |
| 31 | `lemma` | [oneLePart_mul_leOnePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/onelepart-mul-leonepart--eb8f3d186f6b557c53bc9d8a.md) | 154 | `result-track:eb8f3d186f6b557c53bc9d8aa939b301137a279382dd98c3121203dd87e4a218` |
| 32 | `lemma` | [leOnePart_mul_oneLePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/leonepart-mul-onelepart--b1dafc2fd71753477588bc15.md) | 159 | `result-track:b1dafc2fd71753477588bc1569af5e3f6ea5535f51f1d13a1fe3378975429a80` |
| 33 | `lemma` | [oneLePart_inf_leOnePart_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/onelepart-inf-leonepart-eq-one--f2830af2349b886fd9add63a.md) | 166 | `result-track:f2830af2349b886fd9add63a499993ed23d6d7367dd7712dd5c76a48292500d6` |
| 34 | `lemma` | [sup_eq_mul_oneLePart_div](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/sup-eq-mul-onelepart-div--350f559143109a493baae725.md) | 180 | `result-track:350f559143109a493baae7255eff9f612b9c132580987c75e6ecdf758a36da46` |
| 35 | `lemma` | [inf_eq_div_oneLePart_div](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/inf-eq-div-onelepart-div--28f8a934ca3954c4bda3547d.md) | 184 | `result-track:28f8a934ca3954c4bda3547de01bd82012846bbacad100dd5a8d87196020a670` |
| 36 | `lemma` | [le_iff_oneLePart_leOnePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/le-iff-onelepart-leonepart--cf80d34ea6e3f510e52eaa3c.md) | 188 | `result-track:cf80d34ea6e3f510e52eaa3c55ca1c6f2f86c48b8bb13e9f71130813f6c56cc5` |
| 37 | `lemma` | [mabs_mul_eq_oneLePart_sq](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/mabs-mul-eq-onelepart-sq--bea925632a4534722c5c0b8c.md) | 194 | `result-track:bea925632a4534722c5c0b8cc61151d8ee3b3c6334feaf6fe0ea1d74372394a9` |
| 38 | `lemma` | [mul_mabs_eq_oneLePart_sq](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/mul-mabs-eq-onelepart-sq--e3d61aaee169eb3b7efde3c6.md) | 198 | `result-track:e3d61aaee169eb3b7efde3c6081a2ae1e61ec872798ba1ed2e3ebed6576d9df2` |
| 39 | `lemma` | [mabs_div_eq_leOnePart_sq](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/mabs-div-eq-leonepart-sq--7be41f888f7bdaf9f8b24557.md) | 202 | `result-track:7be41f888f7bdaf9f8b24557b97359076add6b057dbc729e4b4950ef82d3e74b` |
| 40 | `lemma` | [div_mabs_eq_inv_leOnePart_sq](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/div-mabs-eq-inv-leonepart-sq--19296f64a66c166106f0f097.md) | 206 | `result-track:19296f64a66c166106f0f0973a7d25874f3b972e5c190a697358a80a3f361244` |
| 41 | `lemma` | [oneLePart_eq_ite](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/onelepart-eq-ite--2111e87ceeffcf9a3becbfde.md) | 215 | `result-track:2111e87ceeffcf9a3becbfde97085bd6af4d463d3c5a65486aa078d1e5e7e8ab` |
| 42 | `lemma` | [one_lt_oneLePart_iff](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/one-lt-onelepart-iff--3ce31a596047545da7e63457.md) | 218 | `result-track:3ce31a596047545da7e6345776ffa6d55cd1d3999f0754a41ab589d011dd9e4e` |
| 43 | `lemma` | [oneLePart_of_one_lt_oneLePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/onelepart-of-one-lt-onelepart--855ddd0760f407026a70b300.md) | 222 | `result-track:855ddd0760f407026a70b300a387a5df73a3d99beba3075caffba791af14c797` |
| 44 | `lemma` | [oneLePart_lt](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/onelepart-lt--43d953bb894a54b641cae8f0.md) | 225 | `result-track:43d953bb894a54b641cae8f095c7a4c7f9ed1ddebd4d29055bf85b4b13996ff5` |
| 45 | `lemma` | [leOnePart_eq_ite](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/leonepart-eq-ite--df1945e54ce3783c7296ec28.md) | 230 | `result-track:df1945e54ce3783c7296ec28497f54b9ac55f7285216ec4ff1d4f35f927d9961` |
| 46 | `lemma` | [one_lt_ltOnePart_iff](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/one-lt-ltonepart-iff--bb368df855c84865fba5a5ce.md) | 233 | `result-track:bb368df855c84865fba5a5ceb1e9a45fa98098ac7b8050a8e874df049e7c567c` |
| 47 | `lemma` | [leOnePart_lt](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/leonepart-lt--3807a18021375ff646ad7c28.md) | 238 | `result-track:3807a18021375ff646ad7c28078465f4b9bc0c406f41d401431d3e069f9d5608` |
| 48 | `lemma` | [oneLePart_apply](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/onelepart-apply--301472f1171d5e043441f2dd.md) | 247 | `result-track:301472f1171d5e043441f2ddab0cb86c754f90244ba7feca6e5d6ba1885fe0d2` |
| 49 | `lemma` | [leOnePart_apply](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/leonepart-apply--f001b4e5b37137421dda266f.md) | 248 | `result-track:f001b4e5b37137421dda266ff85cd9d6f97d0b712a3187173fe8bb1bf6fcefe8` |
| 50 | `lemma` | [oneLePart_def](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/onelepart-def--d502f6ed11af8bd65c86deae.md) | 250 | `result-track:d502f6ed11af8bd65c86deaeb6f6658019c7af8d311c6016e754480c291d9942` |
| 51 | `lemma` | [leOnePart_def](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/declarations/leonepart-def--0fd7d46b3cb3e22e46df8bca.md) | 251 | `result-track:0fd7d46b3cb3e22e46df8bcaab40a46f74470feab227e315783161d66213d3bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
