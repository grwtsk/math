# Verification target: GRWTSK.Algebra.CommutativeAlgebra.WittPolynomial.Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc2e12d00e106e36f43cc155b8cf3e46dbfc9a68",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc2e12d00e106e36f43cc155b8cf3e46dbfc9a68`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Variables` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.CommRing` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Expand` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/declarations/wittpolynomial--f98b68bcb47c21110a998fcc.md) | 80 | `declaration-track:f98b68bcb47c21110a998fcc8897b390bbdab807838b87ab2dc65a941dc2b07e` |
| 2 | `theorem` | [wittPolynomial_eq_sum_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/declarations/wittpolynomial-eq-sum-c-mul-x-pow--21e18c5bf66b33212621b933.md) | 84 | `result-track:21e18c5bf66b33212621b933f7f9a37133fc9f26a11a441f0f562219bdb1143a` |
| 3 | `theorem` | [map_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/declarations/map-wittpolynomial--cecef5678166af238fe0fa1d.md) | 119 | `result-track:cecef5678166af238fe0fa1dee05e95b768d771b442f79e3a94d76ba6f6e87af` |
| 4 | `theorem` | [constantCoeff_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/declarations/constantcoeff-wittpolynomial--a014c25f35e46336e83115ce.md) | 128 | `result-track:a014c25f35e46336e83115ce179ba0e4f4bd0cc8b7f5a21086462ad7b24d8d1a` |
| 5 | `theorem` | [wittPolynomial_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/declarations/wittpolynomial-zero--a73ac7d08b27043421814983.md) | 139 | `result-track:a73ac7d08b270434218149830ca869f2fba38e9fbc650bb1a00e2064f004a768` |
| 6 | `theorem` | [wittPolynomial_one](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/declarations/wittpolynomial-one--f54039a761babf74c5682d76.md) | 144 | `result-track:f54039a761babf74c5682d7668a7be8a032f6f5a6f8fec0d3f846779a1fab58d` |
| 7 | `theorem` | [aeval_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/declarations/aeval-wittpolynomial--28e1fc0739e077dcb343426d.md) | 149 | `result-track:28e1fc0739e077dcb343426d96189d4d8123b4aa87905defc557d77fa334d364` |
| 8 | `theorem` | [wittPolynomial_zmod_self](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/declarations/wittpolynomial-zmod-self--9e8b5ee3354c3e88e1dd7d0a.md) | 158 | `result-track:9e8b5ee3354c3e88e1dd7d0ad2ce8955d8df5f8c09d1d175a8be4540c96ab814` |
| 9 | `theorem` | [wittPolynomial_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/declarations/wittpolynomial-vars--5bd8da5a7a2e43070529a37d.md) | 174 | `result-track:5bd8da5a7a2e43070529a37d6c5c425f2d5ddf909883cee90aef8c73cb67d057` |
| 10 | `theorem` | [wittPolynomial_vars_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/declarations/wittpolynomial-vars-subset--9ff1cdff23c549710428b066.md) | 188 | `result-track:9ff1cdff23c549710428b0663960d7ce12d4a5e9f9c5991e7980e0b4382d748f` |
| 11 | `def` | [xInTermsOfW](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/declarations/xintermsofw--74314403423721f79f7b3a6d.md) | 209 | `declaration-track:74314403423721f79f7b3a6d4d6ecc3294518a8ec61e93e494a76be804010b9a` |
| 12 | `theorem` | [xInTermsOfW_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/declarations/xintermsofw-eq--1b8373cff654d9fdca66cabe.md) | 216 | `result-track:1b8373cff654d9fdca66cabe2796e6dee079a605b508b7483b093c5c0622ce91` |
| 13 | `theorem` | [constantCoeff_xInTermsOfW](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/declarations/constantcoeff-xintermsofw--049f3b6ff67d4904481bf41e.md) | 224 | `result-track:049f3b6ff67d4904481bf41e30d18bac7bc6ce4775e73c3a7a90dda2219e599a` |
| 14 | `theorem` | [xInTermsOfW_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/declarations/xintermsofw-zero--f988c65afe1f4c4592246115.md) | 245 | `result-track:f988c65afe1f4c45922461154327cf9ae017a98f39d0960864c8722c8c2bcb87` |
| 15 | `theorem` | [xInTermsOfW_vars_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/declarations/xintermsofw-vars-aux--2d8161ca3aad87bc95b0a48c.md) | 254 | `result-track:2d8161ca3aad87bc95b0a48cfbb2ccc86b76531919bb466c34d7c8c996f17cfe` |
| 16 | `theorem` | [xInTermsOfW_vars_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/declarations/xintermsofw-vars-subset--13f6662a2aafb8d48505e03e.md) | 284 | `result-track:13f6662a2aafb8d48505e03e61e1652a9a858101593ab83971554fbd0cea69ba` |
| 17 | `theorem` | [xInTermsOfW_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/declarations/xintermsofw-aux--9a97d7e2412fa934f5131277.md) | 291 | `result-track:9a97d7e2412fa934f5131277aae1e3bab7524255632a1de0555e1260aeedcf40` |
| 18 | `theorem` | [bind₁_xInTermsOfW_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/declarations/bind-xintermsofw-wittpolynomial--223071a58418ce3763725f0c.md) | 300 | `result-track:223071a58418ce3763725f0c0071621b547c6bcc75ffd0ccb5dba8758b22acb1` |
| 19 | `theorem` | [bind₁_wittPolynomial_xInTermsOfW](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/declarations/bind-wittpolynomial-xintermsofw--c4146de5b48c13f3b7ab2c8b.md) | 311 | `result-track:c4146de5b48c13f3b7ab2c8bb6d3d08dcd93933f08d2c1d0220bd9292cf7d842` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
