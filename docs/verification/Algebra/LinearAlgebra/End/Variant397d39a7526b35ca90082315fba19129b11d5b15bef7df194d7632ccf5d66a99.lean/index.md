# Verification target: GRWTSK.Algebra.LinearAlgebra.End.Variant397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b7fc2c84191e0d157c06be26aba3eb83f55c6f6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/End/Variant397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/End/Variant397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/End/Variant397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b7fc2c84191e0d157c06be26aba3eb83f55c6f6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/End/Variant397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/End/Variant397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.End` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.NatInt` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AddMonoid.End.natCast_def](../../../../../mathematics/Algebra/LinearAlgebra/End/Variant397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99.lean/declarations/addmonoid-end-natcast-def--4f5a6f81702d473e9be1c844.md) | 28 | `result-track:4f5a6f81702d473e9be1c8441ccccc09bc78f80c321633a4e0a2169ec9aa8d61` |
| 2 | `def` | [Module.toAddMonoidEnd](../../../../../mathematics/Algebra/LinearAlgebra/End/Variant397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99.lean/declarations/module-toaddmonoidend--0e297aa9b59a1f7507b12df3.md) | 38 | `declaration-track:0e297aa9b59a1f7507b12df3149ce4b510700a1765addb877185d91302832ee7` |
| 3 | `def` | [smulAddHom](../../../../../mathematics/Algebra/LinearAlgebra/End/Variant397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99.lean/declarations/smuladdhom--26d6b19f1cce0a1ccf4c29a8.md) | 46 | `declaration-track:26d6b19f1cce0a1ccf4c29a835f0b3ce10e8f4f3b1caf647b11f2b7c3338cffb` |
| 4 | `theorem` | [smulAddHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/End/Variant397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99.lean/declarations/smuladdhom-apply--613ff1ccd78ca97965273556.md) | 52 | `result-track:613ff1ccd78ca979652735567754b755e3983233cb88343ab0baaf8321f4bb42` |
| 5 | `lemma` | [IsAddUnit.smul_left](../../../../../mathematics/Algebra/LinearAlgebra/End/Variant397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99.lean/declarations/isaddunit-smul-left--fd004d1cd9feb0493ad968d5.md) | 57 | `result-track:fd004d1cd9feb0493ad968d5008ad1ea79bed24de0af157d90a6ce206e69508c` |
| 6 | `lemma` | [IsAddUnit.smul_right](../../../../../mathematics/Algebra/LinearAlgebra/End/Variant397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99.lean/declarations/isaddunit-smul-right--4f7038340cfb746ee33f596c.md) | 63 | `result-track:4f7038340cfb746ee33f596cf8b2c38ce0f2cc38b90866331bde5a30160bb61f` |
| 7 | `theorem` | [AddMonoid.End.intCast_def](../../../../../mathematics/Algebra/LinearAlgebra/End/Variant397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99.lean/declarations/addmonoid-end-intcast-def--b7def7fdab3a859a86de5a2f.md) | 72 | `result-track:b7def7fdab3a859a86de5a2f861b82d5dbce717c704f9e8f6760a1474276a2e5` |
| 8 | `lemma` | [Int.cast_smul_eq_zsmul](../../../../../mathematics/Algebra/LinearAlgebra/End/Variant397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99.lean/declarations/int-cast-smul-eq-zsmul--efbe4ebb6f373c162e442204.md) | 88 | `result-track:efbe4ebb6f373c162e4422045615fb9c30cc916023f85b8c54957577f334dfe0` |
| 9 | `theorem` | [int_smul_eq_zsmul](../../../../../mathematics/Algebra/LinearAlgebra/End/Variant397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99.lean/declarations/int-smul-eq-zsmul--9cfeea71448ae23cbf0739e8.md) | 98 | `result-track:9cfeea71448ae23cbf0739e8c6a94d86fd5dcd960eac2a05d96e3560c9a5c7f7` |
| 10 | `def` | [AddCommGroup.uniqueIntModule](../../../../../mathematics/Algebra/LinearAlgebra/End/Variant397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99.lean/declarations/addcommgroup-uniqueintmodule--7b6d5046fd1d5b5d09fb52a4.md) | 103 | `declaration-track:7b6d5046fd1d5b5d09fb52a4c55b500466d616c39dbea282bd7b6f919ff1c74e` |
| 11 | `theorem` | [map_intCast_smul](../../../../../mathematics/Algebra/LinearAlgebra/End/Variant397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99.lean/declarations/map-intcast-smul--637ffcd637cdfbbac0f7648d.md) | 109 | `result-track:637ffcd637cdfbbac0f7648db7a8580f77ce59485faa2a036ce7fb637eb3b3ff` |
| 12 | `instance` | [AddCommGroup.intIsScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/End/Variant397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99.lean/declarations/addcommgroup-intisscalartower--3b8ba75c2590bad857149aa5.md) | 114 | `declaration-track:3b8ba75c2590bad857149aa5096dc28eb8183daeb8384308571c0727816db229` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
