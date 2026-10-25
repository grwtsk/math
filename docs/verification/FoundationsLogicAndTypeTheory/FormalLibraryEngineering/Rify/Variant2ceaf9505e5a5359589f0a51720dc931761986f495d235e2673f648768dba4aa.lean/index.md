# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rify.Variant2ceaf9505e5a5359589f0a51720dc931761986f495d235e2673f648768dba4aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a3f57cf173c12e6c099365531f65cf0e0340ba0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant2ceaf9505e5a5359589f0a51720dc931761986f495d235e2673f648768dba4aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant2ceaf9505e5a5359589f0a51720dc931761986f495d235e2673f648768dba4aa.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant2ceaf9505e5a5359589f0a51720dc931761986f495d235e2673f648768dba4aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a3f57cf173c12e6c099365531f65cf0e0340ba0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant2ceaf9505e5a5359589f0a51720dc931761986f495d235e2673f648768dba4aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant2ceaf9505e5a5359589f0a51720dc931761986f495d235e2673f648768dba4aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Cast.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Qify` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant2ceaf9505e5a5359589f0a51720dc931761986f495d235e2673f648768dba4aa.lean/declarations/syntax--5c757a8ea7225f39c6769b21.md) | 68 | `declaration-track:5c757a8ea7225f39c6769b21e672b72e7df89410345bb266036ff08f57892b1a` |
| 2 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant2ceaf9505e5a5359589f0a51720dc931761986f495d235e2673f648768dba4aa.lean/declarations/macro-rules--719dd0c6fa39edf6dabf1074.md) | 70 | `declaration-track:719dd0c6fa39edf6dabf10749bbac252ba3190f3e6a94c72ab969a95179c3f26` |
| 3 | `lemma` | [ratCast_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant2ceaf9505e5a5359589f0a51720dc931761986f495d235e2673f648768dba4aa.lean/declarations/ratcast-eq--4cd304567cc27aaa6f3b2f2a.md) | 77 | `result-track:4cd304567cc27aaa6f3b2f2a1bd3fd985565163b440986c16b8951079d39eee4` |
| 4 | `lemma` | [ratCast_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant2ceaf9505e5a5359589f0a51720dc931761986f495d235e2673f648768dba4aa.lean/declarations/ratcast-le--02e9f67c1374bd80801ef6c9.md) | 78 | `result-track:02e9f67c1374bd80801ef6c9706b8d623f1b8d26585c24f0bec45265d61f0903` |
| 5 | `lemma` | [ratCast_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant2ceaf9505e5a5359589f0a51720dc931761986f495d235e2673f648768dba4aa.lean/declarations/ratcast-lt--b1c7aef58bfbc994971b15e7.md) | 79 | `result-track:b1c7aef58bfbc994971b15e747b6f1378c02319a658e0b12fc5d378fde5e2a13` |
| 6 | `lemma` | [ratCast_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant2ceaf9505e5a5359589f0a51720dc931761986f495d235e2673f648768dba4aa.lean/declarations/ratcast-ne--5d709a8d678267acc2b9bca8.md) | 80 | `result-track:5d709a8d678267acc2b9bca8855560c9236af2af9aa45f1e7284037e7c4fdd63` |
| 7 | `lemma` | [ofNat_rat_real](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant2ceaf9505e5a5359589f0a51720dc931761986f495d235e2673f648768dba4aa.lean/declarations/ofnat-rat-real--29892b2b38ed0b517666db6a.md) | 82 | `result-track:29892b2b38ed0b517666db6a8915ba0b20cc4162a46d3868a30ab7b33e5b1af2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
