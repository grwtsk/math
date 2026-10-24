# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ScottContinuity.Varianta37a7f84a48498352ecf2491f25d0cec1ba4fe2c75ae30f06e374369929b0257

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbd97f4802268865e58bc17071341cad6f1565b3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Varianta37a7f84a48498352ecf2491f25d0cec1ba4fe2c75ae30f06e374369929b0257.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Varianta37a7f84a48498352ecf2491f25d0cec1ba4fe2c75ae30f06e374369929b0257.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Varianta37a7f84a48498352ecf2491f25d0cec1ba4fe2c75ae30f06e374369929b0257.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbd97f4802268865e58bc17071341cad6f1565b3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Varianta37a7f84a48498352ecf2491f25d0cec1ba4fe2c75ae30f06e374369929b0257.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Varianta37a7f84a48498352ecf2491f25d0cec1ba4fe2c75ae30f06e374369929b0257.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Bounds.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ScottContinuousOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Varianta37a7f84a48498352ecf2491f25d0cec1ba4fe2c75ae30f06e374369929b0257.lean/declarations/scottcontinuouson--0b127a85dbda24f5ea53722c.md) | 49 | `declaration-track:0b127a85dbda24f5ea53722c3e87f0809a1df21e597201d3430494c4b383c678` |
| 2 | `lemma` | [ScottContinuousOn.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Varianta37a7f84a48498352ecf2491f25d0cec1ba4fe2c75ae30f06e374369929b0257.lean/declarations/scottcontinuouson-mono--a8135a976979915465b2465f.md) | 52 | `result-track:a8135a976979915465b2465ffa65258aa8a106f337a6596f0d5f03a1f77df7d3` |
| 3 | `theorem` | [ScottContinuousOn.monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Varianta37a7f84a48498352ecf2491f25d0cec1ba4fe2c75ae30f06e374369929b0257.lean/declarations/scottcontinuouson-monotone--8243ac5d9078159c7f061526.md) | 55 | `result-track:8243ac5d9078159c7f06152614bcd868d324722285f9d03552bbc85676408e8f` |
| 4 | `lemma` | [ScottContinuousOn.id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Varianta37a7f84a48498352ecf2491f25d0cec1ba4fe2c75ae30f06e374369929b0257.lean/declarations/scottcontinuouson-id--c4a2f105a1135a8ab2c366e6.md) | 64 | `result-track:c4a2f105a1135a8ab2c366e685b906ec34423390a9126a5e232a07c12faffa8b` |
| 5 | `lemma` | [ScottContinuousOn.prodMk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Varianta37a7f84a48498352ecf2491f25d0cec1ba4fe2c75ae30f06e374369929b0257.lean/declarations/scottcontinuouson-prodmk--899966836335617e005e6a97.md) | 68 | `result-track:899966836335617e005e6a97f5316a3bc67c4f8edfd21ca76332c651c56b6501` |
| 6 | `def` | [ScottContinuous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Varianta37a7f84a48498352ecf2491f25d0cec1ba4fe2c75ae30f06e374369929b0257.lean/declarations/scottcontinuous--0dc0cccb3b8d49e6635657bb.md) | 94 | `declaration-track:0dc0cccb3b8d49e6635657bb7f89b4f308c9148ca98c2fb837d661e9d141e138` |
| 7 | `lemma` | [scottContinuousOn_univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Varianta37a7f84a48498352ecf2491f25d0cec1ba4fe2c75ae30f06e374369929b0257.lean/declarations/scottcontinuouson-univ--244fefc6486bafd5f2c58191.md) | 97 | `result-track:244fefc6486bafd5f2c581917150561f632389eace7351b144dd1577df39855c` |
| 8 | `lemma` | [ScottContinuous.scottContinuousOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Varianta37a7f84a48498352ecf2491f25d0cec1ba4fe2c75ae30f06e374369929b0257.lean/declarations/scottcontinuous-scottcontinuouson--3dbf2702337428510fe4a31c.md) | 100 | `result-track:3dbf2702337428510fe4a31c9392e32e34e1bb1609b054e7fe33f7ed612b4b9d` |
| 9 | `theorem` | [ScottContinuous.monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Varianta37a7f84a48498352ecf2491f25d0cec1ba4fe2c75ae30f06e374369929b0257.lean/declarations/scottcontinuous-monotone--d9ad63f3d5392ff80c159ad8.md) | 103 | `result-track:d9ad63f3d5392ff80c159ad8f215b41672558e4792fba37e6b57c6669cabbac2` |
| 10 | `lemma` | [ScottContinuous.id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Varianta37a7f84a48498352ecf2491f25d0cec1ba4fe2c75ae30f06e374369929b0257.lean/declarations/scottcontinuous-id--75415f522af32dc4802a5f6b.md) | 106 | `result-track:75415f522af32dc4802a5f6bf932f31b5cc2ce7dea8d06c5ae26ed8d191fb402` |
| 11 | `lemma` | [ScottContinuous.sup₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Varianta37a7f84a48498352ecf2491f25d0cec1ba4fe2c75ae30f06e374369929b0257.lean/declarations/scottcontinuous-sup--e117d8f7e49eb67d157c7a3c.md) | 114 | `result-track:e117d8f7e49eb67d157c7a3ce0d3643e286ad6f16ea6035bbd3d69d46bbc5dfb` |
| 12 | `lemma` | [ScottContinuousOn.sup₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Varianta37a7f84a48498352ecf2491f25d0cec1ba4fe2c75ae30f06e374369929b0257.lean/declarations/scottcontinuouson-sup--464a35a7997d1dc6145f3365.md) | 126 | `result-track:464a35a7997d1dc6145f3365069c5326210f67929489e7886bdccbbdb3136aa7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
