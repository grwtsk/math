# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.VitaliCaratheodory.Variant3e7994028e35c88df48f353aaf60d9ab00864fab92f20ea492a7f1cadc73d066

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a42c3a5059361d28b5ed703db2510f7189b5cc99",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant3e7994028e35c88df48f353aaf60d9ab00864fab92f20ea492a7f1cadc73d066.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant3e7994028e35c88df48f353aaf60d9ab00864fab92f20ea492a7f1cadc73d066.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant3e7994028e35c88df48f353aaf60d9ab00864fab92f20ea492a7f1cadc73d066.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a42c3a5059361d28b5ed703db2510f7189b5cc99`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant3e7994028e35c88df48f353aaf60d9ab00864fab92f20ea492a7f1cadc73d066.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant3e7994028e35c88df48f353aaf60d9ab00864fab92f20ea492a7f1cadc73d066.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Regular` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Semicontinuous` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.EReal.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [SimpleFunc.exists_le_lowerSemicontinuous_lintegral_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant3e7994028e35c88df48f353aaf60d9ab00864fab92f20ea492a7f1cadc73d066.lean/declarations/simplefunc-exists-le-lowersemicontinuous-lintegral-ge--64f8daa313a9e49fed36c923.md) | 91 | `result-track:64f8daa313a9e49fed36c9237a59f3fba166a298ef3b507fbd4a1a3327cd828f` |
| 2 | `theorem` | [exists_le_lowerSemicontinuous_lintegral_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant3e7994028e35c88df48f353aaf60d9ab00864fab92f20ea492a7f1cadc73d066.lean/declarations/exists-le-lowersemicontinuous-lintegral-ge--dd6dd548d5e890b46a5c9183.md) | 158 | `result-track:dd6dd548d5e890b46a5c91837292496b66532c133065e2e5971819d424331924` |
| 3 | `theorem` | [exists_lt_lowerSemicontinuous_lintegral_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant3e7994028e35c88df48f353aaf60d9ab00864fab92f20ea492a7f1cadc73d066.lean/declarations/exists-lt-lowersemicontinuous-lintegral-ge--a1e78291cba9c304ec4192fa.md) | 195 | `result-track:a1e78291cba9c304ec4192fabe5a1aa970e56f4ccf892478f87ac1673f87c803` |
| 4 | `theorem` | [exists_lt_lowerSemicontinuous_lintegral_ge_of_aemeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant3e7994028e35c88df48f353aaf60d9ab00864fab92f20ea492a7f1cadc73d066.lean/declarations/exists-lt-lowersemicontinuous-lintegral-ge-of-aemeasurable--b6837abd8f640e079ca0aa8c.md) | 221 | `result-track:b6837abd8f640e079ca0aa8c8e6a760b25abb4e5f4e04ad0a380f9dd66456716` |
| 5 | `theorem` | [exists_lt_lowerSemicontinuous_integral_gt_nnreal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant3e7994028e35c88df48f353aaf60d9ab00864fab92f20ea492a7f1cadc73d066.lean/declarations/exists-lt-lowersemicontinuous-integral-gt-nnreal--f480fde53c0fd6b88a7af2e7.md) | 258 | `result-track:f480fde53c0fd6b88a7af2e713d84ef095d966b7adfdf95a6bc034633efd70bc` |
| 6 | `theorem` | [SimpleFunc.exists_upperSemicontinuous_le_lintegral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant3e7994028e35c88df48f353aaf60d9ab00864fab92f20ea492a7f1cadc73d066.lean/declarations/simplefunc-exists-uppersemicontinuous-le-lintegral-le--9acf60c127cb909d72ba61b9.md) | 309 | `result-track:9acf60c127cb909d72ba61b901dd02b83ed887730f40365d8b599fb5f66b17b6` |
| 7 | `theorem` | [exists_upperSemicontinuous_le_lintegral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant3e7994028e35c88df48f353aaf60d9ab00864fab92f20ea492a7f1cadc73d066.lean/declarations/exists-uppersemicontinuous-le-lintegral-le--7abeb508eb46a0257d8f3cdd.md) | 374 | `result-track:7abeb508eb46a0257d8f3cdd2e0429b4b0546d22ab26ebe49cfef46e81b44613` |
| 8 | `theorem` | [exists_upperSemicontinuous_le_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant3e7994028e35c88df48f353aaf60d9ab00864fab92f20ea492a7f1cadc73d066.lean/declarations/exists-uppersemicontinuous-le-integral-le--0b13fc107c20d6cf474c97a9.md) | 406 | `result-track:0b13fc107c20d6cf474c97a9813aee03f243baeb9b1ca8a93b06336c787fc3f4` |
| 9 | `theorem` | [exists_lt_lowerSemicontinuous_integral_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant3e7994028e35c88df48f353aaf60d9ab00864fab92f20ea492a7f1cadc73d066.lean/declarations/exists-lt-lowersemicontinuous-integral-lt--d87f14c2a6871d2df5a1b6dd.md) | 440 | `result-track:d87f14c2a6871d2df5a1b6dd474f94e02846a061cf2444df8e78a8c2f1774d69` |
| 10 | `theorem` | [exists_upperSemicontinuous_lt_integral_gt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant3e7994028e35c88df48f353aaf60d9ab00864fab92f20ea492a7f1cadc73d066.lean/declarations/exists-uppersemicontinuous-lt-integral-gt--aa964bef33554e97bf28f2c2.md) | 518 | `result-track:aa964bef33554e97bf28f2c2b319e46f7249a4f08e11d8e7fdcc841492c2eb7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
