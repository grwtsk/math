# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rewrite.Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a7e6edebcf0405111217d950a24ebc6aa0ce316",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a7e6edebcf0405111217d950a24ebc6aa0ce316`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Compression.Lookup` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transportIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean/declarations/transportindex--1004f34703d6099294f51e8e.md) | 7 | `declaration-track:1004f34703d6099294f51e8ef2e78f8d28d7030723dc5cefdac265d6aa053472` |
| 2 | `structure` | [LookupFibrationEquivalence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean/declarations/lookupfibrationequivalence--a95184b7388db54bccebb9a7.md) | 20 | `declaration-track:a95184b7388db54bccebb9a72aa02b588b8d7ff26683a0396fec11f9339c611b` |
| 3 | `def` | [PreservesSemanticsAndLookup](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean/declarations/preservessemanticsandlookup--713985784d4fc8d7a14c251d.md) | 39 | `declaration-track:713985784d4fc8d7a14c251db98219a7ece5ebbddaa296c491fea2b7c8438117` |
| 4 | `def` | [preservesOfDecodeEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean/declarations/preservesofdecodeeq--7464f1b2491ac2c15d54c914.md) | 43 | `declaration-track:7464f1b2491ac2c15d54c914fb26406d36a27988702bdb146d78e2d41387b89c` |
| 5 | `theorem` | [preserves_semantics_and_lookup_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean/declarations/preserves-semantics-and-lookup-refl--ab17717eefdcfdc6ba5ccc36.md) | 61 | `result-track:ab17717eefdcfdc6ba5ccc36a6cd5172fad7cbad1f615948799f82735320f4da` |
| 6 | `theorem` | [preserves_semantics_and_lookup_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean/declarations/preserves-semantics-and-lookup-trans--8a9fba4fd93da2bfe2f1bcbd.md) | 66 | `result-track:8a9fba4fd93da2bfe2f1bcbd458347057db739ca8d86823ea280cad7e7a8989c` |
| 7 | `theorem` | [preserves_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean/declarations/preserves-comp--648190f29b3a20cff2f121da.md) | 76 | `result-track:648190f29b3a20cff2f121dad78660fcd781088adeaaafb73347680c0103d303` |
| 8 | `inductive` | [DupSide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean/declarations/dupside--e8da2e242d256b5b536f1aec.md) | 83 | `declaration-track:e8da2e242d256b5b536f1aecbfc54654b948f2538ec31ae7073ff466395ba5ef` |
| 9 | `structure` | [MacroRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean/declarations/macrorule--b81b09a500a61cfa40d6e29c.md) | 88 | `declaration-track:b81b09a500a61cfa40d6e29c1960c5827ca00d45ef95d21f8bc26816fdfaddfb` |
| 10 | `def` | [macroRuleHasDeterministicRouting](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean/declarations/macrorulehasdeterministicrouting--7e7329b5c859bb781b94b14d.md) | 110 | `declaration-track:7e7329b5c859bb781b94b14d019986d02510232f15e7deb13c61d5ed949b2731` |
| 11 | `theorem` | [macro_rule_route_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean/declarations/macro-rule-route-sound--272591264611dae564af010b.md) | 114 | `result-track:272591264611dae564af010bd2032b2409675c9b96196ca3d258a5a44cf70b26` |
| 12 | `theorem` | [normalize_preserves_semantics_and_lookup](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean/declarations/normalize-preserves-semantics-and-lookup--388ef64446f53c1e7bfaac14.md) | 123 | `result-track:388ef64446f53c1e7bfaac1455301702c26395049c9b95f62d7afeb3c827b816` |
| 13 | `inductive` | [RewriteStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean/declarations/rewritestep--bfa588d72901e4ed4d05b17a.md) | 128 | `declaration-track:bfa588d72901e4ed4d05b17a0c9b30e01b25e24c6c4f6f1babf07fb1313b75fc` |
| 14 | `theorem` | [rewrite_preserves_semantics_and_lookup](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean/declarations/rewrite-preserves-semantics-and-lookup--7c285214c9f0b2cba0198d93.md) | 135 | `result-track:7c285214c9f0b2cba0198d9367e3b031b262b5d3e25eb1ec7781e3fbc38d3ab3` |
| 15 | `theorem` | [rewrite_preserves](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1.lean/declarations/rewrite-preserves--b83a7653974d8cf4573cb56d.md) | 143 | `result-track:b83a7653974d8cf4573cb56dfe82a5c6e14617998fb76b10fe61e937302a1dad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
