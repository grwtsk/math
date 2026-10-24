# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SnapshotComponents.Variantaf5acc0ea8787eddd083380f0ef7e74ab49d12958411b1728f1f1c1a5821af21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cff541fa8528d827bc4d0282751b2e1b8c5cbbd8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SnapshotComponents/Variantaf5acc0ea8787eddd083380f0ef7e74ab49d12958411b1728f1f1c1a5821af21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SnapshotComponents/Variantaf5acc0ea8787eddd083380f0ef7e74ab49d12958411b1728f1f1c1a5821af21.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SnapshotComponents/Variantaf5acc0ea8787eddd083380f0ef7e74ab49d12958411b1728f1f1c1a5821af21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cff541fa8528d827bc4d0282751b2e1b8c5cbbd8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SnapshotComponents/Variantaf5acc0ea8787eddd083380f0ef7e74ab49d12958411b1728f1f1c1a5821af21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SnapshotComponents/Variantaf5acc0ea8787eddd083380f0ef7e74ab49d12958411b1728f1f1c1a5821af21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 3; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.SnapshotAuthority` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SnapshotComponent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SnapshotComponents/Variantaf5acc0ea8787eddd083380f0ef7e74ab49d12958411b1728f1f1c1a5821af21.lean/declarations/snapshotcomponent--ad82d2082cf2532cd5f91934.md) | 18 | `declaration-track:ad82d2082cf2532cd5f9193400e0644508c0be2ca12312f53d950854fe09739b` |
| 2 | `structure` | [MasterSnapshot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SnapshotComponents/Variantaf5acc0ea8787eddd083380f0ef7e74ab49d12958411b1728f1f1c1a5821af21.lean/declarations/mastersnapshot--99313b2098926930c00fdf4e.md) | 39 | `declaration-track:99313b2098926930c00fdf4e1be35b982a4d27cd9821eb5a2b482328ec3150d9` |
| 3 | `structure` | [VerifiedActiveMasterSnapshot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SnapshotComponents/Variantaf5acc0ea8787eddd083380f0ef7e74ab49d12958411b1728f1f1c1a5821af21.lean/declarations/verifiedactivemastersnapshot--c2a139899a0478fa4d7f965b.md) | 54 | `declaration-track:c2a139899a0478fa4d7f965b90d8cf7addf586b99d18982320cb612abf55dfda` |
| 4 | `def` | [authorityHead](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SnapshotComponents/Variantaf5acc0ea8787eddd083380f0ef7e74ab49d12958411b1728f1f1c1a5821af21.lean/declarations/authorityhead--e19ef2071ad6fc54b1eb304f.md) | 63 | `declaration-track:e19ef2071ad6fc54b1eb304f0c2e2cf0239a281a8e354eaae5736fe23576edd9` |
| 5 | `def` | [authorityEpoch](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SnapshotComponents/Variantaf5acc0ea8787eddd083380f0ef7e74ab49d12958411b1728f1f1c1a5821af21.lean/declarations/authorityepoch--c97ced862c780e9aa0d5e93f.md) | 70 | `declaration-track:c97ced862c780e9aa0d5e93fee6db831463c5eb1d65ec28bf6e105f8e94d7650` |
| 6 | `structure` | [SnapshotDependency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SnapshotComponents/Variantaf5acc0ea8787eddd083380f0ef7e74ab49d12958411b1728f1f1c1a5821af21.lean/declarations/snapshotdependency--9d251cda534244bd0623ef38.md) | 79 | `declaration-track:9d251cda534244bd0623ef383b6ab07c98b76dbe1b4b7f7572e39c3fd97f3361` |
| 7 | `def` | [Matches](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SnapshotComponents/Variantaf5acc0ea8787eddd083380f0ef7e74ab49d12958411b1728f1f1c1a5821af21.lean/declarations/matches--cf2382f9d5730b421fe6e407.md) | 87 | `declaration-track:cf2382f9d5730b421fe6e4073bf704c021f0b5ab15732c9d5f988a1dd24bef59` |
| 8 | `theorem` | [matches_of_snapshot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SnapshotComponents/Variantaf5acc0ea8787eddd083380f0ef7e74ab49d12958411b1728f1f1c1a5821af21.lean/declarations/matches-of-snapshot--53b4153db3b7204ca610a3ed.md) | 93 | `result-track:53b4153db3b7204ca610a3ed2f176b4656d31386307f0889fd3df7d35cdf2793` |
| 9 | `def` | [SnapshotDependencySetValid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SnapshotComponents/Variantaf5acc0ea8787eddd083380f0ef7e74ab49d12958411b1728f1f1c1a5821af21.lean/declarations/snapshotdependencysetvalid--36d027e820cd5f6e099ac6c8.md) | 109 | `declaration-track:36d027e820cd5f6e099ac6c840bcdf346723dbd147dde3b0004d2ba63944d845` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
