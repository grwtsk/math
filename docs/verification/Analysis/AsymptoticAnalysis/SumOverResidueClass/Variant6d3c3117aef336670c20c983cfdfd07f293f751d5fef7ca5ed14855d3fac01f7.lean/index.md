# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SumOverResidueClass.Variant6d3c3117aef336670c20c983cfdfd07f293f751d5fef7ca5ed14855d3fac01f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6fef91703824fc2a6a5c69d4c0468d8100528f5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant6d3c3117aef336670c20c983cfdfd07f293f751d5fef7ca5ed14855d3fac01f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant6d3c3117aef336670c20c983cfdfd07f293f751d5fef7ca5ed14855d3fac01f7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant6d3c3117aef336670c20c983cfdfd07f293f751d5fef7ca5ed14855d3fac01f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6fef91703824fc2a6a5c69d4c0468d8100528f5`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant6d3c3117aef336670c20c983cfdfd07f293f751d5fef7ca5ed14855d3fac01f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant6d3c3117aef336670c20c983cfdfd07f293f751d5fef7ca5ed14855d3fac01f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Finset.sum_indicator_mod](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant6d3c3117aef336670c20c983cfdfd07f293f751d5fef7ca5ed14855d3fac01f7.lean/declarations/finset-sum-indicator-mod--dff6fd6a151aaf8834683ebb.md) | 21 | `result-track:dff6fd6a151aaf8834683ebb632037b4752bd2789eb8e874edfde0048d220735` |
| 2 | `lemma` | [summable_indicator_mod_iff_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant6d3c3117aef336670c20c983cfdfd07f293f751d5fef7ca5ed14855d3fac01f7.lean/declarations/summable-indicator-mod-iff-summable--d1aa701fb14e9f13521ea114.md) | 30 | `result-track:d1aa701fb14e9f13521ea114902d56feb03fda5c875948c5e822afc8ccf4c929` |
| 3 | `lemma` | [not_summable_of_antitone_of_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant6d3c3117aef336670c20c983cfdfd07f293f751d5fef7ca5ed14855d3fac01f7.lean/declarations/not-summable-of-antitone-of-neg--ed55ea0ebcfcbf0340657af8.md) | 48 | `result-track:ed55ea0ebcfcbf0340657af8022b691cc1271edff8ae95e44d069632776002fd` |
| 4 | `lemma` | [not_summable_indicator_mod_of_antitone_of_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant6d3c3117aef336670c20c983cfdfd07f293f751d5fef7ca5ed14855d3fac01f7.lean/declarations/not-summable-indicator-mod-of-antitone-of-neg--346bfdafb17507c8e87f538f.md) | 61 | `result-track:346bfdafb17507c8e87f538fdd1aa84fe5799a9e5c1d4be862d89fca6be574b8` |
| 5 | `lemma` | [summable_indicator_mod_iff_summable_indicator_mod](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant6d3c3117aef336670c20c983cfdfd07f293f751d5fef7ca5ed14855d3fac01f7.lean/declarations/summable-indicator-mod-iff-summable-indicator-mod--9395f3411d36b08a304fb0c2.md) | 71 | `result-track:9395f3411d36b08a304fb0c26cd7b49e2827fa346f0b3e058ca3be178bd8ddd5` |
| 6 | `lemma` | [summable_indicator_mod_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant6d3c3117aef336670c20c983cfdfd07f293f751d5fef7ca5ed14855d3fac01f7.lean/declarations/summable-indicator-mod-iff--50db46cb3694f0b04afb8472.md) | 88 | `result-track:50db46cb3694f0b04afb84723bf98df5ba0115602ca7ac5fb36d41ae36d18273` |
| 7 | `lemma` | [Nat.sumByResidueClasses](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant6d3c3117aef336670c20c983cfdfd07f293f751d5fef7ca5ed14855d3fac01f7.lean/declarations/nat-sumbyresidueclasses--53a9abf151677053d70b7222.md) | 100 | `result-track:53a9abf151677053d70b7222e9abf050cf6ad8f4cbcfa867cf9fbf02bec429ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
