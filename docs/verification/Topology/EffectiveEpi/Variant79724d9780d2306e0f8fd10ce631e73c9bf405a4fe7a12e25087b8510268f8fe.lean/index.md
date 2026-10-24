# Verification target: GRWTSK.Topology.EffectiveEpi.Variant79724d9780d2306e0f8fd10ce631e73c9bf405a4fe7a12e25087b8510268f8fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6416455309e5deb9aba92ecebc066fce179ad4fa",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/EffectiveEpi/Variant79724d9780d2306e0f8fd10ce631e73c9bf405a4fe7a12e25087b8510268f8fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/EffectiveEpi/Variant79724d9780d2306e0f8fd10ce631e73c9bf405a4fe7a12e25087b8510268f8fe.lean/index.md) · [Full source](../../../../mathematics/Topology/EffectiveEpi/Variant79724d9780d2306e0f8fd10ce631e73c9bf405a4fe7a12e25087b8510268f8fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6416455309e5deb9aba92ecebc066fce179ad4fa`.

Source path: `GRWTSK/Topology/EffectiveEpi/Variant79724d9780d2306e0f8fd10ce631e73c9bf405a4fe7a12e25087b8510268f8fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/EffectiveEpi/Variant79724d9780d2306e0f8fd10ce631e73c9bf405a4fe7a12e25087b8510268f8fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Coherent.ReflectsPreregular` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHaus.EffectiveEpi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Stonean.Limits` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [effectiveEpi_tfae](../../../../mathematics/Topology/EffectiveEpi/Variant79724d9780d2306e0f8fd10ce631e73c9bf405a4fe7a12e25087b8510268f8fe.lean/declarations/effectiveepi-tfae--76edab6ddf052056255e363e.md) | 30 | `result-track:76edab6ddf052056255e363e6397075a8e3b93b118173513fe3403123c232175` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Topology/EffectiveEpi/Variant79724d9780d2306e0f8fd10ce631e73c9bf405a4fe7a12e25087b8510268f8fe.lean/declarations/instance--c1b4f0528f66aa3d988e5254.md) | 42 | `declaration-track:c1b4f0528f66aa3d988e525423d5e1694895efeb8e45e60a553cde51c9a561b1` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Topology/EffectiveEpi/Variant79724d9780d2306e0f8fd10ce631e73c9bf405a4fe7a12e25087b8510268f8fe.lean/declarations/instance--646baf8eb46079cb9761e1d2.md) | 47 | `declaration-track:646baf8eb46079cb9761e1d26ae55dc28a051f2f6e0b036f7208fb96df75e055` |
| 4 | `def` | [stoneanToCompHausEffectivePresentation](../../../../mathematics/Topology/EffectiveEpi/Variant79724d9780d2306e0f8fd10ce631e73c9bf405a4fe7a12e25087b8510268f8fe.lean/declarations/stoneantocomphauseffectivepresentation--91f6ba9490a77f2fc1f64a27.md) | 55 | `declaration-track:91f6ba9490a77f2fc1f64a274a54c830c0cd299e9a546cbee7c9ba7b60281df3` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Topology/EffectiveEpi/Variant79724d9780d2306e0f8fd10ce631e73c9bf405a4fe7a12e25087b8510268f8fe.lean/declarations/instance--692a29eb4c7d03b83fadcc24.md) | 61 | `declaration-track:692a29eb4c7d03b83fadcc2434b54e91c9507cb6771fd0115f3b9ff8c8218783` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Topology/EffectiveEpi/Variant79724d9780d2306e0f8fd10ce631e73c9bf405a4fe7a12e25087b8510268f8fe.lean/declarations/instance--817c1318dc7cc4ecf907ed7d.md) | 64 | `declaration-track:817c1318dc7cc4ecf907ed7d2cdc1cf8d053c7a155698f03e5f84037e1532ee5` |
| 7 | `example` | [(anonymous)](../../../../mathematics/Topology/EffectiveEpi/Variant79724d9780d2306e0f8fd10ce631e73c9bf405a4fe7a12e25087b8510268f8fe.lean/declarations/example--dc9c37bc28368f8b51144cf7.md) | 66 | `declaration-track:dc9c37bc28368f8b51144cf71d761090079437c4b5e453ed8c1e47fde2ba80bb` |
| 8 | `theorem` | [effectiveEpiFamily_tfae](../../../../mathematics/Topology/EffectiveEpi/Variant79724d9780d2306e0f8fd10ce631e73c9bf405a4fe7a12e25087b8510268f8fe.lean/declarations/effectiveepifamily-tfae--7f3f28e97922b1166ffe2153.md) | 70 | `result-track:7f3f28e97922b1166ffe21530ce1eb7dfc101ef2001336a0f9d5e4137ca6a8c6` |
| 9 | `theorem` | [effectiveEpiFamily_of_jointly_surjective](../../../../mathematics/Topology/EffectiveEpi/Variant79724d9780d2306e0f8fd10ce631e73c9bf405a4fe7a12e25087b8510268f8fe.lean/declarations/effectiveepifamily-of-jointly-surjective--8b9a218f8ee51fed2e0b208d.md) | 89 | `result-track:8b9a218f8ee51fed2e0b208dbda5668c29e47518e0525cb3c9f1f487fded0156` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
