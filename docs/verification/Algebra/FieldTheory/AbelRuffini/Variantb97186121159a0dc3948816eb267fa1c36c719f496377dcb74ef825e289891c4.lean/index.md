# Verification target: GRWTSK.Algebra.FieldTheory.AbelRuffini.Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b65354dbaca5d875f8808c5726d1d8310dff4eab",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b65354dbaca5d875f8808c5726d1d8310dff4eab`.

Source path: `GRWTSK/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Solvable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PolynomialGaloisGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gal_zero_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/gal-zero-issolvable--08985301837ab3105adeb07d.md) | 34 | `result-track:08985301837ab3105adeb07d61e419c5e0df4775be6aa2a9118b00bc5bf04be0` |
| 2 | `theorem` | [gal_one_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/gal-one-issolvable--8b0f2f3b5883da7735c1cd1f.md) | 36 | `result-track:8b0f2f3b5883da7735c1cd1fdae1b30874cc93cf5b7b7105a99817c06555741d` |
| 3 | `theorem` | [gal_C_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/gal-c-issolvable--01a60d342e65941986530e26.md) | 38 | `result-track:01a60d342e65941986530e263cb53c420fb97e09e8b09edc498f327943742507` |
| 4 | `theorem` | [gal_X_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/gal-x-issolvable--64e8a8aee41a82901bb1a1ca.md) | 40 | `result-track:64e8a8aee41a82901bb1a1caf8365f112d493c69ff6fe605f2617bbbf91936d5` |
| 5 | `theorem` | [gal_X_sub_C_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/gal-x-sub-c-issolvable--fb870ecd37a4d8cbb9b216e5.md) | 42 | `result-track:fb870ecd37a4d8cbb9b216e595bbc278a20e1e5da5490e22f3b26ac7c828b2c3` |
| 6 | `theorem` | [gal_X_pow_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/gal-x-pow-issolvable--82681186a22bcaefae170be1.md) | 44 | `result-track:82681186a22bcaefae170be12a4e80f2ae4bf9ee26e669b743633e22abc8b37e` |
| 7 | `theorem` | [gal_mul_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/gal-mul-issolvable--baf6ef32c19d74e7ac984ae3.md) | 46 | `result-track:baf6ef32c19d74e7ac984ae3a808f5eb0894617a84e78be305bc6accf59482a6` |
| 8 | `theorem` | [gal_prod_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/gal-prod-issolvable--9ed8c2b1a072ed5c1337b599.md) | 50 | `result-track:9ed8c2b1a072ed5c1337b59912b003bab8c78045602f5d4ca6165482324a629d` |
| 9 | `theorem` | [gal_isSolvable_of_splits](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/gal-issolvable-of-splits--c84f2629b74e1a59cdd86c6a.md) | 58 | `result-track:c84f2629b74e1a59cdd86c6aa7444c800bf7c38bc521efec69d08aca112f9521` |
| 10 | `theorem` | [gal_isSolvable_tower](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/gal-issolvable-tower--ae277c182b12f69c18a624c2.md) | 64 | `result-track:ae277c182b12f69c18a624c28c84c027d6787d0ef3604f42e9105db23117c0fb` |
| 11 | `theorem` | [gal_X_pow_sub_one_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/gal-x-pow-sub-one-issolvable--93ae13bdb802a40dc7a9795e.md) | 79 | `result-track:93ae13bdb802a40dc7a9795eaf59b2b9fd1eb1b2c641a96d5215e1acea81f75e` |
| 12 | `theorem` | [gal_X_pow_sub_C_isSolvable_aux](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/gal-x-pow-sub-c-issolvable-aux--dee8efc6eb14ca77188f1d76.md) | 97 | `result-track:dee8efc6eb14ca77188f1d76b1ac5bda054f7e9205ba4cb76942a0e7e52e4a67` |
| 13 | `theorem` | [splits_X_pow_sub_one_of_X_pow_sub_C](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/splits-x-pow-sub-one-of-x-pow-sub-c--63f68f78b06c5af7b436644c.md) | 134 | `result-track:63f68f78b06c5af7b436644c0015ae4f6e0618dbbcb8f5324b418644e54e8abb` |
| 14 | `theorem` | [gal_X_pow_sub_C_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/gal-x-pow-sub-c-issolvable--df70acecb6e236f902a48b57.md) | 172 | `result-track:df70acecb6e236f902a48b575b5483e636f8c207bd1c9144c2cb9613193ec70f` |
| 15 | `inductive` | [IsSolvableByRad](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/issolvablebyrad--45f0cac6df456887381a83df.md) | 190 | `declaration-track:45f0cac6df456887381a83df31fcd4001d23245b28da9b74c298dc6a40469d69` |
| 16 | `def` | [solvableByRad](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/solvablebyrad--7e26707e2652a0b5296d5f0f.md) | 201 | `declaration-track:7e26707e2652a0b5296d5f0f25b22330b64827001eb324b6aa832be35f976229` |
| 17 | `theorem` | [induction](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/induction--f49a9239957a0aad4b63343f.md) | 218 | `result-track:f49a9239957a0aad4b63343f7c98d13f094044c2ebeb482e87c4983a3a85e8f8` |
| 18 | `theorem` | [isIntegral](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/isintegral--e9683acfa4c7d7450a738134.md) | 252 | `result-track:e9683acfa4c7d7450a738134b589d22fd0bafbe668a66cee35a62bbbc2ebe188` |
| 19 | `def` | [P](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/p--72bacf527c7fe1baf61ae7d9.md) | 269 | `declaration-track:72bacf527c7fe1baf61ae7d934d1a59b3a8647267c8464cd7b5d20b46bef27ad` |
| 20 | `theorem` | [induction3](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/induction3--672e0dcaf5fe10034458d481.md) | 273 | `result-track:672e0dcaf5fe10034458d48128ad9fb7cda05e704c2c0a4ca7e3c9526032a5b1` |
| 21 | `theorem` | [induction2](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/induction2--2ba4eb3e5feb8c6ab3750322.md) | 301 | `result-track:2ba4eb3e5feb8c6ab3750322cc1227bad465b844066c972241b8b14b1fb0e3a4` |
| 22 | `theorem` | [induction1](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/induction1--90cd74c2e5ec84c3a4c2501c.md) | 331 | `result-track:90cd74c2e5ec84c3a4c2501cffc14192c33797ce9c90d9b5bcfcb38602fe914c` |
| 23 | `theorem` | [isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/issolvable--09d773eaae1355f81a743607.md) | 334 | `result-track:09d773eaae1355f81a7436072cafa6ff1033d211d2f8c6287f29def3b04cfc0d` |
| 24 | `theorem` | [isSolvable'](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variantb97186121159a0dc3948816eb267fa1c36c719f496377dcb74ef825e289891c4.lean/declarations/issolvable--5129c185b32fe1ea517df5f1.md) | 348 | `result-track:5129c185b32fe1ea517df5f1c38cd8c1cc4c9630ab8b5bb38041b61804412c79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
