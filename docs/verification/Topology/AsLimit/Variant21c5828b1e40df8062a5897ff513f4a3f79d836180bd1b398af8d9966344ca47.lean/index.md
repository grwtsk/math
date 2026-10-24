# Verification target: GRWTSK.Topology.AsLimit.Variant21c5828b1e40df8062a5897ff513f4a3f79d836180bd1b398af8d9966344ca47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdadfa8390608ae51ae4a97c0466322e7709f678",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AsLimit/Variant21c5828b1e40df8062a5897ff513f4a3f79d836180bd1b398af8d9966344ca47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AsLimit/Variant21c5828b1e40df8062a5897ff513f4a3f79d836180bd1b398af8d9966344ca47.lean/index.md) · [Full source](../../../../mathematics/Topology/AsLimit/Variant21c5828b1e40df8062a5897ff513f4a3f79d836180bd1b398af8d9966344ca47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdadfa8390608ae51ae4a97c0466322e7709f678`.

Source path: `GRWTSK/Topology/AsLimit/Variant21c5828b1e40df8062a5897ff513f4a3f79d836180bd1b398af8d9966344ca47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AsLimit/Variant21c5828b1e40df8062a5897ff513f4a3f79d836180bd1b398af8d9966344ca47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Profinite.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.DiscreteQuotient` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fintypeDiagram](../../../../mathematics/Topology/AsLimit/Variant21c5828b1e40df8062a5897ff513f4a3f79d836180bd1b398af8d9966344ca47.lean/declarations/fintypediagram--48c4403c106d66452204059a.md) | 43 | `declaration-track:48c4403c106d66452204059ac9f7a7cf6b033506e940a4de81aaa5683cf8baeb` |
| 2 | `abbrev` | [diagram](../../../../mathematics/Topology/AsLimit/Variant21c5828b1e40df8062a5897ff513f4a3f79d836180bd1b398af8d9966344ca47.lean/declarations/diagram--ed49132d05ec1dd7a4a5f1f4.md) | 51 | `declaration-track:ed49132d05ec1dd7a4a5f1f4ef4e3d08cbd2980fe70251486e64e060e6fbc98a` |
| 3 | `def` | [asLimitCone](../../../../mathematics/Topology/AsLimit/Variant21c5828b1e40df8062a5897ff513f4a3f79d836180bd1b398af8d9966344ca47.lean/declarations/aslimitcone--20d3e653625244a1d3b35ffd.md) | 55 | `declaration-track:20d3e653625244a1d3b35ffdd1091f71cb4aa5b67d7c92aade952a25c20b1bdf` |
| 4 | `instance` | [isIso_asLimitCone_lift](../../../../mathematics/Topology/AsLimit/Variant21c5828b1e40df8062a5897ff513f4a3f79d836180bd1b398af8d9966344ca47.lean/declarations/isiso-aslimitcone-lift--7ce61c9768e53838c9122ba7.md) | 60 | `declaration-track:7ce61c9768e53838c9122ba705eb0f3db7abb51302538db2731d142a3cddc14b` |
| 5 | `def` | [isoAsLimitConeLift](../../../../mathematics/Topology/AsLimit/Variant21c5828b1e40df8062a5897ff513f4a3f79d836180bd1b398af8d9966344ca47.lean/declarations/isoaslimitconelift--42365882a0b848bd7d852535.md) | 82 | `declaration-track:42365882a0b848bd7d852535bbf64d05212c30b9e815f2e48a6d557185b5ee31` |
| 6 | `def` | [asLimitConeIso](../../../../mathematics/Topology/AsLimit/Variant21c5828b1e40df8062a5897ff513f4a3f79d836180bd1b398af8d9966344ca47.lean/declarations/aslimitconeiso--cd22f8bf2d40d213f076c960.md) | 88 | `declaration-track:cd22f8bf2d40d213f076c960c9888f53229eac88bb3604c570cfe129fb706a36` |
| 7 | `def` | [asLimit](../../../../mathematics/Topology/AsLimit/Variant21c5828b1e40df8062a5897ff513f4a3f79d836180bd1b398af8d9966344ca47.lean/declarations/aslimit--00995d56f2ebea7bc7014630.md) | 92 | `declaration-track:00995d56f2ebea7bc70146300d7a301f7256e780ac619c0e5f8ecefca2c9b312` |
| 8 | `def` | [lim](../../../../mathematics/Topology/AsLimit/Variant21c5828b1e40df8062a5897ff513f4a3f79d836180bd1b398af8d9966344ca47.lean/declarations/lim--6a8d5a37194bf85f53ea3d86.md) | 96 | `declaration-track:6a8d5a37194bf85f53ea3d86341b6dbdc64f2af33e73046949c91cca85486b90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
