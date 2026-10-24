# Verification target: GRWTSK.Analysis.HolomorphicSizeBoundary.Variant2ff9092248f4fd0438c4a9c48023a7487f0df82b84368dffc2bb39f99b0b5ea3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cad8b9357297a34ab2095287b3472df00d49a025",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HolomorphicSizeBoundary/Variant2ff9092248f4fd0438c4a9c48023a7487f0df82b84368dffc2bb39f99b0b5ea3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/HolomorphicSizeBoundary/Variant2ff9092248f4fd0438c4a9c48023a7487f0df82b84368dffc2bb39f99b0b5ea3.lean/index.md) · [Full source](../../../../mathematics/Analysis/HolomorphicSizeBoundary/Variant2ff9092248f4fd0438c4a9c48023a7487f0df82b84368dffc2bb39f99b0b5ea3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cad8b9357297a34ab2095287b3472df00d49a025`.

Source path: `GRWTSK/Analysis/HolomorphicSizeBoundary/Variant2ff9092248f4fd0438c4a9c48023a7487f0df82b84368dffc2bb39f99b0b5ea3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HolomorphicSizeBoundary/Variant2ff9092248f4fd0438c4a9c48023a7487f0df82b84368dffc2bb39f99b0b5ea3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.SubexponentialCountermodel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Analytic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [singleAtomFamily](../../../../mathematics/Analysis/HolomorphicSizeBoundary/Variant2ff9092248f4fd0438c4a9c48023a7487f0df82b84368dffc2bb39f99b0b5ea3.lean/declarations/singleatomfamily--3feef5c651270f5266dbd230.md) | 27 | `declaration-track:3feef5c651270f5266dbd2302974ce0255f26236a437fc24f31f3dfe4eb3126f` |
| 2 | `theorem` | [single_atom_family_entire](../../../../mathematics/Analysis/HolomorphicSizeBoundary/Variant2ff9092248f4fd0438c4a9c48023a7487f0df82b84368dffc2bb39f99b0b5ea3.lean/declarations/single-atom-family-entire--e01e7e658a6294bbf7ec19be.md) | 30 | `result-track:e01e7e658a6294bbf7ec19be99f0626bf9953773f5ae27e7522228bcbd4be3d9` |
| 3 | `theorem` | [exact_readout_at_one](../../../../mathematics/Analysis/HolomorphicSizeBoundary/Variant2ff9092248f4fd0438c4a9c48023a7487f0df82b84368dffc2bb39f99b0b5ea3.lean/declarations/exact-readout-at-one--d4d132ba6496ebf1b5425851.md) | 34 | `result-track:d4d132ba6496ebf1b5425851df609ed26f738e82df703e37143e87d367a3c2d6` |
| 4 | `theorem` | [readout_norm](../../../../mathematics/Analysis/HolomorphicSizeBoundary/Variant2ff9092248f4fd0438c4a9c48023a7487f0df82b84368dffc2bb39f99b0b5ea3.lean/declarations/readout-norm--deb8e55e758097f95b769802.md) | 45 | `result-track:deb8e55e758097f95b76980285e8316c343cf311d7473442ff9a9cff2a24fd28` |
| 5 | `theorem` | [every_fixed_epsilon_readout_loss](../../../../mathematics/Analysis/HolomorphicSizeBoundary/Variant2ff9092248f4fd0438c4a9c48023a7487f0df82b84368dffc2bb39f99b0b5ea3.lean/declarations/every-fixed-epsilon-readout-loss--2d9fea89acabd00802978313.md) | 51 | `result-track:2d9fea89acabd008029783135841fe10a4818359efcc6b47e76dd732e4dcc0c4` |
| 6 | `theorem` | [entire_readout_has_no_eventual_polynomial_bound](../../../../mathematics/Analysis/HolomorphicSizeBoundary/Variant2ff9092248f4fd0438c4a9c48023a7487f0df82b84368dffc2bb39f99b0b5ea3.lean/declarations/entire-readout-has-no-eventual-polynomial-bound--394e070ac24cbddd3d7c664f.md) | 56 | `result-track:394e070ac24cbddd3d7c664f01a6d5528138329ca49f1516c97ca4c086bac549` |
| 7 | `theorem` | [entire_readout_exceeds_every_real_power](../../../../mathematics/Analysis/HolomorphicSizeBoundary/Variant2ff9092248f4fd0438c4a9c48023a7487f0df82b84368dffc2bb39f99b0b5ea3.lean/declarations/entire-readout-exceeds-every-real-power--9dba898a7340de71a6ffd7b1.md) | 60 | `result-track:9dba898a7340de71a6ffd7b1e26e7cf738c610d8e4eb026bf6821bcebf15ef8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
