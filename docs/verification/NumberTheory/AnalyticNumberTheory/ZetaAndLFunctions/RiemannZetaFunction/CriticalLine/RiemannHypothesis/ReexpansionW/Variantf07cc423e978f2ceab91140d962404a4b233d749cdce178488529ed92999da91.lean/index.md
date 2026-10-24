# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReexpansionW.Variantf07cc423e978f2ceab91140d962404a4b233d749cdce178488529ed92999da91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ee539ef73d8e16e484e7bff25a2268233265d58",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionW/Variantf07cc423e978f2ceab91140d962404a4b233d749cdce178488529ed92999da91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionW/Variantf07cc423e978f2ceab91140d962404a4b233d749cdce178488529ed92999da91.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionW/Variantf07cc423e978f2ceab91140d962404a4b233d749cdce178488529ed92999da91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ee539ef73d8e16e484e7bff25a2268233265d58`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionW/Variantf07cc423e978f2ceab91140d962404a4b233d749cdce178488529ed92999da91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionW/Variantf07cc423e978f2ceab91140d962404a4b233d749cdce178488529ed92999da91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Transfer.InputsW` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Coeff.ReexpansionGen` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfL](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionW/Variantf07cc423e978f2ceab91140d962404a4b233d749cdce178488529ed92999da91.lean/declarations/halfl--1ee36459844de06411dc7a84.md) | 38 | `declaration-track:1ee36459844de06411dc7a84f43c57c43711906c4fc92f880e10261428d00b28` |
| 2 | `lemma` | [halfL_re](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionW/Variantf07cc423e978f2ceab91140d962404a4b233d749cdce178488529ed92999da91.lean/declarations/halfl-re--85e0f4e51c0afe93555f13f3.md) | 40 | `result-track:85e0f4e51c0afe93555f13f3ea9cef13bd91e46611b9f6403509fa5a8280fb5f` |
| 3 | `def` | [eW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionW/Variantf07cc423e978f2ceab91140d962404a4b233d749cdce178488529ed92999da91.lean/declarations/ew--57e3532d725ab4e8eda722a0.md) | 43 | `declaration-track:57e3532d725ab4e8eda722a09b32e12351343b677c742e2609d44af8bc6fdc72` |
| 4 | `theorem` | [wReexpansion_eW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionW/Variantf07cc423e978f2ceab91140d962404a4b233d749cdce178488529ed92999da91.lean/declarations/wreexpansion-ew--f4b1ca1ec8e55a34124d7c3b.md) | 46 | `result-track:f4b1ca1ec8e55a34124d7c3bf08e4c066c6aaff2eb252441293425f7c848f70a` |
| 5 | `theorem` | [wReexpansion](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionW/Variantf07cc423e978f2ceab91140d962404a4b233d749cdce178488529ed92999da91.lean/declarations/wreexpansion--12f1c9e24096943778242014.md) | 60 | `result-track:12f1c9e24096943778242014c810d950733a2148d0d5e2e259180c5778352e8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
