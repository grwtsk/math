# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.PrimeInInterval.Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1e97a91adcba4fe274cbb67c931e9bb414eb650",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1e97a91adcba4fe274cbb67c931e9bb414eb650`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `PrimeNumberTheoremAnd.IEANTN.SecondaryDefinitions` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [HasPrimeInInterval.iff_pi_ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean/declarations/hasprimeininterval-iff-pi-ge--539878da88f272bbdb725c95.md) | 22 | `result-track:539878da88f272bbdb725c9526852a3d3bd09a97d2b706b467323800abe470a2` |
| 2 | `theorem` | [theta_pos_implies_prime_in_interval](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean/declarations/theta-pos-implies-prime-in-interval--9ca07d1148753ab75536410f.md) | 58 | `result-track:9ca07d1148753ab75536410f85ed271c636f758378573ce23a4673a4e16a7686` |
| 3 | `lemma` | [HasPrimeInInterval.iff_theta_ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean/declarations/hasprimeininterval-iff-theta-ge--811be77465c6a40fb0d7a577.md) | 81 | `result-track:811be77465c6a40fb0d7a57753eac43e3c428ee4c14912abdf374093a842d33c` |
| 4 | `lemma` | [Eθ.hasPrimeInInterval](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean/declarations/e-hasprimeininterval--3169e7b8e1239a439673e21a.md) | 138 | `result-track:3169e7b8e1239a439673e21a71b0ea8db7518e802abe427143d1fec9c405039e` |
| 5 | `lemma` | [Eθ.numericalBound.hasPrimeInInterval](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean/declarations/e-numericalbound-hasprimeininterval--14aa517f5bd689f651ea95c0.md) | 170 | `result-track:14aa517f5bd689f651ea95c04fe19d8d6e2c1d469c96a1ba57f590c987e213e4` |
| 6 | `lemma` | [Eθ.classicalBound.hasPrimeInInterval](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean/declarations/e-classicalbound-hasprimeininterval--50c54f453699b6f96f67deb0.md) | 195 | `result-track:50c54f453699b6f96f67deb0a77abd41ba293aca8e94dc512fe97add9e80d4cf` |
| 7 | `lemma` | [prime_gap_record.hasPrimeInInterval](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean/declarations/prime-gap-record-hasprimeininterval--6c6a978dc5388563a2d7e9d4.md) | 215 | `result-track:6c6a978dc5388563a2d7e9d47302b537e32eb22bdfbb9fcab01880e3b157ac59` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
