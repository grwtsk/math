# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FinsuppEquiv.Variantd11159dca7294a72faf865e32ca5cbb1f0d3a6367dfc7ab59e9bd1786f578df5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a722acbdea0b973630184da501b3c4ee556c9f5c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variantd11159dca7294a72faf865e32ca5cbb1f0d3a6367dfc7ab59e9bd1786f578df5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variantd11159dca7294a72faf865e32ca5cbb1f0d3a6367dfc7ab59e9bd1786f578df5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variantd11159dca7294a72faf865e32ca5cbb1f0d3a6367dfc7ab59e9bd1786f578df5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a722acbdea0b973630184da501b3c4ee556c9f5c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variantd11159dca7294a72faf865e32ca5cbb1f0d3a6367dfc7ab59e9bd1786f578df5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variantd11159dca7294a72faf865e32ca5cbb1f0d3a6367dfc7ab59e9bd1786f578df5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sym.Card` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finsuppAntidiagEquivSubtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variantd11159dca7294a72faf865e32ca5cbb1f0d3a6367dfc7ab59e9bd1786f578df5.lean/declarations/finsuppantidiagequivsubtype--58da65b974754505ca425a1e.md) | 44 | `declaration-track:58da65b974754505ca425a1e2f66e9c81826e1db98e6626179e46bc860d8ad2e` |
| 2 | `def` | [finsuppAntidiagEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variantd11159dca7294a72faf865e32ca5cbb1f0d3a6367dfc7ab59e9bd1786f578df5.lean/declarations/finsuppantidiagequiv--1c14d2ee14015eaad5d5edd8.md) | 60 | `declaration-track:1c14d2ee14015eaad5d5edd84cb3712a5da616dd04ae641fc898a4a1c4522d84` |
| 3 | `theorem` | [finsuppAntidiagEquiv_symm_apply_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variantd11159dca7294a72faf865e32ca5cbb1f0d3a6367dfc7ab59e9bd1786f578df5.lean/declarations/finsuppantidiagequiv-symm-apply-apply--a48183ea2638c0439d5fd727.md) | 64 | `result-track:a48183ea2638c0439d5fd7276fa2bc53014e99cf69c83248a41e7d7beeda711b` |
| 4 | `theorem` | [count_coe_finsuppAntidiagEquiv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variantd11159dca7294a72faf865e32ca5cbb1f0d3a6367dfc7ab59e9bd1786f578df5.lean/declarations/count-coe-finsuppantidiagequiv-apply--9e647d5918f907fe03e49ca9.md) | 69 | `result-track:9e647d5918f907fe03e49ca9f7e8f207eef3a7029540f174a53c292918f15248` |
| 5 | `theorem` | [card_finsuppAntidiag_nat_eq_choose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variantd11159dca7294a72faf865e32ca5cbb1f0d3a6367dfc7ab59e9bd1786f578df5.lean/declarations/card-finsuppantidiag-nat-eq-choose--f46b65b45a5ed254686ce610.md) | 73 | `result-track:f46b65b45a5ed254686ce6103ffd7cc12239b2a9b48ae0dae6538c4d16db4bb0` |
| 6 | `theorem` | [card_finsuppAntidiag_nat_eq_multichoose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variantd11159dca7294a72faf865e32ca5cbb1f0d3a6367dfc7ab59e9bd1786f578df5.lean/declarations/card-finsuppantidiag-nat-eq-multichoose--25c26432c359256aff3b3573.md) | 77 | `result-track:25c26432c359256aff3b3573497d0df5048616acd153c796a10207d90e20ab9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
