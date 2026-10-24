# Verification target: GRWTSK.NumberTheory.Chebyshev.RationalCanonicalPrimeMargin

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ff2c07d0b593b14207670441f6c0e540d793ecd",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ff2c07d0b593b14207670441f6c0e540d793ecd`.

Source path: `GRWTSK/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Real.RationalLogEnclosure`](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCriterion`](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CanonicalRationalTentEvaluation`](../../../../mathematics/NumberTheory/Chebyshev/CanonicalRationalTentEvaluation.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceQ](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/sourceq--e1db21d00619dc7f8e2e68e4.md) | 51 | `declaration-track:e1db21d00619dc7f8e2e68e477d47737ab51ff2f5ab1e9a3e82c117f4f78c9cd` |
| 2 | `def` | [upperQ](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/upperq--5565bad1730661d4b143634e.md) | 55 | `declaration-track:5565bad1730661d4b143634ea9e9a73c9ba455281c23bdca524fe4666fba0125` |
| 3 | `theorem` | [cast_sourceQ](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/cast-sourceq--687cf61676ea7437dfe199b2.md) | 58 | `result-track:687cf61676ea7437dfe199b2e1b01dfaf94b8466a65f93fc767967516c2ff0a4` |
| 4 | `theorem` | [cast_upperQ](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/cast-upperq--3ecdb1139611e63f328f24cd.md) | 64 | `result-track:3ecdb1139611e63f328f24cdc3b16b39f58fa757e792a120fc319e4a2fa780c3` |
| 5 | `theorem` | [log_le_upperQ](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/log-le-upperq--c55b02535184b436705b3f55.md) | 69 | `result-track:c55b02535184b436705b3f55a95f94d9a85d644ff3cc24c70ad63392734dc478` |
| 6 | `theorem` | [sourceQ_pos](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/sourceq-pos--7e23fa27597cc3921cfd8891.md) | 74 | `result-track:7e23fa27597cc3921cfd8891943fd514d2f92b5f46b94e8b9a1392df6a0fa1aa` |
| 7 | `theorem` | [upperQ_nonneg](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/upperq-nonneg--3db7151957e7799a69ff0f5c.md) | 81 | `result-track:3db7151957e7799a69ff0f5c905ed9f142c4cbbb4d13b691ac75d16b29da99c9` |
| 8 | `def` | [countingCoefficientUpperQ](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/countingcoefficientupperq--33cea1957bcff1e890bed533.md) | 89 | `declaration-track:33cea1957bcff1e890bed533c7806a8110a2924741760cffc4584edd33621bb8` |
| 9 | `theorem` | [countingCoefficient_le_upper](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/countingcoefficient-le-upper--8b82f31bb041ccf48c29e3c8.md) | 92 | `result-track:8b82f31bb041ccf48c29e3c8bf68fcb12c1eaa0124a62a1c0f6d4225d5c0cc1d` |
| 10 | `def` | [squareTailUpperQ](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/squaretailupperq--130e8f7229ecc26f0793fe64.md) | 106 | `declaration-track:130e8f7229ecc26f0793fe64d7e3fc1d8fec2b99f8fe4a558b65987b1cf293f4` |
| 11 | `theorem` | [cast_squareTailUpperQ](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/cast-squaretailupperq--01b2fbe075aa3f0f02ed29f4.md) | 112 | `result-track:01b2fbe075aa3f0f02ed29f4d282e6014e221858c75d3610dfe7e89ea647b6db` |
| 12 | `theorem` | [canonicalSquareTail_eq](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/canonicalsquaretail-eq--ef64bab750494374267a5dca.md) | 124 | `result-track:ef64bab750494374267a5dca14a61f5f589a508c9c3e0bd311f81f2c8f4ad0c5` |
| 13 | `theorem` | [canonicalSquareTail_le_upper](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/canonicalsquaretail-le-upper--274686911d85448bfbb6aca3.md) | 135 | `result-track:274686911d85448bfbb6aca337bddcc982ac2836342e2c7b63951055bb84f4e6` |
| 14 | `def` | [squareCorrectionUpperQ](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/squarecorrectionupperq--11171299ecf03c847032fa26.md) | 164 | `declaration-track:11171299ecf03c847032fa2669252c6c8cd670a5d70aff97ffcc3126b6a61b07` |
| 15 | `theorem` | [cast_squareCorrectionUpperQ](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/cast-squarecorrectionupperq--a17e47fb118cec9befabcaaf.md) | 170 | `result-track:a17e47fb118cec9befabcaafccab4990f9a3eaabe710fe94f8b1300f3cd70b80` |
| 16 | `theorem` | [squareCorrectionBudget_le_upper](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/squarecorrectionbudget-le-upper--52dd12fcb12210528eeeb02a.md) | 180 | `result-track:52dd12fcb12210528eeeb02ac5e8139aadbc6c9a065a2798d043991a3be025a6` |
| 17 | `def` | [marginQ](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/marginq--7da5a518ba86beebbb595873.md) | 208 | `declaration-track:7da5a518ba86beebbb5958734091d4ee2f9cd609432a7584e4851671191ecdde` |
| 18 | `theorem` | [cast_marginQ](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/cast-marginq--c6a102a2008ce03dd9b58671.md) | 218 | `result-track:c6a102a2008ce03dd9b586715ba75bae04cf9af23a67113bfbd7afd3492200fd` |
| 19 | `theorem` | [marginQ_le_canonicalPrimeMargin](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/marginq-le-canonicalprimemargin--7783821accdd4d91b10d5e5b.md) | 231 | `result-track:7783821accdd4d91b10d5e5b11db03b578484dc1047b22055c6a55b503d0faed` |
| 20 | `def` | [accepts](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/accepts--44e24de0f783e2ed6da16015.md) | 246 | `declaration-track:44e24de0f783e2ed6da16015126cfed0ea1842e7e32b8475b0a34bff45b5041a` |
| 21 | `theorem` | [accepts_iff](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/accepts-iff--ac7e5c150f28096caa49322a.md) | 254 | `result-track:ac7e5c150f28096caa49322a64032140f63cff6da1cb1f9ad0ee59890c895b46` |
| 22 | `theorem` | [canonicalPrimeMargin_pos_of_accepts](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/canonicalprimemargin-pos-of-accepts--26c800c4988291990bebdde6.md) | 265 | `result-track:26c800c4988291990bebdde65d7fa1f0bd6c02b95b675bb46b09cbb6c8e10d03` |
| 23 | `theorem` | [zero_margin_rejected_fixture](../../../../mathematics/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/declarations/zero-margin-rejected-fixture--f78a795327d4acbeaa6e6cff.md) | 285 | `result-track:f78a795327d4acbeaa6e6cff66bf3c4f6ca2dda78107c077e79b2b93f69980f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
