# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Vitali.Variant282704e7efacbca99c527382acccff2c64c7b565fd00b9a40a3d122d1c8649e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d08cd2cc7c0e01fb534bd9ac70fc4a2c0534ad4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vitali/Variant282704e7efacbca99c527382acccff2c64c7b565fd00b9a40a3d122d1c8649e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vitali/Variant282704e7efacbca99c527382acccff2c64c7b565fd00b9a40a3d122d1c8649e7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vitali/Variant282704e7efacbca99c527382acccff2c64c7b565fd00b9a40a3d122d1c8649e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d08cd2cc7c0e01fb534bd9ac70fc4a2c0534ad4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vitali/Variant282704e7efacbca99c527382acccff2c64c7b565fd00b9a40a3d122d1c8649e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vitali/Variant282704e7efacbca99c527382acccff2c64c7b565fd00b9a40a3d122d1c8649e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.Choice.QuotientRepresentatives` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RealScalar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vitali/Variant282704e7efacbca99c527382acccff2c64c7b565fd00b9a40a3d122d1c8649e7.lean/declarations/realscalar--9708fea46df2b81a25bdccfd.md) | 28 | `declaration-track:9708fea46df2b81a25bdccfdd1babdd406a240fb97c4d19e0f564426e2a5e086` |
| 2 | `def` | [rationalTranslateEquivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vitali/Variant282704e7efacbca99c527382acccff2c64c7b565fd00b9a40a3d122d1c8649e7.lean/declarations/rationaltranslateequivalent--2f5224d303ad8fd741cef6a6.md) | 30 | `declaration-track:2f5224d303ad8fd741cef6a6a49cb9fa3e6a5d45e793d583a4f2d8014af3ac9c` |
| 3 | `def` | [UnitInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vitali/Variant282704e7efacbca99c527382acccff2c64c7b565fd00b9a40a3d122d1c8649e7.lean/declarations/unitinterval--bc750028c13c8015e86487e7.md) | 34 | `declaration-track:bc750028c13c8015e86487e7f5389b3d508b91ac7bde2f50b748fef2fb00197a` |
| 4 | `def` | [IsVitaliSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vitali/Variant282704e7efacbca99c527382acccff2c64c7b565fd00b9a40a3d122d1c8649e7.lean/declarations/isvitaliset--4a9be804f4eb11f4f1c25180.md) | 37 | `declaration-track:4a9be804f4eb11f4f1c2518092f93908707f834b49251eabb3bc786807679fe1` |
| 5 | `theorem` | [vitali_exists_under_choice](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vitali/Variant282704e7efacbca99c527382acccff2c64c7b565fd00b9a40a3d122d1c8649e7.lean/declarations/vitali-exists-under-choice--2ee0b4d5b76431edcc4df490.md) | 43 | `result-track:2ee0b4d5b76431edcc4df490302eadfa4f547f7a8970bd59771cf58f1e7e543b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
