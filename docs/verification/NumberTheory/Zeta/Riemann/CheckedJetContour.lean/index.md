# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CheckedJetContour

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bee00dbe38a93bc3be23276d3c390ab21e57d52e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CheckedJetContour.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedJetContour.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedJetContour.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bee00dbe38a93bc3be23276d3c390ab21e57d52e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CheckedJetContour.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CheckedJetContour.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CheckedPoleJet`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.JetContourBlocks`](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [packetAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedJetContour.lean/declarations/packetat--e1b664a957a5790315acbd9c.md) | 26 | `declaration-track:e1b664a957a5790315acbd9c81949479008efa8b5b744c233df88e07ef9bd9a1` |
| 2 | `def` | [edgeCheck](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedJetContour.lean/declarations/edgecheck--a39cd2fc3ba429d067e72c19.md) | 30 | `declaration-track:a39cd2fc3ba429d067e72c19cea3d92311e9ff1e44a46c532d6b430449f90938` |
| 3 | `theorem` | [edge_refines](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedJetContour.lean/declarations/edge-refines--ead9bb75117bae860db76380.md) | 38 | `result-track:ead9bb75117bae860db76380d38870e9fce7b030635029a725be890652e0bbaf` |
| 4 | `theorem` | [exists_edge_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedJetContour.lean/declarations/exists-edge-iff--3a70179dfb577a4dcd3937ea.md) | 53 | `result-track:3a70179dfb577a4dcd3937ea64fbe03c3d8899b715e1c5087bfdce58846334a5` |
| 5 | `def` | [Valid](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedJetContour.lean/declarations/valid--4be35a081387664398652c0f.md) | 68 | `declaration-track:4be35a081387664398652c0f874021e6f0bac5df9a13f92dae89a386311b1c14` |
| 6 | `instance` | [validDecidable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedJetContour.lean/declarations/validdecidable--fd1ba4f7a8d747f1f108cf60.md) | 74 | `declaration-track:fd1ba4f7a8d747f1f108cf6018aca5bf8bc038623e77e19fa661ed34a9b9dab7` |
| 7 | `def` | [check](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedJetContour.lean/declarations/check--f0f8e1e51478f8cca1853596.md) | 78 | `declaration-track:f0f8e1e51478f8cca1853596903440294016cf078876625e98b29b7afd12af7b` |
| 8 | `theorem` | [check_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedJetContour.lean/declarations/check-iff--3963f067279bc983861b5eb8.md) | 81 | `result-track:3963f067279bc983861b5eb85d1e9bc9cd1cc3a1b71bfd0b8ee6d41af7b882cc` |
| 9 | `theorem` | [check_refines](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedJetContour.lean/declarations/check-refines--8dfc339ef237be159f6f60d3.md) | 85 | `result-track:8dfc339ef237be159f6f60d340a42293fb81b6232fd479b1c0ca38fd1130af69` |
| 10 | `def` | [evaluate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedJetContour.lean/declarations/evaluate--863b91f32822953a52d7e27a.md) | 93 | `declaration-track:863b91f32822953a52d7e27a0190a926c3830fa66258a0937b1f46c7c5dedf89` |
| 11 | `theorem` | [evaluate_refines](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedJetContour.lean/declarations/evaluate-refines--ebf03050b396b456a171c2a4.md) | 97 | `result-track:ebf03050b396b456a171c2a4897d9a071bd2ecd67c8f04b55a28c0aea1747844` |
| 12 | `def` | [evaluateRectangle](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedJetContour.lean/declarations/evaluaterectangle--a8dc8149af4d562b1926116e.md) | 107 | `declaration-track:a8dc8149af4d562b1926116e079fd3d083d512b5c80b64f7504c186937aafeca` |
| 13 | `theorem` | [rectangle_refines](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedJetContour.lean/declarations/rectangle-refines--f232ee56e4065dfd5e6c198f.md) | 115 | `result-track:f232ee56e4065dfd5e6c198f8743ca75cbfdd08288d1f19ed5411a0f7d35ad34` |
| 14 | `theorem` | [count_eq_of_checked](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedJetContour.lean/declarations/count-eq-of-checked--6e243d3a4e9d281caa3531df.md) | 131 | `result-track:6e243d3a4e9d281caa3531dfaffba789d5dbc8074b1f7a2ba843e4ddb7834220` |
| 15 | `theorem` | [complete_pair_of_checked](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedJetContour.lean/declarations/complete-pair-of-checked--5577581f2e439b96a12ee35e.md) | 137 | `result-track:5577581f2e439b96a12ee35ec662b68e0321b41d39d36ca4bcaecf59ebef651f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
