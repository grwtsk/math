# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Prime.Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6eed9ee54abf02847cd4ce5c2948e616412cbf6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6eed9ee54abf02847cd4ce5c2948e616412cbf6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Num.ZNum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [minFacAux](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean/declarations/minfacaux--600d00104f83359a4380de09.md) | 35 | `declaration-track:600d00104f83359a4380de09c3633f9ab27617fe2e65dadc17276d622f1632f6` |
| 2 | `theorem` | [minFacAux_to_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean/declarations/minfacaux-to-nat--17ff13722fd3d285744ec87a.md) | 40 | `result-track:17ff13722fd3d285744ec87a50156613d02ba670dacad144badfc620e502c43a` |
| 3 | `def` | [minFac](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean/declarations/minfac--1c509bd67e7b014e0f7ebd84.md) | 53 | `declaration-track:1c509bd67e7b014e0f7ebd843caeaf7449904b49d19fa1ac4a5519a1c13702cd` |
| 4 | `theorem` | [minFac_to_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean/declarations/minfac-to-nat--e0a7fd245fc50045897d6b6e.md) | 59 | `result-track:e0a7fd245fc50045897d6b6e407b547345b0ffce8e34a50a08fe9d935c2b56a4` |
| 5 | `def` | [Prime](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean/declarations/prime--9382ff28beedc5d611f35465.md) | 80 | `declaration-track:9382ff28beedc5d611f3546542b93da0b87c8a23c3962f4ced331ffc5db8fd79` |
| 6 | `instance` | [decidablePrime](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean/declarations/decidableprime--baecb8e1187fff020a4715de.md) | 83 | `declaration-track:baecb8e1187fff020a4715de53e46d56c5f6c831738f153b7c71f4c0f0e6d8e7` |
| 7 | `def` | [minFac](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean/declarations/minfac--378e3b650830e43074df06ca.md) | 105 | `declaration-track:378e3b650830e43074df06ca6d65924a493ced1a1aa1a411e2a36f7d90ec620a` |
| 8 | `theorem` | [minFac_to_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean/declarations/minfac-to-nat--2b64c6ede9d6608ee54ca8fa.md) | 110 | `result-track:2b64c6ede9d6608ee54ca8fa64d746b297f6bb2ad7e34c0d061b5d3f025d0169` |
| 9 | `def` | [Prime](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean/declarations/prime--442dbc9e9279e8616796aa86.md) | 116 | `declaration-track:442dbc9e9279e8616796aa86839f89ee01c4c9814ca3a86ba91690f921baa49c` |
| 10 | `instance` | [decidablePrime](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean/declarations/decidableprime--686873d3380a883c860ed94c.md) | 119 | `declaration-track:686873d3380a883c860ed94c937426babb6c97dc14c4cd9eaf679fccf57b32eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
