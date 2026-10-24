# Verification target: GRWTSK.Algebra.Prism.Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f582cf3f60b9d8acf78dfb96ab3c46344b18e47",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Prism/Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Prism/Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80.lean/index.md) · [Full source](../../../../mathematics/Algebra/Prism/Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f582cf3f60b9d8acf78dfb96ab3c46344b18e47`.

Source path: `GRWTSK/Algebra/Prism/Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Prism/Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Prismatic.DeltaStructure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeIdeal](../../../../mathematics/Algebra/Prism/Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80.lean/declarations/primeideal--d8e724c6a656b763b5fff8ae.md) | 35 | `declaration-track:d8e724c6a656b763b5fff8aee06deb5a98133705ffbe55aceed547de5e82d12d` |
| 2 | `structure` | [AdicCompatibleSequence](../../../../mathematics/Algebra/Prism/Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80.lean/declarations/adiccompatiblesequence--72862bbf8e57bf07cb7f9b0c.md) | 44 | `declaration-track:72862bbf8e57bf07cb7f9b0c9e22d941a513b7f84b211dd9902e593d817857ad` |
| 3 | `def` | [ClassicallyAdicComplete](../../../../mathematics/Algebra/Prism/Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80.lean/declarations/classicallyadiccomplete--4f96de124bdaab9c719e9e94.md) | 56 | `declaration-track:4f96de124bdaab9c719e9e942b99ae08d39451b959bfa2dc697a0c37e48b05ca` |
| 4 | `def` | [PrincipalEffectiveCartierIdeal](../../../../mathematics/Algebra/Prism/Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80.lean/declarations/principaleffectivecartierideal--f01eeb73955988406f561d8a.md) | 66 | `declaration-track:f01eeb73955988406f561d8a21c25bd9a9a7fcf28e60a6fd6ca170cca4f065b1` |
| 5 | `def` | [BoundedPrimePowerTorsion](../../../../mathematics/Algebra/Prism/Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80.lean/declarations/boundedprimepowertorsion--bc2919e22c3b76d5ed30b14d.md) | 73 | `declaration-track:bc2919e22c3b76d5ed30b14d688dbff1fc7b996d6814e610cfba32aba7387c66` |
| 6 | `structure` | [BoundedPrismCandidate](../../../../mathematics/Algebra/Prism/Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80.lean/declarations/boundedprismcandidate--fa3b94bf8bc32625413ec92a.md) | 85 | `declaration-track:fa3b94bf8bc32625413ec92ab85e58f88ac243edc21f83feaf62dfb0066fb308` |
| 7 | `theorem` | [distinguished_mem](../../../../mathematics/Algebra/Prism/Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80.lean/declarations/distinguished-mem--435b054ba99df6ab1fe7378a.md) | 111 | `result-track:435b054ba99df6ab1fe7378ae9ed05fbe85958a04898e9d94b4c24f2599e20c6` |
| 8 | `theorem` | [distinguished_regular](../../../../mathematics/Algebra/Prism/Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80.lean/declarations/distinguished-regular--85c6d9ec98e3c9d49d8f15b9.md) | 118 | `result-track:85c6d9ec98e3c9d49d8f15b9e6a0d042684b2926cb3d4b8db1d02d58f3db1fa4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
