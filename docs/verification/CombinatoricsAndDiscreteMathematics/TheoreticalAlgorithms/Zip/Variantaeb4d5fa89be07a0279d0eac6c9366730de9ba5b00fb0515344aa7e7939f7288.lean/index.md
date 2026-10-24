# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Zip.Variantaeb4d5fa89be07a0279d0eac6c9366730de9ba5b00fb0515344aa7e7939f7288

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e92b4318753236021165a34e063a0496f6d0606b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantaeb4d5fa89be07a0279d0eac6c9366730de9ba5b00fb0515344aa7e7939f7288.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantaeb4d5fa89be07a0279d0eac6c9366730de9ba5b00fb0515344aa7e7939f7288.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantaeb4d5fa89be07a0279d0eac6c9366730de9ba5b00fb0515344aa7e7939f7288.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e92b4318753236021165a34e063a0496f6d0606b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantaeb4d5fa89be07a0279d0eac6c9366730de9ba5b00fb0515344aa7e7939f7288.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantaeb4d5fa89be07a0279d0eac6c9366730de9ba5b00fb0515344aa7e7939f7288.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Vector.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantaeb4d5fa89be07a0279d0eac6c9366730de9ba5b00fb0515344aa7e7939f7288.lean/declarations/zipwith--4de1ac2dc12fbd60c9bd97cc.md) | 29 | `declaration-track:4de1ac2dc12fbd60c9bd97ccf3544e9550af23fa6be08d56ae2ebed524843458` |
| 2 | `theorem` | [zipWith_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantaeb4d5fa89be07a0279d0eac6c9366730de9ba5b00fb0515344aa7e7939f7288.lean/declarations/zipwith-tolist--f0c60ea38f3c18c9ade1a812.md) | 32 | `result-track:f0c60ea38f3c18c9ade1a812a6b888709e0fb24810a00280d0860163f4503890` |
| 3 | `theorem` | [zipWith_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantaeb4d5fa89be07a0279d0eac6c9366730de9ba5b00fb0515344aa7e7939f7288.lean/declarations/zipwith-get--62f6a8f46bae4d614bd4aaf4.md) | 37 | `result-track:62f6a8f46bae4d614bd4aaf4700de600914a10eb89459777047876884ec46942` |
| 4 | `theorem` | [zipWith_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantaeb4d5fa89be07a0279d0eac6c9366730de9ba5b00fb0515344aa7e7939f7288.lean/declarations/zipwith-tail--1819e3693ee7d6bd5d6f8010.md) | 43 | `result-track:1819e3693ee7d6bd5d6f8010e81b1e5e7c8beed99cfac3236849001d2d3e90dd` |
| 5 | `theorem` | [prod_mul_prod_eq_prod_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantaeb4d5fa89be07a0279d0eac6c9366730de9ba5b00fb0515344aa7e7939f7288.lean/declarations/prod-mul-prod-eq-prod-zipwith--d170afcc77f66af20fba2770.md) | 49 | `result-track:d170afcc77f66af20fba277065973c74e712d9af7e84cf573c1e14811cdd4ecf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
