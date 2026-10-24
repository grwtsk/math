# Verification target: GRWTSK.Analysis.FunctionalAnalysis.LocalSystem.Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c782c5c9df42a46edfcc23d272ec9313fb26b5e1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/LocalSystem/Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/LocalSystem/Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/LocalSystem/Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c782c5c9df42a46edfcc23d272ec9313fb26b5e1`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/LocalSystem/Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/LocalSystem/Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Universe.Terrain` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.Finite` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TerrainFacet](../../../../../mathematics/Analysis/FunctionalAnalysis/LocalSystem/Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a.lean/declarations/terrainfacet--047516d2b8f5cb46c7ffe993.md) | 22 | `declaration-track:047516d2b8f5cb46c7ffe9935352db3911b7d0e4d7854685bc32c817ff9ec8a4` |
| 2 | `structure` | [CertifiedPartialIsometry](../../../../../mathematics/Analysis/FunctionalAnalysis/LocalSystem/Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a.lean/declarations/certifiedpartialisometry--11cd533787403741d644f530.md) | 35 | `declaration-track:11cd533787403741d644f530eaca89ba227fd4d2631731017ca332fe960a14dc` |
| 3 | `structure` | [FiniteLocalSystem](../../../../../mathematics/Analysis/FunctionalAnalysis/LocalSystem/Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a.lean/declarations/finitelocalsystem--9d8a62a073f8d6e929e873d5.md) | 50 | `declaration-track:9d8a62a073f8d6e929e873d587f245a2b5140319fbbc78776091348d1a3f8ef4` |
| 4 | `theorem` | [transport_edge_resolves](../../../../../mathematics/Analysis/FunctionalAnalysis/LocalSystem/Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a.lean/declarations/transport-edge-resolves--c3ab9ad0f85800d4a7dd9584.md) | 66 | `result-track:c3ab9ad0f85800d4a7dd9584223d7862f690c16487a61282376eae7c74c86c4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
