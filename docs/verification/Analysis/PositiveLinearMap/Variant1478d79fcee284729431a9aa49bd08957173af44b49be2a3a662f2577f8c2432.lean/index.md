# Verification target: GRWTSK.Analysis.PositiveLinearMap.Variant1478d79fcee284729431a9aa49bd08957173af44b49be2a3a662f2577f8c2432

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b09a102199a6c17eb6245549d860fab56b5a63e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/PositiveLinearMap/Variant1478d79fcee284729431a9aa49bd08957173af44b49be2a3a662f2577f8c2432.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/PositiveLinearMap/Variant1478d79fcee284729431a9aa49bd08957173af44b49be2a3a662f2577f8c2432.lean/index.md) · [Full source](../../../../mathematics/Analysis/PositiveLinearMap/Variant1478d79fcee284729431a9aa49bd08957173af44b49be2a3a662f2577f8c2432.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b09a102199a6c17eb6245549d860fab56b5a63e`.

Source path: `GRWTSK/Analysis/PositiveLinearMap/Variant1478d79fcee284729431a9aa49bd08957173af44b49be2a3a662f2577f8c2432.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/PositiveLinearMap/Variant1478d79fcee284729431a9aa49bd08957173af44b49be2a3a662f2577f8c2432.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Module.PositiveLinearMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Classes` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Order` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.SpecialFunctions.PosPart` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [map_isSelfAdjoint](../../../../mathematics/Analysis/PositiveLinearMap/Variant1478d79fcee284729431a9aa49bd08957173af44b49be2a3a662f2577f8c2432.lean/declarations/map-isselfadjoint--bf5b9734fa4974bacc765292.md) | 48 | `result-track:bf5b9734fa4974bacc765292694cb7230f2a11b6fde99354a52b077c6c023abe` |
| 2 | `lemma` | [apply_le_of_isSelfAdjoint](../../../../mathematics/Analysis/PositiveLinearMap/Variant1478d79fcee284729431a9aa49bd08957173af44b49be2a3a662f2577f8c2432.lean/declarations/apply-le-of-isselfadjoint--8bfd6d09a5bcb9917d161fb3.md) | 65 | `result-track:8bfd6d09a5bcb9917d161fb387eada766b24e8b4f2cf897dec50d3a4cdb2bb46` |
| 3 | `lemma` | [norm_apply_le_of_nonneg](../../../../mathematics/Analysis/PositiveLinearMap/Variant1478d79fcee284729431a9aa49bd08957173af44b49be2a3a662f2577f8c2432.lean/declarations/norm-apply-le-of-nonneg--09fc74884a1d8065923c233a.md) | 70 | `result-track:09fc74884a1d8065923c233ab661447a94bdc40e8580bfae28abf904378c982e` |
| 4 | `lemma` | [exists_norm_apply_le](../../../../mathematics/Analysis/PositiveLinearMap/Variant1478d79fcee284729431a9aa49bd08957173af44b49be2a3a662f2577f8c2432.lean/declarations/exists-norm-apply-le--cc70a6e17bbf8acf5b7e27e0.md) | 85 | `result-track:cc70a6e17bbf8acf5b7e27e00753f36b558cca53e52cd308b517f0162598c251` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Analysis/PositiveLinearMap/Variant1478d79fcee284729431a9aa49bd08957173af44b49be2a3a662f2577f8c2432.lean/declarations/instance--4358dd8153a4737d6840d566.md) | 135 | `declaration-track:4358dd8153a4737d6840d566591ed5019258eeb29dbe23c47a7dc2dc2501e1f4` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Analysis/PositiveLinearMap/Variant1478d79fcee284729431a9aa49bd08957173af44b49be2a3a662f2577f8c2432.lean/declarations/instance--4ab3593c8992d7c23ac6a4fe.md) | 143 | `declaration-track:4ab3593c8992d7c23ac6a4feabfaf816b459b9ae2c1f1a420a69db8e7b78753c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
