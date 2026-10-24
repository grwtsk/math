# Verification target: GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerRepresentatives

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce8c64bde6c614a0ea07c68427b26f21e2b1eb7f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerRepresentatives.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerRepresentatives.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerRepresentatives.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce8c64bde6c614a0ea07c68427b26f21e2b1eb7f`.

Source path: `GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerRepresentatives.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerRepresentatives.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerCyclic`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCyclic.lean/index.md) — import line 2; pinned internal source present.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [octaveRepresentative](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerRepresentatives.lean/declarations/octaverepresentative--304c5c4925ddecaa7c982799.md) | 11 | `declaration-track:304c5c4925ddecaa7c982799ce2614a653a18db38f6c790db6c7657b537542e8` |
| 2 | `theorem` | [octaveRepresentative_natCast](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerRepresentatives.lean/declarations/octaverepresentative-natcast--6f3b41e0c926963978f07036.md) | 16 | `result-track:6f3b41e0c926963978f07036fc7d4133f1e790544a54684dd48a08f942ceb4ec` |
| 3 | `def` | [nonAliasingFejerPrefixResidues](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerRepresentatives.lean/declarations/nonaliasingfejerprefixresidues--ddaf0fdc6e6b7bc6ce86cad6.md) | 33 | `declaration-track:ddaf0fdc6e6b7bc6ce86cad6d06d362871ce66dd0f714008f3ad9a46d7390415` |
| 4 | `theorem` | [nonAliasingFejerPrefixResidueMap_injective](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerRepresentatives.lean/declarations/nonaliasingfejerprefixresiduemap-injective--0efef19469f07c6ddebe7a1f.md) | 41 | `result-track:0efef19469f07c6ddebe7a1fa929d91a670e31919ba87ff728906af6b431da09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
