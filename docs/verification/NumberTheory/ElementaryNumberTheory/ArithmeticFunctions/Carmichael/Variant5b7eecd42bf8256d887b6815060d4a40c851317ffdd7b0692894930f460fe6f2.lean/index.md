# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Carmichael.Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b059b6e2d660326c739b91ac3778711315d92938",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b059b6e2d660326c739b91ac3778711315d92938`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean.json)

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
| 1 | `def` | [carmichael](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/declarations/carmichael--508e8752cfd0b42e0b69c34a.md) | 46 | `declaration-track:508e8752cfd0b42e0b69c34a4e03db57c14d83049e37799b3cef85664340d766` |
| 2 | `theorem` | [carmichael_eq_exponent](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/declarations/carmichael-eq-exponent--c986b49ccc608cd80c148ef9.md) | 59 | `result-track:c986b49ccc608cd80c148ef96978376529498ca91822bd6ceb2d5a4fbb70cdc0` |
| 3 | `theorem` | [carmichael_eq_exponent'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/declarations/carmichael-eq-exponent--8bddcf5421115fea7813e63e.md) | 65 | `result-track:8bddcf5421115fea7813e63e1ae1d3e23d62985f0b783a93db765a442a2a24a3` |
| 4 | `theorem` | [pow_carmichael](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/declarations/pow-carmichael--86c97518facd41357acc26a4.md) | 69 | `result-track:86c97518facd41357acc26a4ded604874cf69d540e492f9833ed4691f76babed` |
| 5 | `theorem` | [carmichael_dvd_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/declarations/carmichael-dvd-totient--6f8db743be2a7ade52855f1f.md) | 75 | `result-track:6f8db743be2a7ade52855f1ffd3c75f58c8640a3f2d117c0a9afe031aad993cc` |
| 6 | `theorem` | [carmichael_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/declarations/carmichael-dvd--220d00ad0e666bff05c874ee.md) | 81 | `result-track:220d00ad0e666bff05c874ee6d3b0e924b4c2085309cd7ae7be7e687244c0f7a` |
| 7 | `theorem` | [carmichael_lcm](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/declarations/carmichael-lcm--95df988ed119ee1f8bf5bda0.md) | 87 | `result-track:95df988ed119ee1f8bf5bda0b482fdc7c1e639ba1ed9a2bf68577918e871b1bb` |
| 8 | `theorem` | [carmichael_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/declarations/carmichael-mul--81734e549c3dbba1c45bf2fb.md) | 100 | `result-track:81734e549c3dbba1c45bf2fbc0d47d66af4d7b2c51bb76396b6223a521cf786d` |
| 9 | `theorem` | [carmichael_finset_lcm](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/declarations/carmichael-finset-lcm--d7ea057809d4367790fc3c40.md) | 104 | `result-track:d7ea057809d4367790fc3c40b39bea782225a40f7a4548f4d925029976841c8b` |
| 10 | `theorem` | [carmichael_finsetProd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/declarations/carmichael-finsetprod--d2ff8882c2502b921383dfdd.md) | 112 | `result-track:d2ff8882c2502b921383dfddf0cd491702c32d2b92ecd237538fe0ec32cc2795` |
| 11 | `theorem` | [carmichael_factorization](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/declarations/carmichael-factorization--d2cddf27fa7ec4a4fd468a11.md) | 118 | `result-track:d2cddf27fa7ec4a4fd468a11ffd1014b4ce5bc0dd2882e19d432d9a30fd96e28` |
| 12 | `theorem` | [carmichael_two_pow_of_le_two_eq_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/declarations/carmichael-two-pow-of-le-two-eq-totient--ef455e822c35c4e89f8df206.md) | 123 | `result-track:ef455e822c35c4e89f8df2061eeaa87b5c53284f560f8d1f336ffb64c75ed936` |
| 13 | `theorem` | [carmichael_two_pow_of_le_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/declarations/carmichael-two-pow-of-le-two--54e77d5d98a0b3679a94cd52.md) | 130 | `result-track:54e77d5d98a0b3679a94cd52e0ff77d6a1ad8ccfba1134675780ae155ebeee99` |
| 14 | `theorem` | [carmichael_two_pow_of_ne_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/declarations/carmichael-two-pow-of-ne-two--6927217369e7b56fa1502c17.md) | 137 | `result-track:6927217369e7b56fa1502c1743289941e1d3347234bb23384347420c58035bab` |
| 15 | `theorem` | [two_mul_carmichael_two_pow_of_three_le_eq_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/declarations/two-mul-carmichael-two-pow-of-three-le-eq-totient--4473b0d6ac0299999b834ffe.md) | 153 | `result-track:4473b0d6ac0299999b834ffe575ba28a6bfccd0151abe9d66c576973a27098aa` |
| 16 | `theorem` | [carmichael_pow_of_prime_ne_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/declarations/carmichael-pow-of-prime-ne-two--b2d6a545d5daf4fe69b734c6.md) | 161 | `result-track:b2d6a545d5daf4fe69b734c6fc9ffd87e6d0236a96a2cc6da96b4687f962f70c` |
| 17 | `theorem` | [carmichael_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/declarations/carmichael-one--b068cdb73d792c3194316a00.md) | 168 | `result-track:b068cdb73d792c3194316a0044a7a695a339db842217906be92e08d2e69a1cb7` |
| 18 | `theorem` | [carmichael_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/declarations/carmichael-two--74fcf135b3733d41fe8b7077.md) | 172 | `result-track:74fcf135b3733d41fe8b7077a78b3a352c4066c19cf8712787a7aebce4c031c3` |
| 19 | `theorem` | [carmichael_of_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/declarations/carmichael-of-prime--d4d2c3f0a309fb835c024f6a.md) | 175 | `result-track:d4d2c3f0a309fb835c024f6a8eec9f9b51aebb00510c789dc0fe3e59851cf4d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
