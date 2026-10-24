# Verification target: GRWTSK.Algebra.GroupTheory.AutomorphismIndex.Variant98e98c47f6096358142c431267f5fcac61a8dd4b8fc570427be485b4e6557c28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cafa7ac9f8348b4afa277e36773164dd6d5ca56a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/AutomorphismIndex/Variant98e98c47f6096358142c431267f5fcac61a8dd4b8fc570427be485b4e6557c28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/AutomorphismIndex/Variant98e98c47f6096358142c431267f5fcac61a8dd4b8fc570427be485b4e6557c28.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/AutomorphismIndex/Variant98e98c47f6096358142c431267f5fcac61a8dd4b8fc570427be485b4e6557c28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cafa7ac9f8348b4afa277e36773164dd6d5ca56a`.

Source path: `GRWTSK/Algebra/GroupTheory/AutomorphismIndex/Variant98e98c47f6096358142c431267f5fcac61a8dd4b8fc570427be485b4e6557c28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/AutomorphismIndex/Variant98e98c47f6096358142c431267f5fcac61a8dd4b8fc570427be485b4e6557c28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Symmetry.Canonical` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.Frontier.OrdinalIndex` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orbitIndexCode](../../../../../mathematics/Algebra/GroupTheory/AutomorphismIndex/Variant98e98c47f6096358142c431267f5fcac61a8dd4b8fc570427be485b4e6557c28.lean/declarations/orbitindexcode--1cf79f06b7e577fd3174ff07.md) | 28 | `declaration-track:1cf79f06b7e577fd3174ff077f70baf88e1e4a8f5df5a2204446107edf6b21d9` |
| 2 | `theorem` | [orbitIndexCode_invariant](../../../../../mathematics/Algebra/GroupTheory/AutomorphismIndex/Variant98e98c47f6096358142c431267f5fcac61a8dd4b8fc570427be485b4e6557c28.lean/declarations/orbitindexcode-invariant--ff1b137001d567b0095fc6a5.md) | 37 | `result-track:ff1b137001d567b0095fc6a5d55228894e935d79fc6dcb795b1ba91545af04d6` |
| 3 | `theorem` | [orbitIndexCode_eq_iff_sameOrbit](../../../../../mathematics/Algebra/GroupTheory/AutomorphismIndex/Variant98e98c47f6096358142c431267f5fcac61a8dd4b8fc570427be485b4e6557c28.lean/declarations/orbitindexcode-eq-iff-sameorbit--dc0f3012c923cf61ad6defc3.md) | 51 | `result-track:dc0f3012c923cf61ad6defc374edac7f1bd428ba6f46321a40520c4a18131a2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
