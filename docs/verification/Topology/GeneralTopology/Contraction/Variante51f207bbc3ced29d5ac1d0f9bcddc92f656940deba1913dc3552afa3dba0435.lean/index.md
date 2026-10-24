# Verification target: GRWTSK.Topology.GeneralTopology.Contraction.Variante51f207bbc3ced29d5ac1d0f9bcddc92f656940deba1913dc3552afa3dba0435

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61b5dd30cab0f9e3b56e1fa631f7f2dd63d23839",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Contraction/Variante51f207bbc3ced29d5ac1d0f9bcddc92f656940deba1913dc3552afa3dba0435.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variante51f207bbc3ced29d5ac1d0f9bcddc92f656940deba1913dc3552afa3dba0435.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variante51f207bbc3ced29d5ac1d0f9bcddc92f656940deba1913dc3552afa3dba0435.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61b5dd30cab0f9e3b56e1fa631f7f2dd63d23839`.

Source path: `GRWTSK/Topology/GeneralTopology/Contraction/Variante51f207bbc3ced29d5ac1d0f9bcddc92f656940deba1913dc3552afa3dba0435.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Contraction/Variante51f207bbc3ced29d5ac1d0f9bcddc92f656940deba1913dc3552afa3dba0435.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.RootFinding.MVTBounds` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.RootFinding.Bisection` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.IntermediateValue` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [newton_contraction_has_root](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variante51f207bbc3ced29d5ac1d0f9bcddc92f656940deba1913dc3552afa3dba0435.lean/declarations/newton-contraction-has-root--d02be8de55394377a4d12cd9.md) | 47 | `result-track:d02be8de55394377a4d12cd9e6c21b7884670f19b89bba0b0c5f42c6f298feae` |
| 2 | `theorem` | [newton_contraction_unique_root](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variante51f207bbc3ced29d5ac1d0f9bcddc92f656940deba1913dc3552afa3dba0435.lean/declarations/newton-contraction-unique-root--c6f74387fabd28674af9f2ea.md) | 385 | `result-track:c6f74387fabd28674af9f2ea794d62c124901bc5a6fdcea876c41e4b191b671e` |
| 3 | `theorem` | [newtonIntervalGo_preserves_root](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variante51f207bbc3ced29d5ac1d0f9bcddc92f656940deba1913dc3552afa3dba0435.lean/declarations/newtonintervalgo-preserves-root--3ed8c9a00f63ded4ed0ff034.md) | 416 | `result-track:3ed8c9a00f63ded4ed0ff034205960367f8422af4502a680a9eacaadb34816d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
