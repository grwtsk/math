# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RulePatternUniverseBug.Variant06747ee7fb7e5b15de02455de09bee27d4caa26808c4e5938d2cb230ea2b3d02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8e7db165a23ecb5852dcaef94972c31a1585cea",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePatternUniverseBug/Variant06747ee7fb7e5b15de02455de09bee27d4caa26808c4e5938d2cb230ea2b3d02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePatternUniverseBug/Variant06747ee7fb7e5b15de02455de09bee27d4caa26808c4e5938d2cb230ea2b3d02.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePatternUniverseBug/Variant06747ee7fb7e5b15de02455de09bee27d4caa26808c4e5938d2cb230ea2b3d02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8e7db165a23ecb5852dcaef94972c31a1585cea`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePatternUniverseBug/Variant06747ee7fb7e5b15de02455de09bee27d4caa26808c4e5938d2cb230ea2b3d02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePatternUniverseBug/Variant06747ee7fb7e5b15de02455de09bee27d4caa26808c4e5938d2cb230ea2b3d02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop.Frontend.Attribute` — import line 11; external provider; requires a separately pinned dependency.
- `Aesop.Frontend.Saturate` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [len](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePatternUniverseBug/Variant06747ee7fb7e5b15de02455de09bee27d4caa26808c4e5938d2cb230ea2b3d02.lean/declarations/len--a21834d4561ce7fafe6fac00.md) | 19 | `declaration-track:a21834d4561ce7fafe6fac00d7c60d0fe572c9ad29a9b69e24cbc4c3cba47181` |
| 2 | `theorem` | [len_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePatternUniverseBug/Variant06747ee7fb7e5b15de02455de09bee27d4caa26808c4e5938d2cb230ea2b3d02.lean/declarations/len-pos--3967778af3541387f4ebcc73.md) | 25 | `result-track:3967778af3541387f4ebcc73a7c7f83bf86f2614fb92539fbb2ab2d69bf65030` |
| 3 | `def` | [indexOpt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePatternUniverseBug/Variant06747ee7fb7e5b15de02455de09bee27d4caa26808c4e5938d2cb230ea2b3d02.lean/declarations/indexopt--34075289126368ec0c14ccd0.md) | 29 | `declaration-track:34075289126368ec0c14ccd0161c06c7d960b4bebed51f52df579e7dd0d0fb37` |
| 4 | `theorem` | [indexOpt_bounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePatternUniverseBug/Variant06747ee7fb7e5b15de02455de09bee27d4caa26808c4e5938d2cb230ea2b3d02.lean/declarations/indexopt-bounds--f72215c4189cc16fd3adb84c.md) | 34 | `result-track:f72215c4189cc16fd3adb84c18da12a2712ea916850c3b57189cab425dfbb939` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
