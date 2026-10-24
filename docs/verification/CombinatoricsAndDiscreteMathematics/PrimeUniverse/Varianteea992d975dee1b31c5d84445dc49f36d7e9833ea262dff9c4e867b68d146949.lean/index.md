# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeUniverse.Varianteea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc6cb1bc44b99e49604ad7048f98bc36cb9baa7a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Varianteea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Varianteea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Varianteea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc6cb1bc44b99e49604ad7048f98bc36cb9baa7a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Varianteea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Varianteea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Place](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Varianteea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949.lean/declarations/place--3f83ca8f97bd43be1eed8b85.md) | 13 | `declaration-track:3f83ca8f97bd43be1eed8b8568b110b8ef182cdd999fcac18b24dd839e68b09c` |
| 2 | `structure` | [FinitePrimeUniverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Varianteea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949.lean/declarations/finiteprimeuniverse--9696cd5b86f0d878b03a6840.md) | 18 | `declaration-track:9696cd5b86f0d878b03a6840fc10be945d515a7f1ebcd69bab80e7cf7ef7fd16` |
| 3 | `structure` | [AnchoredPrimeCut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Varianteea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949.lean/declarations/anchoredprimecut--2e7436cf0844c371682c9be5.md) | 25 | `declaration-track:2e7436cf0844c371682c9be5b52884768336f4b44ae55163bc2c2d40c219a6cb` |
| 4 | `def` | [AnchoredPrimeCut.contains](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Varianteea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949.lean/declarations/anchoredprimecut-contains--ecef6c44037b850a1bb60378.md) | 33 | `declaration-track:ecef6c44037b850a1bb60378c9d49e81e1833fdb90445ee8aff03e8f2d8be123` |
| 5 | `theorem` | [archimedean_anchor_present](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Varianteea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949.lean/declarations/archimedean-anchor-present--7307973cecec553f140f4026.md) | 41 | `result-track:7307973cecec553f140f4026cc2368c1cf41c0eb96488de3f6cbbdc4c84ca0b8` |
| 6 | `theorem` | [finite_place_present_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Varianteea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949.lean/declarations/finite-place-present-iff--9724e17f6b9e6aee8993050a.md) | 48 | `result-track:9724e17f6b9e6aee8993050a7d6737bda05ff59497c1ce0aaeda68aea85c254a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
