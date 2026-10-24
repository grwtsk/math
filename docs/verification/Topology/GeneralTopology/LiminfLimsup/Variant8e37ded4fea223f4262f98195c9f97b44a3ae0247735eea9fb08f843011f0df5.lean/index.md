# Verification target: GRWTSK.Topology.GeneralTopology.LiminfLimsup.Variant8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40e2d6f9d7c860630ff6f56d3d8d59910debae71",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40e2d6f9d7c860630ff6f56d3d8d59910debae71`.

Source path: `GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LiminfLimsup/Variant8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [blimsup_cthickening_ae_le_of_eventually_mul_le_aux](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5.lean/declarations/blimsup-cthickening-ae-le-of-eventually-mul-le-aux--bbdc86792968ac637bbb6e84.md) | 44 | `result-track:bbdc86792968ac637bbb6e840048c31b4563caa368efb697dd39a7239e1ccd1f` |
| 2 | `theorem` | [blimsup_cthickening_ae_le_of_eventually_mul_le](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5.lean/declarations/blimsup-cthickening-ae-le-of-eventually-mul-le--8088ead2fc3666a4356cd1c9.md) | 157 | `result-track:8088ead2fc3666a4356cd1c99858e3c2527e2f599285a168a0c9f7fd24abc38f` |
| 3 | `theorem` | [blimsup_cthickening_mul_ae_eq](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5.lean/declarations/blimsup-cthickening-mul-ae-eq--b6bfd339554b9b76cb60b7b9.md) | 190 | `result-track:b6bfd339554b9b76cb60b7b99735ed3df9afb14f9cf5aa162a83631cb6f63498` |
| 4 | `theorem` | [blimsup_cthickening_ae_eq_blimsup_thickening](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5.lean/declarations/blimsup-cthickening-ae-eq-blimsup-thickening--bc0ee9d4d1b563b33706254f.md) | 228 | `result-track:bc0ee9d4d1b563b33706254f5cd569e0b324028514a0be6d7f6db6cbd0e008e5` |
| 5 | `theorem` | [blimsup_thickening_mul_ae_eq_aux](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5.lean/declarations/blimsup-thickening-mul-ae-eq-aux--6c0a54c007be5b8b968275ff.md) | 240 | `result-track:6c0a54c007be5b8b968275ff0b92bb9f5b36a3d377d7f8a28a14a4c5c380898e` |
| 6 | `theorem` | [blimsup_thickening_mul_ae_eq](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant8e37ded4fea223f4262f98195c9f97b44a3ae0247735eea9fb08f843011f0df5.lean/declarations/blimsup-thickening-mul-ae-eq--c9a02611aa9b1719d058056d.md) | 263 | `result-track:c9a02611aa9b1719d058056d41e2599ff655d1e7a58ab4aea32424a752ce6ea0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
