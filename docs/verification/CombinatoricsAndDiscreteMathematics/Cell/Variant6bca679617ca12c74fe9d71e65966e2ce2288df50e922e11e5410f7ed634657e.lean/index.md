# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Cell.Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a03f389e467532715a4b29f2001b02bc4443bb73",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cell/Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cell/Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cell/Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a03f389e467532715a4b29f2001b02bc4443bb73`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Cell/Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Cell/Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Concept.Assignment` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Taxonomy.Core` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CoreAxis](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cell/Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e.lean/declarations/coreaxis--5bcde1caf1fd2324fca003a7.md) | 16 | `declaration-track:5bcde1caf1fd2324fca003a778bd34a4a4fc6e972eef6eef824d71ce08ed29f2` |
| 2 | `structure` | [AxisEvidenceData](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cell/Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e.lean/declarations/axisevidencedata--5c3daa811d98a787b03f8fdf.md) | 31 | `declaration-track:5c3daa811d98a787b03f8fdfd77c8b41a4472e0686ea776ba8744a1f2e900afe` |
| 3 | `def` | [AxisValid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cell/Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e.lean/declarations/axisvalid--5c8c8914674ab69ad09dddd6.md) | 37 | `declaration-track:5c8c8914674ab69ad09dddd644618a309deacc46b8bff8bb8fa1f815cb1f3f69` |
| 4 | `structure` | [AxisEvidence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cell/Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e.lean/declarations/axisevidence--a010357f5c015ad68ec3fedf.md) | 43 | `declaration-track:a010357f5c015ad68ec3fedfdec5741641e1c6c1872655fc31c4606fa8e06131` |
| 5 | `structure` | [Cell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cell/Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e.lean/declarations/cell--a54c7e8cf362c4eead97e531.md) | 49 | `declaration-track:a54c7e8cf362c4eead97e5318c03a4c9e6daefbc3be9251f9f15007fc5353e75` |
| 6 | `def` | [Closed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cell/Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e.lean/declarations/closed--772ef6bc6299be656556e610.md) | 81 | `declaration-track:772ef6bc6299be656556e610dba0e2ed286871ec9ea5650de17cf1acbb835f71` |
| 7 | `theorem` | [coreAxis_mem_required](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cell/Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e.lean/declarations/coreaxis-mem-required--2c16f9622ef50c13bddd2a14.md) | 85 | `result-track:2c16f9622ef50c13bddd2a1485fd7053250ce29f6f9a739af523ffdb0e35f1fe` |
| 8 | `theorem` | [coreAxis_discharged](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cell/Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e.lean/declarations/coreaxis-discharged--14ab2e41cacc150f9f2901c2.md) | 91 | `result-track:14ab2e41cacc150f9f2901c2c9ff33105880d46bf9820e547a1a2b491336d687` |
| 9 | `theorem` | [evidence_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cell/Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e.lean/declarations/evidence-valid--a3935cb788a07d82b6ba60fb.md) | 98 | `result-track:a3935cb788a07d82b6ba60fb4d0f1654eff178d36384cb4ee4dbfac71d462959` |
| 10 | `structure` | [FaceTransition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cell/Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e.lean/declarations/facetransition--3c88f1340f47a6a73fc4c9e7.md) | 104 | `declaration-track:3c88f1340f47a6a73fc4c9e740773a2804496aeacd751906f1a2190fd679dfb8` |
| 11 | `structure` | [TheoremCell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cell/Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e.lean/declarations/theoremcell--cb761053cc6011cfbb77e687.md) | 116 | `declaration-track:cb761053cc6011cfbb77e6878e8a7eddacde63c57d993d986e4cf7d7f3ed1445` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
