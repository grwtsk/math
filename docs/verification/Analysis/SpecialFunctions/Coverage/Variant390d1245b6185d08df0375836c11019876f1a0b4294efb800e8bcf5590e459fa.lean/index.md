# Verification target: GRWTSK.Analysis.SpecialFunctions.Coverage.Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b915dbe52c7868b466769375e7034b752107e300",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b915dbe52c7868b466769375e7034b752107e300`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.ExtendedEML` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [classicalWitness](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean/declarations/classicalwitness--3b3fbb4fe05577fc760ae49a.md) | 14 | `declaration-track:3b3fbb4fe05577fc760ae49a665fb27ee971e26ff201c9b6cdc1bd6b716fe4c7` |
| 2 | `inductive` | [RepresentsDeclaredAt](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean/declarations/representsdeclaredat--5b4044b3b6a414f395144cfe.md) | 37 | `declaration-track:5b4044b3b6a414f395144cfe752a7a5d2db6ccdb51c282c73b489bb340fd6ba1` |
| 3 | `inductive` | [CoveredByExtendedEMLAt](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean/declarations/coveredbyextendedemlat--0dd0edb5448d7b2d495a8fcb.md) | 91 | `declaration-track:0dd0edb5448d7b2d495a8fcb72ad106c618b9f67e81dac07032ccfef9a7782f5` |
| 4 | `theorem` | [classicalWitness_requiredFoundation](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean/declarations/classicalwitness-requiredfoundation--4f41725a0d950fcc6b17a0d8.md) | 98 | `result-track:4f41725a0d950fcc6b17a0d89318b1478f7ad995045cef48fc0e1cbc348863bf` |
| 5 | `theorem` | [coverage_requires_sufficient_foundation](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean/declarations/coverage-requires-sufficient-foundation--30aca88e78a3b45189380e49.md) | 103 | `result-track:30aca88e78a3b45189380e4915387639c371e94642d1d734552a8fa24f99df3f` |
| 6 | `theorem` | [insufficient_foundation_cannot_cover](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean/declarations/insufficient-foundation-cannot-cover--a4d94b7c674c9661f8869f50.md) | 111 | `result-track:a4d94b7c674c9661f8869f50c13d0af01e17d53dab1195d53e3c10b4d3abc328` |
| 7 | `theorem` | [witness_foundation_sound](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean/declarations/witness-foundation-sound--a3d44a807ce627c711035dc7.md) | 118 | `result-track:a3d44a807ce627c711035dc71c36ad9ef8a65fdf6ad0a7941d0b6d8b75b0e6ae` |
| 8 | `def` | [coveredClassical](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean/declarations/coveredclassical--f335df4fb881fdce13a100c3.md) | 161 | `declaration-track:f335df4fb881fdce13a100c349ce7e8e2ec9e914d2d010c4c5cd169d6c71e83f` |
| 9 | `def` | [coveredMeasurable](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean/declarations/coveredmeasurable--023962419b15f0561ff6ceac.md) | 167 | `declaration-track:023962419b15f0561ff6ceacd06432d0bdc73d4ce26c62f733d6bab74051ee16` |
| 10 | `def` | [coveredFractal](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean/declarations/coveredfractal--1fb4738a9816abc5acc71274.md) | 173 | `declaration-track:1fb4738a9816abc5acc71274ef2904c85a364c6653ca9c077048047f18798225` |
| 11 | `def` | [coveredZetaMobiusFractal](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean/declarations/coveredzetamobiusfractal--091792766795d0b06233cb6f.md) | 179 | `declaration-track:091792766795d0b06233cb6f965baf7b39dcd56c71dbc0f87648feefe28fdbae` |
| 12 | `theorem` | [declaredSurfaceObject_covered_by_extendedEML_at_sufficientGamma](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean/declarations/declaredsurfaceobject-covered-by-extendedeml-at-sufficientgamma--76ef75e8e62e9770e20bec99.md) | 185 | `result-track:76ef75e8e62e9770e20bec9900ef704db76e9f3551ea9ddf58de6e5ba978a261` |
| 13 | `theorem` | [matrix_covered_at_constructive](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean/declarations/matrix-covered-at-constructive--9d0f550e47ac89e4ad07f468.md) | 241 | `result-track:9d0f550e47ac89e4ad07f468d89a9cdca26e5c469eeb5ff545ba541e19af1e68` |
| 14 | `theorem` | [bijectiveFlow_covered_at_bijectiveGamma](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean/declarations/bijectiveflow-covered-at-bijectivegamma--43fa8f9dc9afcb3a869d10d9.md) | 250 | `result-track:43fa8f9dc9afcb3a869d10d993f60acfa8c64c01f2c33878ada2a1b3bfb21655` |
| 15 | `theorem` | [heatAveragingGamma_cannot_cover_bijectiveFlow_claim](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean/declarations/heataveraginggamma-cannot-cover-bijectiveflow-claim--1e89d05554a96c65c88a1715.md) | 258 | `result-track:1e89d05554a96c65c88a17155d509b714e3dc37254824bab998c449201e2b507` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
