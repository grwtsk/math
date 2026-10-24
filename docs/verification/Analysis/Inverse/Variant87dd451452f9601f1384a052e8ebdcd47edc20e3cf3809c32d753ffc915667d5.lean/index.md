# Verification target: GRWTSK.Analysis.Inverse.Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7b66d12286c6bf8da26e3d2d443224f465865bc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/index.md) · [Full source](../../../../mathematics/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7b66d12286c6bf8da26e3d2d443224f465865bc`.

Source path: `GRWTSK/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Composition` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftInv](../../../../mathematics/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/declarations/leftinv--19db6851bca87570f7c3e12a.md) | 65 | `declaration-track:19db6851bca87570f7c3e12a09c15602ecca1d2b277381509ff27ae16479f3a9` |
| 2 | `theorem` | [leftInv_coeff_zero](../../../../mathematics/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/declarations/leftinv-coeff-zero--20bc615564bd524af27727a9.md) | 77 | `result-track:20bc615564bd524af27727a958294167ef1d7244e292bcad53b8093c43cd9daa` |
| 3 | `theorem` | [leftInv_coeff_one](../../../../mathematics/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/declarations/leftinv-coeff-one--fa0fb872566cbe351c22f69a.md) | 82 | `result-track:fa0fb872566cbe351c22f69aae44a3e24d8d90342cdf8ae8e1d28a29db186c94` |
| 4 | `theorem` | [leftInv_removeZero](../../../../mathematics/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/declarations/leftinv-removezero--98961b4813bfa2c6f4b113bc.md) | 88 | `result-track:98961b4813bfa2c6f4b113bcd79641f5a013ba7f695d0ebf122c90ac4464600c` |
| 5 | `theorem` | [leftInv_comp](../../../../mathematics/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/declarations/leftinv-comp--ec065721d5651260d23f382f.md) | 106 | `result-track:ec065721d5651260d23f382f9e5891e76e291d89535e145f01633fc73f4fabcb` |
| 6 | `def` | [rightInv](../../../../mathematics/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/declarations/rightinv--3a287f5cb5cd8c3f95dc8100.md) | 176 | `declaration-track:3a287f5cb5cd8c3f95dc8100cab2fef1833f8a62f61e5d1679edf4bfb285d4a2` |
| 7 | `theorem` | [rightInv_coeff_zero](../../../../mathematics/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/declarations/rightinv-coeff-zero--3fbf8e1560d2c468574ecb5c.md) | 186 | `result-track:3fbf8e1560d2c468574ecb5c6195d0b86097884a8b6acc88f887ce378fc068f5` |
| 8 | `theorem` | [rightInv_coeff_one](../../../../mathematics/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/declarations/rightinv-coeff-one--b1c1f3ed20cdef74f8dc0096.md) | 191 | `result-track:b1c1f3ed20cdef74f8dc0096f91f1c559d4f69e30ea5d2c85e4d743635a20ddd` |
| 9 | `theorem` | [rightInv_removeZero](../../../../mathematics/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/declarations/rightinv-removezero--1e755b1a052cccd61f47741a.md) | 197 | `result-track:1e755b1a052cccd61f47741a30cddce6c4841cda533824bac0e2958587d60089` |
| 10 | `theorem` | [comp_rightInv_aux1](../../../../mathematics/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/declarations/comp-rightinv-aux1--d0e61ec196d721b0933192ed.md) | 211 | `result-track:d0e61ec196d721b0933192ed522780767e995ea2b598268b62389ad37f986664` |
| 11 | `theorem` | [comp_rightInv_aux2](../../../../mathematics/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/declarations/comp-rightinv-aux2--9b595fc92d2f1d2622c410d4.md) | 240 | `result-track:9b595fc92d2f1d2622c410d4d06ca5af8a6958b7a712164d799d36500155fd13` |
| 12 | `theorem` | [comp_rightInv](../../../../mathematics/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/declarations/comp-rightinv--79a28fdb8860c7c558c554af.md) | 257 | `result-track:79a28fdb8860c7c558c554af6208f76ad0472eced22e1392542b31571c7b1e7e` |
| 13 | `theorem` | [rightInv_coeff](../../../../mathematics/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/declarations/rightinv-coeff--97aea48c0fb1b8b0a6043025.md) | 274 | `result-track:97aea48c0fb1b8b0a604302523d135bc9e56bf45c42f204425aef0286e6fe59b` |
| 14 | `theorem` | [leftInv_eq_rightInv_aux](../../../../mathematics/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/declarations/leftinv-eq-rightinv-aux--6d4046f5a19e4d9dbb5fac21.md) | 294 | `result-track:6d4046f5a19e4d9dbb5fac218ed2eb106f73008eb8344276213d944ae7f82d7a` |
| 15 | `theorem` | [leftInv_eq_rightInv](../../../../mathematics/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/declarations/leftinv-eq-rightinv--3ceec84ca0afd161c63bea2e.md) | 307 | `result-track:3ceec84ca0afd161c63bea2e5f5b73d3dddc4906b68ca2bf0a07a71a8b171b5b` |
| 16 | `theorem` | [radius_right_inv_pos_of_radius_pos_aux1](../../../../mathematics/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/declarations/radius-right-inv-pos-of-radius-pos-aux1--0d4c04065b6dbc31b57bb908.md) | 388 | `result-track:0d4c04065b6dbc31b57bb90891708cd4791d1001ffae005aa2b8f4ad0360eba2` |
| 17 | `theorem` | [radius_rightInv_pos_of_radius_pos_aux2](../../../../mathematics/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/declarations/radius-rightinv-pos-of-radius-pos-aux2--7034b6ab16f3549b834ff51a.md) | 452 | `result-track:7034b6ab16f3549b834ff51ac8373f306400a3823d7a26666c2da482b3d91304` |
| 18 | `theorem` | [radius_rightInv_pos_of_radius_pos](../../../../mathematics/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/declarations/radius-rightinv-pos-of-radius-pos--c45526a83772a35d9f6ad71f.md) | 513 | `result-track:c45526a83772a35d9f6ad71fb26a880c414a993984cade2a6b938e095518f2c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
