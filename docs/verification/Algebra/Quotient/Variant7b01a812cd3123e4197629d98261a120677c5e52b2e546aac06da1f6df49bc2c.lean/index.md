# Verification target: GRWTSK.Algebra.Quotient.Variant7b01a812cd3123e4197629d98261a120677c5e52b2e546aac06da1f6df49bc2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0111c8efaf0209443d153a879d6b21b18ee32955",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Quotient/Variant7b01a812cd3123e4197629d98261a120677c5e52b2e546aac06da1f6df49bc2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Quotient/Variant7b01a812cd3123e4197629d98261a120677c5e52b2e546aac06da1f6df49bc2c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Quotient/Variant7b01a812cd3123e4197629d98261a120677c5e52b2e546aac06da1f6df49bc2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0111c8efaf0209443d153a879d6b21b18ee32955`.

Source path: `GRWTSK/Algebra/Quotient/Variant7b01a812cd3123e4197629d98261a120677c5e52b2e546aac06da1f6df49bc2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Quotient/Variant7b01a812cd3123e4197629d98261a120677c5e52b2e546aac06da1f6df49bc2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [onQuotVal](../../../../mathematics/Algebra/Quotient/Variant7b01a812cd3123e4197629d98261a120677c5e52b2e546aac06da1f6df49bc2c.lean/declarations/onquotval--4cdba495ebf39a7d6c6a5a47.md) | 34 | `declaration-track:4cdba495ebf39a7d6c6a5a4798dbc170c9807ceaf1e5137bb86e4084bd70d433` |
| 2 | `def` | [onQuot](../../../../mathematics/Algebra/Quotient/Variant7b01a812cd3123e4197629d98261a120677c5e52b2e546aac06da1f6df49bc2c.lean/declarations/onquot--11e96a49d3a777bb5b1c12b4.md) | 42 | `declaration-track:11e96a49d3a777bb5b1c12b4298d8ca2838aac32d9bb07034585c5311e5651d0` |
| 3 | `theorem` | [onQuot_comap_eq](../../../../mathematics/Algebra/Quotient/Variant7b01a812cd3123e4197629d98261a120677c5e52b2e546aac06da1f6df49bc2c.lean/declarations/onquot-comap-eq--1682e1b4f6d867107f1135ce.md) | 50 | `result-track:1682e1b4f6d867107f1135ce0f8e5ef2f9503774135d52ee0c27921d4e658727` |
| 4 | `theorem` | [self_le_supp_comap](../../../../mathematics/Algebra/Quotient/Variant7b01a812cd3123e4197629d98261a120677c5e52b2e546aac06da1f6df49bc2c.lean/declarations/self-le-supp-comap--479a5f805bd3bf986c62e504.md) | 54 | `result-track:479a5f805bd3bf986c62e50407965c3b3a42e468dd6e6da9a7e0e6cb6dd8b229` |
| 5 | `theorem` | [comap_onQuot_eq](../../../../mathematics/Algebra/Quotient/Variant7b01a812cd3123e4197629d98261a120677c5e52b2e546aac06da1f6df49bc2c.lean/declarations/comap-onquot-eq--eefb18744a286bc532bd1f31.md) | 60 | `result-track:eefb18744a286bc532bd1f31d3a4ca59c4089451dbbd3f2b21294ed54115345e` |
| 6 | `theorem` | [supp_quot](../../../../mathematics/Algebra/Quotient/Variant7b01a812cd3123e4197629d98261a120677c5e52b2e546aac06da1f6df49bc2c.lean/declarations/supp-quot--be1da6ecf4a062fe5148a187.md) | 67 | `result-track:be1da6ecf4a062fe5148a187f2b3e3a48eb15a2274cdcb6b2def2d8ea9f1de06` |
| 7 | `theorem` | [supp_quot_supp](../../../../mathematics/Algebra/Quotient/Variant7b01a812cd3123e4197629d98261a120677c5e52b2e546aac06da1f6df49bc2c.lean/declarations/supp-quot-supp--1138a013f5df277159dd0764.md) | 77 | `result-track:1138a013f5df277159dd0764c9b4afbf158ba20b3fe4e22f5023cfbcfeea1d06` |
| 8 | `def` | [onQuotVal](../../../../mathematics/Algebra/Quotient/Variant7b01a812cd3123e4197629d98261a120677c5e52b2e546aac06da1f6df49bc2c.lean/declarations/onquotval--649c58f830ca288c2692efe4.md) | 93 | `declaration-track:649c58f830ca288c2692efe4ba382a63d10b3238e7bd0d4bfa298fce38ba39f4` |
| 9 | `def` | [onQuot](../../../../mathematics/Algebra/Quotient/Variant7b01a812cd3123e4197629d98261a120677c5e52b2e546aac06da1f6df49bc2c.lean/declarations/onquot--5dc5476cc2012c5955f6cb7f.md) | 97 | `declaration-track:5dc5476cc2012c5955f6cb7f861c310a377b5c8b396829ab6fd6c6ed2682508d` |
| 10 | `theorem` | [onQuot_comap_eq](../../../../mathematics/Algebra/Quotient/Variant7b01a812cd3123e4197629d98261a120677c5e52b2e546aac06da1f6df49bc2c.lean/declarations/onquot-comap-eq--17c85ebe2bf29353b64d10ea.md) | 101 | `result-track:17c85ebe2bf29353b64d10ea13be30f3ece16238827ae72975aa80170910643b` |
| 11 | `theorem` | [comap_supp](../../../../mathematics/Algebra/Quotient/Variant7b01a812cd3123e4197629d98261a120677c5e52b2e546aac06da1f6df49bc2c.lean/declarations/comap-supp--6c69f0fadf99ec3685d937ed.md) | 105 | `result-track:6c69f0fadf99ec3685d937edeece8e509c12808601bf2c09cda50e1d4be9bd61` |
| 12 | `theorem` | [self_le_supp_comap](../../../../mathematics/Algebra/Quotient/Variant7b01a812cd3123e4197629d98261a120677c5e52b2e546aac06da1f6df49bc2c.lean/declarations/self-le-supp-comap--7c2cfe02b155fb86606254a6.md) | 109 | `result-track:7c2cfe02b155fb86606254a62562a9bbd2814d3486152277f2a37af66ba9af36` |
| 13 | `theorem` | [comap_onQuot_eq](../../../../mathematics/Algebra/Quotient/Variant7b01a812cd3123e4197629d98261a120677c5e52b2e546aac06da1f6df49bc2c.lean/declarations/comap-onquot-eq--daf0f09485c5936ab2d9383b.md) | 114 | `result-track:daf0f09485c5936ab2d9383bd98efc2de86da2b0a24cebe17968ae807f0e5bd9` |
| 14 | `theorem` | [supp_quot](../../../../mathematics/Algebra/Quotient/Variant7b01a812cd3123e4197629d98261a120677c5e52b2e546aac06da1f6df49bc2c.lean/declarations/supp-quot--50de08138afb9e6fc581272e.md) | 119 | `result-track:50de08138afb9e6fc581272e4c7f3b153eaf34a64d7cf071528964bd37231668` |
| 15 | `theorem` | [supp_quot_supp](../../../../mathematics/Algebra/Quotient/Variant7b01a812cd3123e4197629d98261a120677c5e52b2e546aac06da1f6df49bc2c.lean/declarations/supp-quot-supp--217a90e54c02bf24612bfcef.md) | 123 | `result-track:217a90e54c02bf24612bfcef30c20005db90431345b4af6bf6d1bf13c9df6590` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
