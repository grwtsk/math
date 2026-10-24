# Verification target: GRWTSK.Algebra.BSDTwistWitness.Variant258dc92878c96cab59dcc3ba3079bd7b395f2b69bb8938ef4a449dbd653e4a26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "441378d858e502a17a7a37d8d8d7e4ec4d8f8685",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/BSDTwistWitness/Variant258dc92878c96cab59dcc3ba3079bd7b395f2b69bb8938ef4a449dbd653e4a26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/BSDTwistWitness/Variant258dc92878c96cab59dcc3ba3079bd7b395f2b69bb8938ef4a449dbd653e4a26.lean/index.md) · [Full source](../../../../mathematics/Algebra/BSDTwistWitness/Variant258dc92878c96cab59dcc3ba3079bd7b395f2b69bb8938ef4a449dbd653e4a26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `441378d858e502a17a7a37d8d8d7e4ec4d8f8685`.

Source path: `GRWTSK/Algebra/BSDTwistWitness/Variant258dc92878c96cab59dcc3ba3079bd7b395f2b69bb8938ef4a449dbd653e4a26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/BSDTwistWitness/Variant258dc92878c96cab59dcc3ba3079bd7b395f2b69bb8938ef4a449dbd653e4a26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Arithmetic.Weierstrass` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [QuadraticTwistFamilyWitness](../../../../mathematics/Algebra/BSDTwistWitness/Variant258dc92878c96cab59dcc3ba3079bd7b395f2b69bb8938ef4a449dbd653e4a26.lean/declarations/quadratictwistfamilywitness--0a4eacd1f2fcb58ec624ab35.md) | 24 | `declaration-track:0a4eacd1f2fcb58ec624ab35f10a31ff2cdc4172a9a92b9996b6a0fc1ba8b7f9` |
| 2 | `def` | [AllTwistsCertified](../../../../mathematics/Algebra/BSDTwistWitness/Variant258dc92878c96cab59dcc3ba3079bd7b395f2b69bb8938ef4a449dbd653e4a26.lean/declarations/alltwistscertified--2761b15416efdf4ba373fa8d.md) | 37 | `declaration-track:2761b15416efdf4ba373fa8d3662a0e4713397cf4886697aae774ff7a289e3d6` |
| 3 | `structure` | [CertifiedQuadraticTwistFamily](../../../../mathematics/Algebra/BSDTwistWitness/Variant258dc92878c96cab59dcc3ba3079bd7b395f2b69bb8938ef4a449dbd653e4a26.lean/declarations/certifiedquadratictwistfamily--dd5078f0ad2e97b322fa0076.md) | 41 | `declaration-track:dd5078f0ad2e97b322fa007693dd39bb72c96f7441dfa0aa0c8d8feab9ff7568` |
| 4 | `theorem` | [certified_twist_family_all_certified](../../../../mathematics/Algebra/BSDTwistWitness/Variant258dc92878c96cab59dcc3ba3079bd7b395f2b69bb8938ef4a449dbd653e4a26.lean/declarations/certified-twist-family-all-certified--b92963b3e23f7b169ad1f69f.md) | 46 | `result-track:b92963b3e23f7b169ad1f69f839448274f78dc09b829ab4cb2a3713226a283c4` |
| 5 | `theorem` | [certified_twist_family_infinite](../../../../mathematics/Algebra/BSDTwistWitness/Variant258dc92878c96cab59dcc3ba3079bd7b395f2b69bb8938ef4a449dbd653e4a26.lean/declarations/certified-twist-family-infinite--2418c2eda311683ee2d2da45.md) | 51 | `result-track:2418c2eda311683ee2d2da458b7314fd5208a96d64f037d8c0be22c710cd41f5` |
| 6 | `structure` | [BSDMonodromyParameterSource](../../../../mathematics/Algebra/BSDTwistWitness/Variant258dc92878c96cab59dcc3ba3079bd7b395f2b69bb8938ef4a449dbd653e4a26.lean/declarations/bsdmonodromyparametersource--1cd4ea3e5477895deaf71aef.md) | 56 | `declaration-track:1cd4ea3e5477895deaf71aefc36c01e3da05965cf0039e9998bf33d9f6dcb2c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
