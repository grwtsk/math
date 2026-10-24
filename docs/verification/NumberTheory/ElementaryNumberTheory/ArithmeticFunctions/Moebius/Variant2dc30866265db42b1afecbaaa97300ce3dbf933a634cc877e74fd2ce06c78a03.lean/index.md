# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant2dc30866265db42b1afecbaaa97300ce3dbf933a634cc877e74fd2ce06c78a03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e69fb7eb0bce9b86d85e7f6bd83ca219eae5987d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant2dc30866265db42b1afecbaaa97300ce3dbf933a634cc877e74fd2ce06c78a03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant2dc30866265db42b1afecbaaa97300ce3dbf933a634cc877e74fd2ce06c78a03.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant2dc30866265db42b1afecbaaa97300ce3dbf933a634cc877e74fd2ce06c78a03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e69fb7eb0bce9b86d85e7f6bd83ca219eae5987d`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant2dc30866265db42b1afecbaaa97300ce3dbf933a634cc877e74fd2ce06c78a03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant2dc30866265db42b1afecbaaa97300ce3dbf933a634cc877e74fd2ce06c78a03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [moebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant2dc30866265db42b1afecbaaa97300ce3dbf933a634cc877e74fd2ce06c78a03.lean/declarations/moebius--bca163941011a6833ee62f48.md) | 42 | `declaration-track:bca163941011a6833ee62f4856d8c81f25df0a52545b6f5b9f3b963ae10dedbb` |
| 2 | `theorem` | [_root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.Nat.moebius_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant2dc30866265db42b1afecbaaa97300ce3dbf933a634cc877e74fd2ce06c78a03.lean/declarations/root-grwtsk-numbertheory-elementarynumbertheory-arithmeticfunctions-moeb--7c6af96242dbf2f59477afbd.md) | 47 | `result-track:7c6af96242dbf2f59477afbdafbe38d95b87b310fdef4116dd336697d56219b1` |
| 3 | `theorem` | [_root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.Squarefree.moebius_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant2dc30866265db42b1afecbaaa97300ce3dbf933a634cc877e74fd2ce06c78a03.lean/declarations/root-grwtsk-numbertheory-elementarynumbertheory-arithmeticfunctions-moeb--67bf41c9d01b8e2668d06249.md) | 53 | `result-track:67bf41c9d01b8e2668d0624929aace59030d1bd9569face25471ad184d024182` |
| 4 | `theorem` | [moebius_of_not_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant2dc30866265db42b1afecbaaa97300ce3dbf933a634cc877e74fd2ce06c78a03.lean/declarations/moebius-of-not-squarefree--53ad5da49ac21dc513c14a17.md) | 57 | `result-track:53ad5da49ac21dc513c14a17295227e0832ec15f54bf8ecc39cb3ce5d3eea149` |
| 5 | `theorem` | [moebius_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant2dc30866265db42b1afecbaaa97300ce3dbf933a634cc877e74fd2ce06c78a03.lean/declarations/moebius-zero--1b85cc959daa2665bde7ef12.md) | 60 | `result-track:1b85cc959daa2665bde7ef12e2cd198ec8e4a2c981e282d51a848aed7990597f` |
| 6 | `theorem` | [moebius_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant2dc30866265db42b1afecbaaa97300ce3dbf933a634cc877e74fd2ce06c78a03.lean/declarations/moebius-one--df3042d67b6b3828e9417132.md) | 63 | `result-track:df3042d67b6b3828e941713289186583e43891363656fc616defd573d1fcdcb5` |
| 7 | `theorem` | [_root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.Associated.moebius_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant2dc30866265db42b1afecbaaa97300ce3dbf933a634cc877e74fd2ce06c78a03.lean/declarations/root-grwtsk-numbertheory-elementarynumbertheory-arithmeticfunctions-moeb--c2f559c0f79bdd9507c4bba1.md) | 66 | `result-track:c2f559c0f79bdd9507c4bba1fd93f7eaa18ad0a5c1a07c3002cf83d0ed0477a7` |
| 8 | `theorem` | [_root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.IsUnit.moebius_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant2dc30866265db42b1afecbaaa97300ce3dbf933a634cc877e74fd2ce06c78a03.lean/declarations/root-grwtsk-numbertheory-elementarynumbertheory-arithmeticfunctions-moeb--7d33d630583d7d549fc7135b.md) | 69 | `result-track:7d33d630583d7d549fc7135b17f9b73f9d2b81c1aab64f806be2a6da237429b0` |
| 9 | `theorem` | [_root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.Irreducible.moebius_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant2dc30866265db42b1afecbaaa97300ce3dbf933a634cc877e74fd2ce06c78a03.lean/declarations/root-grwtsk-numbertheory-elementarynumbertheory-arithmeticfunctions-moeb--208d6a359f08b049809ba28b.md) | 72 | `result-track:208d6a359f08b049809ba28b1847ccea36baf44e5b0912db0849576e7e90f77f` |
| 10 | `theorem` | [_root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.IsRelPrime.moebius_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant2dc30866265db42b1afecbaaa97300ce3dbf933a634cc877e74fd2ce06c78a03.lean/declarations/root-grwtsk-numbertheory-elementarynumbertheory-arithmeticfunctions-moeb--4a7892c2584ba84c9db3a685.md) | 75 | `result-track:4a7892c2584ba84c9db3a6856aa2f3fca3ce165e356846566316bb342491e283` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
