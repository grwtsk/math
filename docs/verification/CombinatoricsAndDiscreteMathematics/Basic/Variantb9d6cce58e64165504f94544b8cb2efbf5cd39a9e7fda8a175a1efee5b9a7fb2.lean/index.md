# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variantb9d6cce58e64165504f94544b8cb2efbf5cd39a9e7fda8a175a1efee5b9a7fb2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abd56906346c593c5485f1921d033f5b309999ed",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantb9d6cce58e64165504f94544b8cb2efbf5cd39a9e7fda8a175a1efee5b9a7fb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantb9d6cce58e64165504f94544b8cb2efbf5cd39a9e7fda8a175a1efee5b9a7fb2.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantb9d6cce58e64165504f94544b8cb2efbf5cd39a9e7fda8a175a1efee5b9a7fb2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abd56906346c593c5485f1921d033f5b309999ed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantb9d6cce58e64165504f94544b8cb2efbf5cd39a9e7fda8a175a1efee5b9a7fb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variantb9d6cce58e64165504f94544b8cb2efbf5cd39a9e7fda8a175a1efee5b9a7fb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Rat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CapacityDigest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantb9d6cce58e64165504f94544b8cb2efbf5cd39a9e7fda8a175a1efee5b9a7fb2.lean/declarations/capacitydigest--e98d41d14eb1ecf379876da2.md) | 24 | `declaration-track:e98d41d14eb1ecf379876da2c360d8a85eb0b05870685af977affe421b0bd7ed` |
| 2 | `structure` | [BalanceDigest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantb9d6cce58e64165504f94544b8cb2efbf5cd39a9e7fda8a175a1efee5b9a7fb2.lean/declarations/balancedigest--597b6070512ca9f22e609d9f.md) | 28 | `declaration-track:597b6070512ca9f22e609d9f2d75c76625b6fb4e3ef66f5f0360ca4a01f982fb` |
| 3 | `structure` | [RealizationDigest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantb9d6cce58e64165504f94544b8cb2efbf5cd39a9e7fda8a175a1efee5b9a7fb2.lean/declarations/realizationdigest--7aad8c708298cdea17966528.md) | 32 | `declaration-track:7aad8c708298cdea17966528a5700027bb326debc5801a50a082c55f8e44f8f4` |
| 4 | `structure` | [ReconstructionDigest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantb9d6cce58e64165504f94544b8cb2efbf5cd39a9e7fda8a175a1efee5b9a7fb2.lean/declarations/reconstructiondigest--8440bec5a9cd6e7023118729.md) | 36 | `declaration-track:8440bec5a9cd6e70231187295f78030ee52721e88e599054494ed1c851339073` |
| 5 | `structure` | [ArithmeticCutId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantb9d6cce58e64165504f94544b8cb2efbf5cd39a9e7fda8a175a1efee5b9a7fb2.lean/declarations/arithmeticcutid--a90741d783d5c48687931711.md) | 40 | `declaration-track:a90741d783d5c486879317113189a7aa6d3b9edcc02df74b7642a4c9a505d754` |
| 6 | `structure` | [CompressionId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantb9d6cce58e64165504f94544b8cb2efbf5cd39a9e7fda8a175a1efee5b9a7fb2.lean/declarations/compressionid--4bdc31cbfa88aee48a63fbdd.md) | 44 | `declaration-track:4bdc31cbfa88aee48a63fbdd2e01e26befbcf0ec85f35f8bfbfec2f77a2b17c6` |
| 7 | `structure` | [CertificateDigest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantb9d6cce58e64165504f94544b8cb2efbf5cd39a9e7fda8a175a1efee5b9a7fb2.lean/declarations/certificatedigest--ca8aa01bc769a4ad1e15d452.md) | 48 | `declaration-track:ca8aa01bc769a4ad1e15d452873fba0d7a8174784524003516ae8b57788fc253` |
| 8 | `inductive` | [CertificateStatus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantb9d6cce58e64165504f94544b8cb2efbf5cd39a9e7fda8a175a1efee5b9a7fb2.lean/declarations/certificatestatus--0bb2fd40d2367ca0ede3d9e8.md) | 52 | `declaration-track:0bb2fd40d2367ca0ede3d9e85abd38a8e7ca5f90e650ea895161b364d7f34d8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
