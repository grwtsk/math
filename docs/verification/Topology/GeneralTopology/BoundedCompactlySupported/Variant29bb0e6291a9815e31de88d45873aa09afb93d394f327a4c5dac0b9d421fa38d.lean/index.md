# Verification target: GRWTSK.Topology.GeneralTopology.BoundedCompactlySupported.Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7057082b82379dafed722616d1af0a2704f9769",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/BoundedCompactlySupported/Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7057082b82379dafed722616d1af0a2704f9769`.

Source path: `GRWTSK/Topology/GeneralTopology/BoundedCompactlySupported/Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/BoundedCompactlySupported/Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousMap.Bounded.Normed` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compactlySupported](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d.lean/declarations/compactlysupported--b476bca1946187df8846485c.md) | 20 | `declaration-track:b476bca1946187df8846485c0feec743bca08d436a5a32c63d81be69cf5f3c33` |
| 2 | `lemma` | [mem_compactlySupported](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d.lean/declarations/mem-compactlysupported--1a7e927c1c5fce51a9ff1fde.md) | 30 | `result-track:1a7e927c1c5fce51a9ff1fde495ec76a316b6e0a5ac885d5e5f0ce25089ccd83` |
| 3 | `lemma` | [exist_norm_eq](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d.lean/declarations/exist-norm-eq--5b35ca3b5c94bda8fb235611.md) | 34 | `result-track:5b35ca3b5c94bda8fb235611d822c2f30fb4d28bebe3f892341f366505b78cc7` |
| 4 | `theorem` | [norm_lt_iff_of_compactlySupported](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d.lean/declarations/norm-lt-iff-of-compactlysupported--88b54fb58dd5e5cdb352110a.md) | 46 | `result-track:88b54fb58dd5e5cdb352110a1ee3cefff84e22da2e33e190888bfe033c9f28d2` |
| 5 | `theorem` | [norm_lt_iff_of_nonempty_compactlySupported](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d.lean/declarations/norm-lt-iff-of-nonempty-compactlysupported--70abfe746dd2003aca3d4238.md) | 54 | `result-track:70abfe746dd2003aca3d4238802ef2b7944591e8a02f08ae362475a2316b2d22` |
| 6 | `theorem` | [compactlySupported_eq_top_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d.lean/declarations/compactlysupported-eq-top-of-iscompact--142e0eb9c98dd3eb616df37f.md) | 61 | `result-track:142e0eb9c98dd3eb616df37f53413a51eede4784ff4549d9e67885b1b3445e00` |
| 7 | `theorem` | [compactlySupported_eq_top](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d.lean/declarations/compactlysupported-eq-top--dae2ad6dd272dca659a644b6.md) | 67 | `result-track:dae2ad6dd272dca659a644b68425161999caed2f9178c100387439cd626807ff` |
| 8 | `theorem` | [compactlySupported_eq_top_iff](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d.lean/declarations/compactlysupported-eq-top-iff--96969e17c53992843e983392.md) | 70 | `result-track:96969e17c53992843e9833923ba3bb9839db883837b4f658a257064f477575eb` |
| 9 | `def` | [ofCompactSupport](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d.lean/declarations/ofcompactsupport--3164008e048fe60742aae512.md) | 79 | `declaration-track:3164008e048fe60742aae5128b8ea67857cfaf4976c4c7379ee301b9702dcf8d` |
| 10 | `lemma` | [ofCompactSupport_mem](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d.lean/declarations/ofcompactsupport-mem--d45cee5c3f253704699e6306.md) | 91 | `result-track:d45cee5c3f253704699e63067ef0047d935e3691d5c2f9d9f469e06b6c874cad` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant29bb0e6291a9815e31de88d45873aa09afb93d394f327a4c5dac0b9d421fa38d.lean/declarations/instance--7579c06d0c1ef7209de041a2.md) | 94 | `declaration-track:7579c06d0c1ef7209de041a24e43e06700ad2e767f06c7ddfae855a9fef42350` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
