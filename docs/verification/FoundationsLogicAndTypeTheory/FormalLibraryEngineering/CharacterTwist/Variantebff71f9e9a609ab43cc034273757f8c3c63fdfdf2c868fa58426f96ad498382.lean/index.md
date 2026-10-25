# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CharacterTwist.Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03c64f4082ae916c32dd3ea7c345a2d2e0afdebf",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03c64f4082ae916c32dd3ea7c345a2d2e0afdebf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.CharacterProjector` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.DifferentialComplex` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CharacterTwist](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382.lean/declarations/charactertwist--fcf346b1500cd1139887ce9e.md) | 26 | `declaration-track:fcf346b1500cd1139887ce9e31c75aec7d75f2777e22783ea41e5ec06a124c42` |
| 2 | `def` | [twistedDifferential](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382.lean/declarations/twisteddifferential--3aa057f1155dd7cc5800e495.md) | 40 | `declaration-track:3aa057f1155dd7cc5800e495376cf70a129371ab1e2fc9486b8e12dc3d2e7d5a` |
| 3 | `theorem` | [twistedDifferential_sq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382.lean/declarations/twisteddifferential-sq-zero--cfbd606fc107bb685115372e.md) | 45 | `result-track:cfbd606fc107bb685115372e915ca49f022ab023914c258af75e020127de80e3` |
| 4 | `def` | [twistedComplex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382.lean/declarations/twistedcomplex--87d23f3863160f60dd665b03.md) | 64 | `declaration-track:87d23f3863160f60dd665b03afccd971f1bd919590f3a310acb0f55434116966` |
| 5 | `def` | [identity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382.lean/declarations/identity--f800bcda9d95b2143ca1439a.md) | 71 | `declaration-track:f800bcda9d95b2143ca1439ab64e53f4e65b6c2f17b641bfb9b106550c640208` |
| 6 | `theorem` | [identity_twistedDifferential](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382.lean/declarations/identity-twisteddifferential--f08b036d3cf11033289582fa.md) | 80 | `result-track:f08b036d3cf11033289582fa0bf9eefa4bd02c91ae858b5b7cec1fd5e8d849d1` |
| 7 | `theorem` | [characterTwist_flat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382.lean/declarations/charactertwist-flat--0942c50a3b4230c959ba495b.md) | 87 | `result-track:0942c50a3b4230c959ba495b7819af08c8c56e84bd2ee739681dcdeeeed99fa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
