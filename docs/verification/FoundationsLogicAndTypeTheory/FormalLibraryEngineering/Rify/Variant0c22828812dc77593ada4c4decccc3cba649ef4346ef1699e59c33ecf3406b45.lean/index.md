# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rify.Variant0c22828812dc77593ada4c4decccc3cba649ef4346ef1699e59c33ecf3406b45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee5b1ba93f9d25fda533b6260f64fba820d49b5e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant0c22828812dc77593ada4c4decccc3cba649ef4346ef1699e59c33ecf3406b45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant0c22828812dc77593ada4c4decccc3cba649ef4346ef1699e59c33ecf3406b45.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant0c22828812dc77593ada4c4decccc3cba649ef4346ef1699e59c33ecf3406b45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee5b1ba93f9d25fda533b6260f64fba820d49b5e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant0c22828812dc77593ada4c4decccc3cba649ef4346ef1699e59c33ecf3406b45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant0c22828812dc77593ada4c4decccc3cba649ef4346ef1699e59c33ecf3406b45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Cast.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Qify` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant0c22828812dc77593ada4c4decccc3cba649ef4346ef1699e59c33ecf3406b45.lean/declarations/syntax--65fe1eab7fca6e548b33d0cb.md) | 76 | `declaration-track:65fe1eab7fca6e548b33d0cb88536bf9185be4e4b4613e1ab13e94c4c01450a6` |
| 2 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant0c22828812dc77593ada4c4decccc3cba649ef4346ef1699e59c33ecf3406b45.lean/declarations/macro-rules--1eca6a0c2a2fa594473941b4.md) | 78 | `declaration-track:1eca6a0c2a2fa594473941b41a32a125b0852827fd797b2bce124aa1a00879b1` |
| 3 | `lemma` | [ratCast_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant0c22828812dc77593ada4c4decccc3cba649ef4346ef1699e59c33ecf3406b45.lean/declarations/ratcast-eq--c0c1232af454085a5978a71c.md) | 85 | `result-track:c0c1232af454085a5978a71cbe1c33f67ca675b64fcbf91a40330bf1f6f2a089` |
| 4 | `lemma` | [ratCast_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant0c22828812dc77593ada4c4decccc3cba649ef4346ef1699e59c33ecf3406b45.lean/declarations/ratcast-le--1fdcb33a9eac7185f72039e4.md) | 86 | `result-track:1fdcb33a9eac7185f72039e4fff58aeda859b12766ebcc35c28161e4f0fa2ee3` |
| 5 | `lemma` | [ratCast_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant0c22828812dc77593ada4c4decccc3cba649ef4346ef1699e59c33ecf3406b45.lean/declarations/ratcast-lt--9d2d5fdb780ebf77cacf7db7.md) | 87 | `result-track:9d2d5fdb780ebf77cacf7db7fada634ffa777158c1326fbf6359fe99912784ff` |
| 6 | `lemma` | [ratCast_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant0c22828812dc77593ada4c4decccc3cba649ef4346ef1699e59c33ecf3406b45.lean/declarations/ratcast-ne--ff53684088b58f7c1850cbfb.md) | 88 | `result-track:ff53684088b58f7c1850cbfb10c38eba4459bb2fbf42d3c179be7f0a91d5b534` |
| 7 | `lemma` | [ofNat_rat_real](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rify/Variant0c22828812dc77593ada4c4decccc3cba649ef4346ef1699e59c33ecf3406b45.lean/declarations/ofnat-rat-real--c00e6e2f91b20ce593042b7f.md) | 90 | `result-track:c00e6e2f91b20ce593042b7fff1aaf0aa15e0330b4e83445f3102c66ef56bd4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
