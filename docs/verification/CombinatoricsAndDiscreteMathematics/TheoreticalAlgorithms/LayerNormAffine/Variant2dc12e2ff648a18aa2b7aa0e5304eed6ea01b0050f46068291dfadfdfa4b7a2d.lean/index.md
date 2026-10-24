# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LayerNormAffine.Variant2dc12e2ff648a18aa2b7aa0e5304eed6ea01b0050f46068291dfadfdfa4b7a2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13d69f99b1c0e8351c9445300c75520a6ccc8b5b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant2dc12e2ff648a18aa2b7aa0e5304eed6ea01b0050f46068291dfadfdfa4b7a2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant2dc12e2ff648a18aa2b7aa0e5304eed6ea01b0050f46068291dfadfdfa4b7a2d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant2dc12e2ff648a18aa2b7aa0e5304eed6ea01b0050f46068291dfadfdfa4b7a2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13d69f99b1c0e8351c9445300c75520a6ccc8b5b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant2dc12e2ff648a18aa2b7aa0e5304eed6ea01b0050f46068291dfadfdfa4b7a2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant2dc12e2ff648a18aa2b7aa0e5304eed6ea01b0050f46068291dfadfdfa4b7a2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.ML.Transformer` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Affine.Vector` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forwardAffine](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant2dc12e2ff648a18aa2b7aa0e5304eed6ea01b0050f46068291dfadfdfa4b7a2d.lean/declarations/forwardaffine--b0b2e096ebe0f2d71d88ec0f.md) | 61 | `declaration-track:b0b2e096ebe0f2d71d88ec0fafc6566e8b10fb17e9e6653be027bf7f2d16fae4` |
| 2 | `def` | [forwardIntervalTight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant2dc12e2ff648a18aa2b7aa0e5304eed6ea01b0050f46068291dfadfdfa4b7a2d.lean/declarations/forwardintervaltight--52d1d5a2a4a3bff0364555f5.md) | 73 | `declaration-track:52d1d5a2a4a3bff0364555f5bbf48db0d79dc6b7c37b291f01c26d893d1cc22f` |
| 3 | `def` | [compareBounds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant2dc12e2ff648a18aa2b7aa0e5304eed6ea01b0050f46068291dfadfdfa4b7a2d.lean/declarations/comparebounds--d5e76b853f1f18463b2fea2f.md) | 86 | `declaration-track:d5e76b853f1f18463b2fea2f537d12deaf9be962566d61f3b5051929ca5a256e` |
| 4 | `def` | [tightnessRatio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant2dc12e2ff648a18aa2b7aa0e5304eed6ea01b0050f46068291dfadfdfa4b7a2d.lean/declarations/tightnessratio--69670296f22dd38c2df200be.md) | 96 | `declaration-track:69670296f22dd38c2df200be3cd10b76a98605515092f7d7e2443d2e6effc206` |
| 5 | `theorem` | [mem_forwardAffine](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant2dc12e2ff648a18aa2b7aa0e5304eed6ea01b0050f46068291dfadfdfa4b7a2d.lean/declarations/mem-forwardaffine--b50c556b0da6495c983b4196.md) | 124 | `result-track:b50c556b0da6495c983b419696e2f09ca0abb2b1b6d532784ddbc45ede215134` |
| 6 | `def` | [FFNBlock.forwardIntervalTight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant2dc12e2ff648a18aa2b7aa0e5304eed6ea01b0050f46068291dfadfdfa4b7a2d.lean/declarations/ffnblock-forwardintervaltight--bb785a75a3656e6cea8a4ea8.md) | 156 | `declaration-track:bb785a75a3656e6cea8a4ea8d8e157fa8fba3adae68a08eacac6c86df8a7ae5a` |
| 7 | `def` | [TransformerBlock.forwardIntervalTight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant2dc12e2ff648a18aa2b7aa0e5304eed6ea01b0050f46068291dfadfdfa4b7a2d.lean/declarations/transformerblock-forwardintervaltight--d4e14b3e8b1d65e9427d7bcb.md) | 167 | `declaration-track:d4e14b3e8b1d65e9427d7bcbed33676616ff51219ae435665efdc52c430430ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
