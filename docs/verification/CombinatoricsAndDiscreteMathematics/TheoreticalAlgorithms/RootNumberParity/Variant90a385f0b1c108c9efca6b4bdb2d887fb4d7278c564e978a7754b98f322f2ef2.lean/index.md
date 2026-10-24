# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RootNumberParity.Variant90a385f0b1c108c9efca6b4bdb2d887fb4d7278c564e978a7754b98f322f2ef2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e50a2716acefe6a6d4add8a477d8d066d11ff4c0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90a385f0b1c108c9efca6b4bdb2d887fb4d7278c564e978a7754b98f322f2ef2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90a385f0b1c108c9efca6b4bdb2d887fb4d7278c564e978a7754b98f322f2ef2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90a385f0b1c108c9efca6b4bdb2d887fb4d7278c564e978a7754b98f322f2ef2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e50a2716acefe6a6d4add8a477d8d066d11ff4c0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90a385f0b1c108c9efca6b4bdb2d887fb4d7278c564e978a7754b98f322f2ef2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90a385f0b1c108c9efca6b4bdb2d887fb4d7278c564e978a7754b98f322f2ef2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.BSD.Statement` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BSDRootNumberParityData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90a385f0b1c108c9efca6b4bdb2d887fb4d7278c564e978a7754b98f322f2ef2.lean/declarations/bsdrootnumberparitydata--52debc82d01011487f25c19e.md) | 45 | `declaration-track:52debc82d01011487f25c19ef5690c63ed031ba55f50b8dba65f5530dd9ca4e3` |
| 2 | `structure` | [BSDRootNumberParityCompatibilityCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90a385f0b1c108c9efca6b4bdb2d887fb4d7278c564e978a7754b98f322f2ef2.lean/declarations/bsdrootnumberparitycompatibilitycertificate--ae289585385c9bc8823eaac5.md) | 59 | `declaration-track:ae289585385c9bc8823eaac5159725e71aa387772ae3de1da400f909d86de17d` |
| 3 | `def` | [BSDRootNumberParityCompatibilityCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90a385f0b1c108c9efca6b4bdb2d887fb4d7278c564e978a7754b98f322f2ef2.lean/declarations/bsdrootnumberparitycompatibilitycertificate-certifiedforbsd--3fffba6f915b9cb7e148a81f.md) | 84 | `declaration-track:3fffba6f915b9cb7e148a81f99c32d0d4b86c3ca34bdb998201cdd4febb66c88` |
| 4 | `theorem` | [BSDRootNumberParityCompatibilityCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RootNumberParity/Variant90a385f0b1c108c9efca6b4bdb2d887fb4d7278c564e978a7754b98f322f2ef2.lean/declarations/bsdrootnumberparitycompatibilitycertificate-certifiedforbsd-of-fields--98be311f03ecb0f185b66faf.md) | 105 | `result-track:98be311f03ecb0f185b66faf9dccf7df6a48c37ecfe4c5aaed8ba5aa6ca0d406` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
