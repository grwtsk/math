# Verification target: GRWTSK.Topology.GeneralTopology.CompactlyGenerated.Variant0728a605e6db4f45d8e39e70994ff5e1f83cea7e74b8c7674387b6924655a04a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6213ed0602433d989d1c3f1243b763ab3a2d1a15",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactlyGenerated/Variant0728a605e6db4f45d8e39e70994ff5e1f83cea7e74b8c7674387b6924655a04a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Variant0728a605e6db4f45d8e39e70994ff5e1f83cea7e74b8c7674387b6924655a04a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Variant0728a605e6db4f45d8e39e70994ff5e1f83cea7e74b8c7674387b6924655a04a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6213ed0602433d989d1c3f1243b763ab3a2d1a15`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactlyGenerated/Variant0728a605e6db4f45d8e39e70994ff5e1f83cea7e74b8c7674387b6924655a04a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactlyGenerated/Variant0728a605e6db4f45d8e39e70994ff5e1f83cea7e74b8c7674387b6924655a04a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Compactness.CompactlyGeneratedSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.Proper.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isProperMap_iff_isCompact_preimage](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Variant0728a605e6db4f45d8e39e70994ff5e1f83cea7e74b8c7674387b6924655a04a.lean/declarations/ispropermap-iff-iscompact-preimage--72019bec3235fbc7192c6564.md) | 28 | `result-track:72019bec3235fbc7192c656483b968f73ffb2ce6969bb85e95e4ac28b5a38d3a` |
| 2 | `lemma` | [isProperMap_iff_tendsto_cocompact](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Variant0728a605e6db4f45d8e39e70994ff5e1f83cea7e74b8c7674387b6924655a04a.lean/declarations/ispropermap-iff-tendsto-cocompact--d5fa378cfe3c884dfd13960e.md) | 40 | `result-track:d5fa378cfe3c884dfd13960e64a40319030205b41e437d4fc4dc2554cb9afc3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
