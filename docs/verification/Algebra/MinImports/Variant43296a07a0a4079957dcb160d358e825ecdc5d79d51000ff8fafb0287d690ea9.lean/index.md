# Verification target: GRWTSK.Algebra.MinImports.Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c45e8d193cc103cda79cb23eae812b8e92a8a75",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/index.md) · [Full source](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c45e8d193cc103cda79cb23eae812b8e92a8a75`.

Source path: `GRWTSK/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp.Attr` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [XX.YY](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/xx-yy--eb65a7afb2907fd0db705f8d.md) | 31 | `result-track:eb65a7afb2907fd0db705f8dd655c832ed0edc69216e494935d06b64ebe19942` |
| 2 | `def` | [xxx](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/xxx--39db51e4ec04f8b60807a9df.md) | 37 | `declaration-track:39db51e4ec04f8b60807a9dfb5aade2af46aa9c4ab7baaa5684d95f0f37dfd3a` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/instance--9ffb187c2e1c4a7cc8321d60.md) | 44 | `declaration-track:9ffb187c2e1c4a7cc8321d60a1692cc8696877a2e84a46fa0101a79a4a84bbb6` |
| 4 | `instance` | [withName](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/withname--34ede671cd6281853eafbf06.md) | 49 | `declaration-track:34ede671cd6281853eafbf06cebd0f7db31bdd651fa98c69eb03163cf4ecee07` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/instance--0df9387045cad4f6a0c9ba7a.md) | 54 | `declaration-track:0df9387045cad4f6a0c9ba7a6db898a0c10780a83ebe2d3fd3a7d588443e283b` |
| 6 | `lemma` | [uses_norm_num](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/uses-norm-num--bddfef2e8dc720ba580c9479.md) | 80 | `result-track:bddfef2e8dc720ba580c94790482b797931a3dd81a6e36ff6644ec6bb2635615` |
| 7 | `lemma` | [hi](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/hi--0cbb2b78708fb9a3f019d8c4.md) | 95 | `result-track:0cbb2b78708fb9a3f019d8c4566036c579f52435ceef02b467d5a37bd3c87e2c` |
| 8 | `def` | [confusableName](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/confusablename--6790b222b0b3f2db9c014fe5.md) | 102 | `declaration-track:6790b222b0b3f2db9c014fe5d1ba56eab413fb608afb774dc8d0e845558f66de` |
| 9 | `def` | [confusableName](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/confusablename--1cc7b761743f852597df7a5c.md) | 118 | `declaration-track:1cc7b761743f852597df7a5c6cdc5b74bc7f21fc3782af003713719fbd143cda` |
| 10 | `theorem` | [propose_to_move_this_theorem](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/propose-to-move-this-theorem--052aba8ec06da2abc8c43367.md) | 200 | `result-track:052aba8ec06da2abc8c43367fa6edea4250e2045e75459c1e1b94440f305bbaa` |
| 11 | `def` | [dont_propose_to_move_this_def](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/dont-propose-to-move-this-def--9c38994c7c0e7d20a3e3e728.md) | 203 | `declaration-track:9c38994c7c0e7d20a3e3e728bd156f3d28d12790b11b29f00cb0fe44bb0dd483` |
| 12 | `def` | [propose_to_move_this_def](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/propose-to-move-this-def--ece58006c1f9bb5558e2fa53.md) | 211 | `declaration-track:ece58006c1f9bb5558e2fa53be63838ad69aca8ad0f89dfb1bf5549661629831` |
| 13 | `theorem` | [theorem_with_local_def](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/theorem-with-local-def--2622f42725aa6bbe7d3a3265.md) | 215 | `result-track:2622f42725aa6bbe7d3a3265427c4ccfc335b9ade05928169597cfd43a467e71` |
| 14 | `theorem` | [theorem_with_multiple_dependencies](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/theorem-with-multiple-dependencies--8b902c24cf3b23ea1e515cd8.md) | 219 | `result-track:8b902c24cf3b23ea1e515cd8ac1f171932f9a0e842a1633892a7832ca7594c66` |
| 15 | `theorem` | [private_theorem](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/private-theorem--b8ab312324ba642052a59395.md) | 225 | `result-track:b8ab312324ba642052a593958d4887dcdc266bdf0a39daa10b0071c04d527929` |
| 16 | `theorem` | [propose_to_move_this_private_theorem](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/propose-to-move-this-private-theorem--eb104fc801e16ca8e058ecbf.md) | 234 | `result-track:eb104fc801e16ca8e058ecbf11a6a3998ac5d1a672c772195457acad42988660` |
| 17 | `def` | [private_def](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/private-def--f6d0bc4b394a43630cc71077.md) | 238 | `declaration-track:f6d0bc4b394a43630cc7107755007e5f0e2a512c84bad26fc42a14e848a33bc9` |
| 18 | `def` | [propose_to_move_this_private_def](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/propose-to-move-this-private-def--e2875b93a48759fdb9d19c75.md) | 248 | `declaration-track:e2875b93a48759fdb9d19c75b48fcf342ba1623cfdfd6f508783a6cd6436dea2` |
| 19 | `structure` | [DontProposeToMoveThisStructure](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/dontproposetomovethisstructure--8e7e4560150b37bc58baf60b.md) | 253 | `declaration-track:8e7e4560150b37bc58baf60bcdc34de6eb5b85e23d92051baf430234009f1a62` |
| 20 | `inductive` | [DontProposeToMoveThisInductive](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/dontproposetomovethisinductive--b1b5450d65d5ed419dd870cb.md) | 256 | `declaration-track:b1b5450d65d5ed419dd870cb207dac52e0d387b43c824fdfd9dc4daaef003af4` |
| 21 | `structure` | [ProposeToMoveThisStructure](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/proposetomovethisstructure--cd26c5a735ee43513a024903.md) | 268 | `declaration-track:cd26c5a735ee43513a024903bd3602201808779636ea0ba23058646404b19a66` |
| 22 | `inductive` | [ProposeToMoveThisInductive](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/proposetomovethisinductive--085afac2c418a817c09ac1be.md) | 276 | `declaration-track:085afac2c418a817c09ac1bebf528eb606ed2120ebc3b4b03a7932b99c7c2b0a` |
| 23 | `theorem` | [theorem_with_local_inductive](../../../../mathematics/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/declarations/theorem-with-local-inductive--f87615659c91228ea3508236.md) | 282 | `result-track:f87615659c91228ea3508236f8d2f27fd8c0519ac1582527d37c55838e5b0500` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
