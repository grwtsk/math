# Verification target: GRWTSK.Algebra.Instances.Variant5e55dd859bb4b07b7dd41373adb1a5ec0a31e274c47786e8c08d9237bfaf60cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94bdf1a781519ace1a1e1d7b1a9ab3fb5263c84b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Instances/Variant5e55dd859bb4b07b7dd41373adb1a5ec0a31e274c47786e8c08d9237bfaf60cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Instances/Variant5e55dd859bb4b07b7dd41373adb1a5ec0a31e274c47786e8c08d9237bfaf60cd.lean/index.md) · [Full source](../../../../mathematics/Algebra/Instances/Variant5e55dd859bb4b07b7dd41373adb1a5ec0a31e274c47786e8c08d9237bfaf60cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94bdf1a781519ace1a1e1d7b1a9ab3fb5263c84b`.

Source path: `GRWTSK/Algebra/Instances/Variant5e55dd859bb4b07b7dd41373adb1a5ec0a31e274c47786e8c08d9237bfaf60cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Instances/Variant5e55dd859bb4b07b7dd41373adb1a5ec0a31e274c47786e8c08d9237bfaf60cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Finiteness.Quotient` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Instances/Variant5e55dd859bb4b07b7dd41373adb1a5ec0a31e274c47786e8c08d9237bfaf60cd.lean/declarations/instance--c1b3137267b08982dd09e502.md) | 31 | `declaration-track:c1b3137267b08982dd09e502867d6a9b806bb5c61f0f4fd9da8927ef4b2b9099` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Instances/Variant5e55dd859bb4b07b7dd41373adb1a5ec0a31e274c47786e8c08d9237bfaf60cd.lean/declarations/instance--6ad2067f3ae42ac303dbef87.md) | 40 | `declaration-track:6ad2067f3ae42ac303dbef8784b1594aee93cc53fd946596bdded8eef6af9a72` |
| 3 | `lemma` | [Algebra.isSeparable_residueField_iff](../../../../mathematics/Algebra/Instances/Variant5e55dd859bb4b07b7dd41373adb1a5ec0a31e274c47786e8c08d9237bfaf60cd.lean/declarations/algebra-isseparable-residuefield-iff--48f7d302d9fcba1f33cdf81e.md) | 55 | `result-track:48f7d302d9fcba1f33cdf81e591267c330b95dad9ce11f08bf992cdc3668b5f3` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Instances/Variant5e55dd859bb4b07b7dd41373adb1a5ec0a31e274c47786e8c08d9237bfaf60cd.lean/declarations/instance--14bbc55877af6dc2f5bbed7d.md) | 66 | `declaration-track:14bbc55877af6dc2f5bbed7d88aec9c2843d3ee262a571ceee98c8e7b26b0e1a` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Instances/Variant5e55dd859bb4b07b7dd41373adb1a5ec0a31e274c47786e8c08d9237bfaf60cd.lean/declarations/instance--ea5ba776d2fb3944785a8246.md) | 70 | `declaration-track:ea5ba776d2fb3944785a82467aa2092b91b17b14136032826d579962f8b2c0e4` |
| 6 | `instance` | [ResidueField.algebraOfIsIntegral](../../../../mathematics/Algebra/Instances/Variant5e55dd859bb4b07b7dd41373adb1a5ec0a31e274c47786e8c08d9237bfaf60cd.lean/declarations/residuefield-algebraofisintegral--718cee9544782752806828f5.md) | 89 | `declaration-track:718cee9544782752806828f5cb58b52e9ce39247eef6b33386b63b835dc5a513` |
| 7 | `instance` | [ResidueField.isScalarTowerOfIsIntegral](../../../../mathematics/Algebra/Instances/Variant5e55dd859bb4b07b7dd41373adb1a5ec0a31e274c47786e8c08d9237bfaf60cd.lean/declarations/residuefield-isscalartowerofisintegral--bd81a2799987fe5efcfa5932.md) | 93 | `declaration-track:bd81a2799987fe5efcfa59329cb9c274f2db4d7bb7709af6334dbcea530f29c7` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Instances/Variant5e55dd859bb4b07b7dd41373adb1a5ec0a31e274c47786e8c08d9237bfaf60cd.lean/declarations/instance--b9bad93c7fec336be01fe226.md) | 97 | `declaration-track:b9bad93c7fec336be01fe226b33cc1f30042e6b3a17ef62a0493080f2eaffdf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
