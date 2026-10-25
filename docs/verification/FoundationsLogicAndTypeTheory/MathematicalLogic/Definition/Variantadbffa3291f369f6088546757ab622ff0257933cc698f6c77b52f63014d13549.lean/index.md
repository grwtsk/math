# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Definition.Variantadbffa3291f369f6088546757ab622ff0257933cc698f6c77b52f63014d13549

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59966b290b6b2954417f59070d9f030e8821f218",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Definition/Variantadbffa3291f369f6088546757ab622ff0257933cc698f6c77b52f63014d13549.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Definition/Variantadbffa3291f369f6088546757ab622ff0257933cc698f6c77b52f63014d13549.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Definition/Variantadbffa3291f369f6088546757ab622ff0257933cc698f6c77b52f63014d13549.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59966b290b6b2954417f59070d9f030e8821f218`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Definition/Variantadbffa3291f369f6088546757ab622ff0257933cc698f6c77b52f63014d13549.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Definition/Variantadbffa3291f369f6088546757ab622ff0257933cc698f6c77b52f63014d13549.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.WP0.PrimeHorizon.Cut` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HorizonEmbedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Definition/Variantadbffa3291f369f6088546757ab622ff0257933cc698f6c77b52f63014d13549.lean/declarations/horizonembedding--1ed4576e654f82952e83d430.md) | 9 | `declaration-track:1ed4576e654f82952e83d43083d5643ceec97e9b21596f57fefccd89085ccd0f` |
| 2 | `def` | [HorizonEmbedding.mapCut](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Definition/Variantadbffa3291f369f6088546757ab622ff0257933cc698f6c77b52f63014d13549.lean/declarations/horizonembedding-mapcut--9170e76eed2f9721b43c8394.md) | 24 | `declaration-track:9170e76eed2f9721b43c8394d78839324cc4a0b2c8d86f87e5e788b17fe4a6e2` |
| 3 | `theorem` | [HorizonEmbedding.mapCut_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Definition/Variantadbffa3291f369f6088546757ab622ff0257933cc698f6c77b52f63014d13549.lean/declarations/horizonembedding-mapcut-empty--21f6ed341e5e7daec88420c7.md) | 32 | `result-track:21f6ed341e5e7daec88420c73a7cda2437889c1fd5d2b5d17ce3e90971d584dc` |
| 4 | `theorem` | [HorizonEmbedding.mapCut_insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Definition/Variantadbffa3291f369f6088546757ab622ff0257933cc698f6c77b52f63014d13549.lean/declarations/horizonembedding-mapcut-insert--256168db4e59057be67a5b6d.md) | 39 | `result-track:256168db4e59057be67a5b6ddf20df19e670ad83be241fb2926ae27100c3ec3f` |
| 5 | `theorem` | [HorizonEmbedding.mapCut_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Definition/Variantadbffa3291f369f6088546757ab622ff0257933cc698f6c77b52f63014d13549.lean/declarations/horizonembedding-mapcut-inj--7e4712628828ea4494cdfc81.md) | 50 | `result-track:7e4712628828ea4494cdfc81148551a425038cfac17c70ad0be2b5541154295c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
