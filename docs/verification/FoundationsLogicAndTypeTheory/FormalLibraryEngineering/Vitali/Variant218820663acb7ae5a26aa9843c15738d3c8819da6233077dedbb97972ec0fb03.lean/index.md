# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Vitali.Variant218820663acb7ae5a26aa9843c15738d3c8819da6233077dedbb97972ec0fb03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e89c30bd570c7361b1f7a5d43700cc0ca6f4c2d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vitali/Variant218820663acb7ae5a26aa9843c15738d3c8819da6233077dedbb97972ec0fb03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vitali/Variant218820663acb7ae5a26aa9843c15738d3c8819da6233077dedbb97972ec0fb03.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vitali/Variant218820663acb7ae5a26aa9843c15738d3c8819da6233077dedbb97972ec0fb03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e89c30bd570c7361b1f7a5d43700cc0ca6f4c2d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vitali/Variant218820663acb7ae5a26aa9843c15738d3c8819da6233077dedbb97972ec0fb03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vitali/Variant218820663acb7ae5a26aa9843c15738d3c8819da6233077dedbb97972ec0fb03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.Choice.QuotientRepresentatives` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RealScalar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vitali/Variant218820663acb7ae5a26aa9843c15738d3c8819da6233077dedbb97972ec0fb03.lean/declarations/realscalar--970d6bf647ba5afff07563b9.md) | 20 | `declaration-track:970d6bf647ba5afff07563b954b6df88ea25896d54a44e5e70f90bc2915d3dcc` |
| 2 | `def` | [rationalTranslateEquivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vitali/Variant218820663acb7ae5a26aa9843c15738d3c8819da6233077dedbb97972ec0fb03.lean/declarations/rationaltranslateequivalent--51af404318936102df93a1f8.md) | 22 | `declaration-track:51af404318936102df93a1f8722d6650ac76bbe0a026bd24b1176189ee4008ef` |
| 3 | `def` | [UnitInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vitali/Variant218820663acb7ae5a26aa9843c15738d3c8819da6233077dedbb97972ec0fb03.lean/declarations/unitinterval--1a3496c63ef4cd50e5edf4e4.md) | 26 | `declaration-track:1a3496c63ef4cd50e5edf4e4ec545ca49ad7b5524960b9d2e5c033a26862867d` |
| 4 | `def` | [IsVitaliSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vitali/Variant218820663acb7ae5a26aa9843c15738d3c8819da6233077dedbb97972ec0fb03.lean/declarations/isvitaliset--e45c5a2c037874e92af024ad.md) | 29 | `declaration-track:e45c5a2c037874e92af024ad97b80985b11c82ef68a574d8049b8320900a17aa` |
| 5 | `theorem` | [vitali_exists_under_choice](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vitali/Variant218820663acb7ae5a26aa9843c15738d3c8819da6233077dedbb97972ec0fb03.lean/declarations/vitali-exists-under-choice--84dc59b2a63fa28719b94927.md) | 35 | `result-track:84dc59b2a63fa28719b949271d8697ea6422bf01d24c2e1922091bd078e914f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
