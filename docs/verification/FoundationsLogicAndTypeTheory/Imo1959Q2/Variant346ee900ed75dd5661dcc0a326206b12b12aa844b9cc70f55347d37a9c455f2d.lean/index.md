# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Imo1959Q2.Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0325f5e80b580b9181dd110378a1b5608a41d567",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0325f5e80b580b9181dd110378a1b5608a41d567`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Sqrt` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsGood](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/declarations/isgood--a954bfeadc7da5e62feb1cd0.md) | 32 | `declaration-track:a954bfeadc7da5e62feb1cd0d8748243a709d912d6b7b6f8ca76788004d55d50` |
| 2 | `theorem` | [isGood_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/declarations/isgood-iff--1afb6a4c8690422961da392c.md) | 38 | `result-track:1afb6a4c8690422961da392cd9e643eab7dcc51a9b6613cda64ba01b9502790d` |
| 3 | `theorem` | [IsGood.one_half_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/declarations/isgood-one-half-le--308d558c8ccbb1a516dd5cb0.md) | 55 | `result-track:308d558c8ccbb1a516dd5cb0eefae8653a525dafc705ff9160d2ac2039435f81` |
| 4 | `theorem` | [sqrt_two_mul_sub_one_le_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/declarations/sqrt-two-mul-sub-one-le-one--0d036fa391a0fdad49385702.md) | 57 | `result-track:0d036fa391a0fdad49385702fc007f2e4033c80d5ed628f22ef0996a9f03d31e` |
| 5 | `theorem` | [isGood_iff_eq_sqrt_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/declarations/isgood-iff-eq-sqrt-two--d244013b9f01846d2f6d73d4.md) | 60 | `result-track:d244013b9f01846d2f6d73d45dd4ba1ff15db43502b05c50237106e29d7b178d` |
| 6 | `theorem` | [isGood_iff_eq_sqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/declarations/isgood-iff-eq-sqrt--cade0e459af46eb941fb724a.md) | 67 | `result-track:cade0e459af46eb941fb724af118d0d8a5c132e326319152038c27486753f88f` |
| 7 | `theorem` | [IsGood.sqrt_two_lt_of_one_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/declarations/isgood-sqrt-two-lt-of-one-lt--e562391aa8ece56ef209384b.md) | 75 | `result-track:e562391aa8ece56ef209384b791b095488348e5c310a8bb31d5993a849f82731` |
| 8 | `theorem` | [IsGood.eq_sqrt_two_iff_le_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/declarations/isgood-eq-sqrt-two-iff-le-one--f0f639e1b755c2ae77fe310b.md) | 80 | `result-track:f0f639e1b755c2ae77fe310ba7ff0e1319538c3ed5154ad17a89fb3f48a731fc` |
| 9 | `theorem` | [IsGood.sqrt_two_lt_iff_one_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/declarations/isgood-sqrt-two-lt-iff-one-lt--6776335726a4394e0c704ba7.md) | 84 | `result-track:6776335726a4394e0c704ba770697d48cc838ff6df445072644b2d676a0706fb` |
| 10 | `theorem` | [IsGood.sqrt_two_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/declarations/isgood-sqrt-two-le--aedd687661e43886693516c2.md) | 87 | `result-track:aedd687661e43886693516c2e33d634178b17d2655e77b962bc08cc75d1f05e3` |
| 11 | `theorem` | [isGood_iff_of_sqrt_two_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/declarations/isgood-iff-of-sqrt-two-lt--91d84afdaf92d4e68058d714.md) | 91 | `result-track:91d84afdaf92d4e68058d71409f96ef75c8fda6ea772997866f0c4f4591768cb` |
| 12 | `theorem` | [isGood_sqrt2_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/declarations/isgood-sqrt2-iff--20ffb4c25537a321ad08b3ff.md) | 104 | `result-track:20ffb4c25537a321ad08b3ff7663245c9181474af7b85c1b54566725c09e9a73` |
| 13 | `theorem` | [not_isGood_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/declarations/not-isgood-one--f1f3ffd80e52e81e3a3dc9c2.md) | 108 | `result-track:f1f3ffd80e52e81e3a3dc9c2dd4ce1db8da833fdc788ee3bd378fd6a24157229` |
| 14 | `theorem` | [isGood_two_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/declarations/isgood-two-iff--1d0a8f63f7ab45cee357575f.md) | 111 | `result-track:1d0a8f63f7ab45cee357575f9f5034b2e947964390006823d63e03ea5106ef19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
