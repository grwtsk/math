# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Varianta514fb28c167a0c3510a20ab3a0d5451cdde2845166f2b6472df02764c3a4d6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cde30276d4e6153f52aaa2951da902e0cb458e27",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Varianta514fb28c167a0c3510a20ab3a0d5451cdde2845166f2b6472df02764c3a4d6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Varianta514fb28c167a0c3510a20ab3a0d5451cdde2845166f2b6472df02764c3a4d6f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Varianta514fb28c167a0c3510a20ab3a0d5451cdde2845166f2b6472df02764c3a4d6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cde30276d4e6153f52aaa2951da902e0cb458e27`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Varianta514fb28c167a0c3510a20ab3a0d5451cdde2845166f2b6472df02764c3a4d6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Varianta514fb28c167a0c3510a20ab3a0d5451cdde2845166f2b6472df02764c3a4d6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sigma.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLocallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Varianta514fb28c167a0c3510a20ab3a0d5451cdde2845166f2b6472df02764c3a4d6f.lean/declarations/instlocallyfiniteorder--c6ac4565d7480a8ca0cfebd6.md) | 34 | `declaration-track:c6ac4565d7480a8ca0cfebd6911d7385c2e08112e3d3844698a412b86c01cb16` |
| 2 | `theorem` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Varianta514fb28c167a0c3510a20ab3a0d5451cdde2845166f2b6472df02764c3a4d6f.lean/declarations/card-icc--910368c5e04e3aca3d71b4cb.md) | 58 | `result-track:910368c5e04e3aca3d71b4cba149ee3aa8659fa72594256850daa8e3dfbdab71` |
| 3 | `theorem` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Varianta514fb28c167a0c3510a20ab3a0d5451cdde2845166f2b6472df02764c3a4d6f.lean/declarations/card-ico--4edb691713b3ba9058762215.md) | 61 | `result-track:4edb691713b3ba9058762215ac07c34df3664d7e9a7ca9085dff31c4d86288ce` |
| 4 | `theorem` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Varianta514fb28c167a0c3510a20ab3a0d5451cdde2845166f2b6472df02764c3a4d6f.lean/declarations/card-ioc--2615e6ef378317b07ff321a0.md) | 64 | `result-track:2615e6ef378317b07ff321a0d577008bb1f62f231c710a95aa83e92624504892` |
| 5 | `theorem` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Varianta514fb28c167a0c3510a20ab3a0d5451cdde2845166f2b6472df02764c3a4d6f.lean/declarations/card-ioo--0eb2d365a15402e7a761334d.md) | 67 | `result-track:0eb2d365a15402e7a761334d3002c808b104b502e4f17af6f1351fadbba9fbb8` |
| 6 | `theorem` | [Icc_mk_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Varianta514fb28c167a0c3510a20ab3a0d5451cdde2845166f2b6472df02764c3a4d6f.lean/declarations/icc-mk-mk--aa12e4b595daa8a6d45cab7a.md) | 75 | `result-track:aa12e4b595daa8a6d45cab7a31fe2cc33023f108e2b84cec18e21bb450619e5c` |
| 7 | `theorem` | [Ico_mk_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Varianta514fb28c167a0c3510a20ab3a0d5451cdde2845166f2b6472df02764c3a4d6f.lean/declarations/ico-mk-mk--34f89b19848cbb7ec0c3e48c.md) | 79 | `result-track:34f89b19848cbb7ec0c3e48c2a144b5fff0c81d3d5b9b681a6ecf70f0b95978f` |
| 8 | `theorem` | [Ioc_mk_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Varianta514fb28c167a0c3510a20ab3a0d5451cdde2845166f2b6472df02764c3a4d6f.lean/declarations/ioc-mk-mk--f6f6d9c7c8465069f6f39e65.md) | 83 | `result-track:f6f6d9c7c8465069f6f39e654035d043b30b713ed8db94da1733e104200999fe` |
| 9 | `theorem` | [Ioo_mk_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Varianta514fb28c167a0c3510a20ab3a0d5451cdde2845166f2b6472df02764c3a4d6f.lean/declarations/ioo-mk-mk--11c99d6ba87c6731aab3aac6.md) | 87 | `result-track:11c99d6ba87c6731aab3aac6b60fc05e4b53d076a59ffcaa453f34df868a4962` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
