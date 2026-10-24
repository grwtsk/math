# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetGeometryPositivity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e34744d8edf664d4aa6e6711ff6bc56a4520b7bf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPositivity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPositivity.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPositivity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e34744d8edf664d4aa6e6711ff6bc56a4520b7bf`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPositivity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPositivity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetGeometryLinearization`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean/index.md) — import line 16; pinned internal source present.
- `Mathlib.Tactic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coordinate_pos_of_paperDyadic](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPositivity.lean/declarations/coordinate-pos-of-paperdyadic--d5074fd99373a8f6f0c1c0a6.md) | 32 | `result-track:d5074fd99373a8f6f0c1c0a659aa1cbb849e2ae666c7d1cc15d6bcfbac94ccc9` |
| 2 | `theorem` | [paperSelectedMonomial_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPositivity.lean/declarations/paperselectedmonomial-pos--677f564f377e4b9c4c8dd28a.md) | 37 | `result-track:677f564f377e4b9c4c8dd28a63bcdbc11ed6273c23eecf016442210a2d92a801` |
| 3 | `theorem` | [paperComplementMonomial_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPositivity.lean/declarations/papercomplementmonomial-pos--484e7f88cd1b624682cbc572.md) | 47 | `result-track:484e7f88cd1b624682cbc57285df179b6594aa0fffc32d2a2c145e4ff55b404c` |
| 4 | `structure` | [GeometryPositiveFactors](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPositivity.lean/declarations/geometrypositivefactors--6149b67645f0cbca8a5100ba.md) | 58 | `declaration-track:6149b67645f0cbca8a5100ba903ec5c137dce3fefd70d6d7b87205e38092616b` |
| 5 | `theorem` | [geometryPositiveFactors_of_mem_paperBoxFinset](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPositivity.lean/declarations/geometrypositivefactors-of-mem-paperboxfinset--3c243946d68f8a01f5d1e1da.md) | 70 | `result-track:3c243946d68f8a01f5d1e1dade8212df2dc9edf6df1db854dfa6ec450794c891` |
| 6 | `theorem` | [geometryPositiveFactors_of_paperAdmissible](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPositivity.lean/declarations/geometrypositivefactors-of-paperadmissible--25dc5a673e894bad5c213ae4.md) | 106 | `result-track:25dc5a673e894bad5c213ae40ea1b7bd93b744dc95d2c31d1675bd845b0e5137` |
| 7 | `structure` | [PositiveGeometryLinearization](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPositivity.lean/declarations/positivegeometrylinearization--a1d02547deb336b003f650ee.md) | 117 | `declaration-track:a1d02547deb336b003f650ee35dcb702cfaf30bf415e8afcf35f79cae728f8d5` |
| 8 | `theorem` | [positiveGeometryLinearization_of_paperAdmissible](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPositivity.lean/declarations/positivegeometrylinearization-of-paperadmissible--4b1afce92c7e27163085a83e.md) | 125 | `result-track:4b1afce92c7e27163085a83e8cfbb2e6f683595289fb1357c66274f3525990f2` |
| 9 | `theorem` | [positive_factors_do_not_encode_coprimality_fixture](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPositivity.lean/declarations/positive-factors-do-not-encode-coprimality-fixture--3bf01d1efcee850bff2e2ef9.md) | 138 | `result-track:3bf01d1efcee850bff2e2ef9e2da808bcd5500d7c4452ea21ca9fcfe760820ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
