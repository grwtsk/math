# Verification target: GRWTSK.Algebra.CommutativeAlgebra.SeparableDegree.Variantb2ac7b859f54373ca099417002054c4cf8697de2507450daccc06f8bf373e0f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f7c1c00ae02ef74cbeb3f6f9c493a182caad321",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SeparableDegree/Variantb2ac7b859f54373ca099417002054c4cf8697de2507450daccc06f8bf373e0f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/SeparableDegree/Variantb2ac7b859f54373ca099417002054c4cf8697de2507450daccc06f8bf373e0f5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/SeparableDegree/Variantb2ac7b859f54373ca099417002054c4cf8697de2507450daccc06f8bf373e0f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f7c1c00ae02ef74cbeb3f6f9c493a182caad321`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SeparableDegree/Variantb2ac7b859f54373ca099417002054c4cf8697de2507450daccc06f8bf373e0f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SeparableDegree/Variantb2ac7b859f54373ca099417002054c4cf8697de2507450daccc06f8bf373e0f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSeparableContraction](../../../../../mathematics/Algebra/CommutativeAlgebra/SeparableDegree/Variantb2ac7b859f54373ca099417002054c4cf8697de2507450daccc06f8bf373e0f5.lean/declarations/isseparablecontraction--184e8558ba50570a989f3328.md) | 56 | `declaration-track:184e8558ba50570a989f33282cce0cf3b17ff600368c57a9a8a59cacbfd10673` |
| 2 | `def` | [HasSeparableContraction](../../../../../mathematics/Algebra/CommutativeAlgebra/SeparableDegree/Variantb2ac7b859f54373ca099417002054c4cf8697de2507450daccc06f8bf373e0f5.lean/declarations/hasseparablecontraction--bc6f85bab1c1fe2d67df18af.md) | 60 | `declaration-track:bc6f85bab1c1fe2d67df18af6502ee9dbc53e702d2fbdfbe12539ef89e903e83` |
| 3 | `def` | [HasSeparableContraction.contraction](../../../../../mathematics/Algebra/CommutativeAlgebra/SeparableDegree/Variantb2ac7b859f54373ca099417002054c4cf8697de2507450daccc06f8bf373e0f5.lean/declarations/hasseparablecontraction-contraction--57ff598e7e4d143636827309.md) | 66 | `declaration-track:57ff598e7e4d143636827309df3b3eb0fe67cc9940547a22fe2d18efabcb7413` |
| 4 | `def` | [HasSeparableContraction.degree](../../../../../mathematics/Algebra/CommutativeAlgebra/SeparableDegree/Variantb2ac7b859f54373ca099417002054c4cf8697de2507450daccc06f8bf373e0f5.lean/declarations/hasseparablecontraction-degree--3f91ae4821bb0812b4f3980b.md) | 70 | `declaration-track:3f91ae4821bb0812b4f3980bdc541a72425e1bdca76cb41d616ada2024c511ee` |
| 5 | `theorem` | [HasSeparableContraction.isSeparableContraction](../../../../../mathematics/Algebra/CommutativeAlgebra/SeparableDegree/Variantb2ac7b859f54373ca099417002054c4cf8697de2507450daccc06f8bf373e0f5.lean/declarations/hasseparablecontraction-isseparablecontraction--12afd8b6060c6a34428b6d83.md) | 74 | `result-track:12afd8b6060c6a34428b6d83d5a1e1276e030d0a4a00e9c6e6f66c99e2a0b9c5` |
| 6 | `theorem` | [IsSeparableContraction.dvd_degree'](../../../../../mathematics/Algebra/CommutativeAlgebra/SeparableDegree/Variantb2ac7b859f54373ca099417002054c4cf8697de2507450daccc06f8bf373e0f5.lean/declarations/isseparablecontraction-dvd-degree--2d76cc65f3bb0c7199148b5d.md) | 78 | `result-track:2d76cc65f3bb0c7199148b5da91397b692d57a618d453f267d551c7add6699ad` |
| 7 | `theorem` | [HasSeparableContraction.dvd_degree'](../../../../../mathematics/Algebra/CommutativeAlgebra/SeparableDegree/Variantb2ac7b859f54373ca099417002054c4cf8697de2507450daccc06f8bf373e0f5.lean/declarations/hasseparablecontraction-dvd-degree--3f6517ad0c1cb07f41666b99.md) | 84 | `result-track:3f6517ad0c1cb07f41666b99f4791a114429b004eb43c681b82c650f8da45fdb` |
| 8 | `theorem` | [HasSeparableContraction.dvd_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/SeparableDegree/Variantb2ac7b859f54373ca099417002054c4cf8697de2507450daccc06f8bf373e0f5.lean/declarations/hasseparablecontraction-dvd-degree--bbe07a3b074345cec8fed156.md) | 88 | `result-track:bbe07a3b074345cec8fed156f8b6b3d6a5bdeb908f5ece540a0837ab5ebb5abe` |
| 9 | `theorem` | [HasSeparableContraction.eq_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/SeparableDegree/Variantb2ac7b859f54373ca099417002054c4cf8697de2507450daccc06f8bf373e0f5.lean/declarations/hasseparablecontraction-eq-degree--d4a138e8bf7e7eb6366c7d08.md) | 93 | `result-track:d4a138e8bf7e7eb6366c7d08233166fe968372f92a85b03cc2914bf8c58ab220` |
| 10 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.IsSeparableContraction.Variantb960ad8de3885caf027acfec3eedaab2d15aead1a1f6ca7465163c33056d25d2.Irreducible.hasSeparableContraction](../../../../../mathematics/Algebra/CommutativeAlgebra/SeparableDegree/Variantb2ac7b859f54373ca099417002054c4cf8697de2507450daccc06f8bf373e0f5.lean/declarations/root-grwtsk-algebra-commutativealgebra-isseparablecontraction-variantb96--836db7a5f85af6a300698b33.md) | 107 | `result-track:836db7a5f85af6a300698b33ad5f0c64eefb9c5d487b7d2d7596d91f4d82ec80` |
| 11 | `theorem` | [contraction_degree_eq_or_insep](../../../../../mathematics/Algebra/CommutativeAlgebra/SeparableDegree/Variantb2ac7b859f54373ca099417002054c4cf8697de2507450daccc06f8bf373e0f5.lean/declarations/contraction-degree-eq-or-insep--eb670b98694c3859780788b1.md) | 116 | `result-track:eb670b98694c3859780788b1ff1db2f869b58bd8caea028d95d2f96297df464d` |
| 12 | `theorem` | [IsSeparableContraction.degree_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/SeparableDegree/Variantb2ac7b859f54373ca099417002054c4cf8697de2507450daccc06f8bf373e0f5.lean/declarations/isseparablecontraction-degree-eq--8ff6e7a90f61e5531b372d0e.md) | 129 | `result-track:8ff6e7a90f61e5531b372d0e94c6dd1e90fdc722e33a800feec3658567cf51ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
