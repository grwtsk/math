# Verification target: GRWTSK.Algebra.CommutativeAlgebra.IsSepClosed.Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03c0065f44cc517ece88df6ea876d1768b0d32fd",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03c0065f44cc517ece88df6ea876d1768b0d32fd`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Galois.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSepClosed](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/issepclosed--7fabd10713b36ed9abe8a684.md) | 69 | `declaration-track:7fabd10713b36ed9abe8a684b89bc3dfa0ae7afc12007a961e83a71d7d87d2a2` |
| 2 | `instance` | [IsSepClosed.of_isAlgClosed](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/issepclosed-of-isalgclosed--ecb1a46f444bb1d45293b9c5.md) | 73 | `declaration-track:ecb1a46f444bb1d45293b9c508eb8794d8850af41a1a9d7a6a2396c4c24ded76` |
| 3 | `theorem` | [IsSepClosed.splits_codomain](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/issepclosed-splits-codomain--019b61fd7fbccaff933e717a.md) | 83 | `result-track:019b61fd7fbccaff933e717a8ef894709c3d12ed03dbdf01ec086db6b8e4f77f` |
| 4 | `theorem` | [IsSepClosed.splits_domain](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/issepclosed-splits-domain--08e33507a9f5c5d3eec90ab7.md) | 92 | `result-track:08e33507a9f5c5d3eec90ab72ef21e963dc6f13f71c30415e6d3d75b7ecbe9bb` |
| 5 | `theorem` | [exists_root](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/exists-root--3d52c2f890bee725e1477e4c.md) | 98 | `result-track:3d52c2f890bee725e1477e4cbaf8597b4918f23167f92a58d98ce80d55e2b0ac` |
| 6 | `theorem` | [exists_root_C_mul_X_pow_add_C_mul_X_add_C](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/exists-root-c-mul-x-pow-add-c-mul-x-add-c--f44396efd580af2fd4ba8b26.md) | 104 | `result-track:f44396efd580af2fd4ba8b268189625e9646a0d448fd2e42f9c6dfb483624096` |
| 7 | `theorem` | [exists_root_C_mul_X_pow_add_C_mul_X_add_C'](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/exists-root-c-mul-x-pow-add-c-mul-x-add-c--bbbf40a0f03722bfcdfc13a5.md) | 126 | `result-track:bbbf40a0f03722bfcdfc13a5481ad3ae16710ab1d92b6e49f3f17f6bf859945c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/instance--b9b1e0ce6825f9e3a48ab329.md) | 133 | `declaration-track:b9b1e0ce6825f9e3a48ab32955d6871d046c8f3a218b362e846039a7316d7061` |
| 9 | `theorem` | [exists_pow_nat_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/exists-pow-nat-eq--d67f618d18d2590b9671be6b.md) | 138 | `result-track:d67f618d18d2590b9671be6b9514d497fcb6c2abb9a3e36c022e3b07eac29386` |
| 10 | `theorem` | [exists_eq_mul_self](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/exists-eq-mul-self--7b36499cf220dd6768eef512.md) | 152 | `result-track:7b36499cf220dd6768eef512873c9af89d06e8175bad10dae087a0c8fcafa8b9` |
| 11 | `theorem` | [roots_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/roots-eq-zero-iff--21cf4511da3fb515cf888ea0.md) | 156 | `result-track:21cf4511da3fb515cf888ea0a5e9855ec15f64fdd31e9bae6b5d167681887f90` |
| 12 | `theorem` | [exists_eval₂_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/exists-eval-eq-zero--e71448d9b85c40ddff31f6ac.md) | 165 | `result-track:e71448d9b85c40ddff31f6ac313e3368bd7d363263281efabe63b33515e38d30` |
| 13 | `theorem` | [exists_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/exists-aeval-eq-zero--368822a96c1d5e72988b7735.md) | 174 | `result-track:368822a96c1d5e72988b7735e998464bcc1494ae037dad3632b0ccb83aa267d1` |
| 14 | `theorem` | [of_exists_root](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/of-exists-root--b73093c9c03ff779578c028b.md) | 180 | `result-track:b73093c9c03ff779578c028b2418e0fc66c9a8635670f6d7ae3fbdae3b225fc2` |
| 15 | `theorem` | [degree_eq_one_of_irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/degree-eq-one-of-irreducible--dff89fd1a32e88de94568312.md) | 196 | `result-track:dff89fd1a32e88de94568312d7cb65c98997cbe1adce11f1bb48996acd7b440f` |
| 16 | `theorem` | [algebraMap_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/algebramap-surjective--019a1ccfe254a09b89ef1527.md) | 202 | `result-track:019a1ccfe254a09b89ef1527adb8fd8fbfe8ca50a7765fca9c2afb828fec6ac4` |
| 17 | `theorem` | [IntermediateField.eq_bot_of_isSepClosed_of_isSeparable](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/intermediatefield-eq-bot-of-issepclosed-of-isseparable--1c537d60d4da260394dea97f.md) | 219 | `result-track:1c537d60d4da260394dea97f92da966751b8f446165513e8e6ad90faf4e11611` |
| 18 | `class` | [IsSepClosure](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/issepclosure--78d7833b08306985ad10d072.md) | 227 | `declaration-track:78d7833b08306985ad10d072524bec0db7be5dc288bc6fa20290a205c6f50e98` |
| 19 | `instance` | [IsSepClosure.self_of_isSepClosed](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/issepclosure-self-of-issepclosed--4fefd4a841d52a5cb1c02d99.md) | 232 | `declaration-track:4fefd4a841d52a5cb1c02d993210f54b0dfbfb088c8bf3b000c82b5f12e4f268` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/instance--46e3a512e47ac820f2a34a7f.md) | 237 | `declaration-track:46e3a512e47ac820f2a34a7fe5495140e509af63bc0a3f32a01c213d4171130e` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/instance--3fe6a9d4cf33494371aee256.md) | 244 | `declaration-track:3fe6a9d4cf33494371aee256fd5f3fda2d271dc2b5ae7b8dbcd2273e13a8dbe5` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/instance--8526dd394be2c4649130eeae.md) | 251 | `declaration-track:8526dd394be2c4649130eeae20e09a1bd49c37e40348b6bbbc65ef82e817bcf9` |
| 23 | `theorem` | [isSepClosure_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/issepclosure-iff--e60439d75f9d14e18bf8dbf0.md) | 258 | `result-track:e60439d75f9d14e18bf8dbf03070a62c866840bb987e96c55541060ddbdad3fc` |
| 24 | `instance` | [isSeparable](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/isseparable--fb35f871ea7280d7479c7189.md) | 264 | `declaration-track:fb35f871ea7280d7479c718917786b4f099b16bb5d1d9fa30a10bd0ef9c80088` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/instance--29f08ddd5031ae111069f583.md) | 267 | `declaration-track:29f08ddd5031ae111069f58308a3042e582b889c13863934c7f452835fc07d2c` |
| 26 | `theorem` | [surjective_restrictDomain_of_isSeparable](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/surjective-restrictdomain-of-isseparable--5ba2aaffe6d3b6ff5e204a8f.md) | 280 | `result-track:5ba2aaffe6d3b6ff5e204a8f87fb00f51f3a1c62184b1d920c965f0f22a1ee10` |
| 27 | `def` | [equiv](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/declarations/equiv--ff4dceb9d786e825b1c496a9.md) | 310 | `declaration-track:ff4dceb9d786e825b1c496a996192e3228095f12f3ae0810b74c26a82b131db6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
