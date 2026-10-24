# Verification target: GRWTSK.Algebra.RecursiveCumulantHierarchy.Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffd390d5f4fc8a75ff817aebf4a533837c85f3a3",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/index.md) · [Full source](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffd390d5f4fc8a75ff817aebf4a533837c85f3a3`.

Source path: `GRWTSK/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteCumulantPrefix` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DirectionMomentFamily](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/declarations/directionmomentfamily--61f6e43d9af2054d6ed427e3.md) | 42 | `declaration-track:61f6e43d9af2054d6ed427e3bb9c688fd1be6c341b13e09505fc0014da21b37b` |
| 2 | `def` | [lowerFamily](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/declarations/lowerfamily--e254a7228b0b0cc248ed1a12.md) | 49 | `declaration-track:e254a7228b0b0cc248ed1a1219dfad90eb025c913d2777b47c09aee3efe885e8` |
| 3 | `def` | [recursiveCumulantStep](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/declarations/recursivecumulantstep--16cb9af72b134cacd39b85b2.md) | 58 | `declaration-track:16cb9af72b134cacd39b85b2fb5a0a5f867100e584729626a210284b433021d1` |
| 4 | `def` | [recursiveCumulantAux](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/declarations/recursivecumulantaux--48ff37c92ceb22b3aba1a1be.md) | 73 | `declaration-track:48ff37c92ceb22b3aba1a1be329baa9e20cbe1a2e8804c7da3911beac78ab266` |
| 5 | `def` | [recursiveCumulantFamily](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/declarations/recursivecumulantfamily--304bf2e64774e83f2f5f892e.md) | 83 | `declaration-track:304bf2e64774e83f2f5f892e0e427d1b7e5e17edbd495dd5a16ba0159ef1b7d0` |
| 6 | `theorem` | [recursiveCumulantAux_eq_step](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/declarations/recursivecumulantaux-eq-step--75850e43739292e8e19dfb5c.md) | 89 | `result-track:75850e43739292e8e19dfb5c4ffa99429c09723f411f5ffc7f3dbd437d184dfb` |
| 7 | `theorem` | [recursiveCumulantFamily_zero](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/declarations/recursivecumulantfamily-zero--bcfc62d344461014d7f4c670.md) | 100 | `result-track:bcfc62d344461014d7f4c67000c1673b647f09d3a6921091eaf2202ca23ea23c` |
| 8 | `theorem` | [recursiveCumulantFamily_succ](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/declarations/recursivecumulantfamily-succ--ccfa10d1d785b26d1c0cbaef.md) | 111 | `result-track:ccfa10d1d785b26d1c0cbaef5dd61dbccd0608d696b81e03d6e2f1e259a5b877` |
| 9 | `theorem` | [recursiveCumulantFamily_eq_recursive](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/declarations/recursivecumulantfamily-eq-recursive--76effcb24f05d3c8859e666d.md) | 146 | `result-track:76effcb24f05d3c8859e666d0b0a35e0df1b49478d1b8c6ee6bfc2ec4919349b` |
| 10 | `theorem` | [recursiveCumulantFamily_eq_moment_sub_proper](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/declarations/recursivecumulantfamily-eq-moment-sub-proper--ec006d1a2dc54fcad82cb4a1.md) | 163 | `result-track:ec006d1a2dc54fcad82cb4a15dc0b8af2178f3e46f3e7e9ef233fa866679d84d` |
| 11 | `structure` | [IsRecursiveCumulantFamily](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/declarations/isrecursivecumulantfamily--7daeab3a45f424d1498607a6.md) | 178 | `declaration-track:7daeab3a45f424d1498607a6548ada3db74474dab39b99fc3e3903136dd85232` |
| 12 | `theorem` | [recursiveCumulantFamily_isRecursive](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/declarations/recursivecumulantfamily-isrecursive--9bc2d22d86b9864a0a665bc6.md) | 192 | `result-track:9bc2d22d86b9864a0a665bc6b74e8f0cc875b4f9723a2e518b2496eb5cd2853b` |
| 13 | `theorem` | [IsRecursiveCumulantFamily.unique](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/declarations/isrecursivecumulantfamily-unique--66cfb97a278ed0c68e982015.md) | 201 | `result-track:66cfb97a278ed0c68e982015978fcdd93d9ad43a3196fe6d3012805e290b5685` |
| 14 | `theorem` | [recursiveCumulantFamily_unique](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/declarations/recursivecumulantfamily-unique--3fbd573bce94598f6140f66b.md) | 224 | `result-track:3fbd573bce94598f6140f66b0ee35a4683d3d10fd7f312ad536ed1e08ee4ddcb` |
| 15 | `def` | [MomentsAgreeBelow](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/declarations/momentsagreebelow--6f368784c2e3aff962135867.md) | 233 | `declaration-track:6f368784c2e3aff962135867736f0a7f4d2be6a158c7cb09af7c4cce652ed004` |
| 16 | `theorem` | [MomentsAgreeBelow.refl](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/declarations/momentsagreebelow-refl--a54c835c3c5fb6d0359896a1.md) | 240 | `result-track:a54c835c3c5fb6d0359896a1195b7d5173b3f7f82b0d23a872a655f77601b740` |
| 17 | `theorem` | [MomentsAgreeBelow.symm](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/declarations/momentsagreebelow-symm--b2b7acc9a31d732dc7799b0a.md) | 247 | `result-track:b2b7acc9a31d732dc7799b0a6ba172da03b243215400aad99a274b76d575f1fc` |
| 18 | `theorem` | [MomentsAgreeBelow.trans](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/declarations/momentsagreebelow-trans--770e8c2eeef20e3ca72f28cd.md) | 255 | `result-track:770e8c2eeef20e3ca72f28cd6d4c4506555d91562a14e62426d6d57238002fb7` |
| 19 | `theorem` | [recursiveCumulantFamily_agreeBelow_of_momentsAgreeBelow](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/declarations/recursivecumulantfamily-agreebelow-of-momentsagreebelow--c0fb9bbaa29bc873da181330.md) | 266 | `result-track:c0fb9bbaa29bc873da1813307b8945fd42f0e6283fe8c7c64782a43b11be81e0` |
| 20 | `theorem` | [recursiveCumulantFamily_eq_of_momentsAgreeBelow_succ](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/declarations/recursivecumulantfamily-eq-of-momentsagreebelow-succ--451fc5e258d87f0ddeb65347.md) | 300 | `result-track:451fc5e258d87f0ddeb6534799d1e0b81e3ede193b7745efd20b452f01c3e6c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
