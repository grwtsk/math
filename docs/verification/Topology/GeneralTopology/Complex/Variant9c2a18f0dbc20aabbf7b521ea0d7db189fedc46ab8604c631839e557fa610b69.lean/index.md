# Verification target: GRWTSK.Topology.GeneralTopology.Complex.Variant9c2a18f0dbc20aabbf7b521ea0d7db189fedc46ab8604c631839e557fa610b69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ac438ded6e562e9336a3bfceb77fb691b9a618e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Complex/Variant9c2a18f0dbc20aabbf7b521ea0d7db189fedc46ab8604c631839e557fa610b69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant9c2a18f0dbc20aabbf7b521ea0d7db189fedc46ab8604c631839e557fa610b69.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant9c2a18f0dbc20aabbf7b521ea0d7db189fedc46ab8604c631839e557fa610b69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ac438ded6e562e9336a3bfceb77fb691b9a618e`.

Source path: `GRWTSK/Topology/GeneralTopology/Complex/Variant9c2a18f0dbc20aabbf7b521ea0d7db189fedc46ab8604c631839e557fa610b69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Complex/Variant9c2a18f0dbc20aabbf7b521ea0d7db189fedc46ab8604c631839e557fa610b69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.AbsMax` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Complex.norm_eventually_eq_of_mdifferentiableAt_of_isLocalMax](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant9c2a18f0dbc20aabbf7b521ea0d7db189fedc46ab8604c631839e557fa610b69.lean/declarations/complex-norm-eventually-eq-of-mdifferentiableat-of-islocalmax--96775247db275c8630b345f5.md) | 64 | `result-track:96775247db275c8630b345f5814e7e1432184cf10b2b1a93c0977fe00cfa80e5` |
| 2 | `theorem` | [norm_eqOn_of_isPreconnected_of_isMaxOn](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant9c2a18f0dbc20aabbf7b521ea0d7db189fedc46ab8604c631839e557fa610b69.lean/declarations/norm-eqon-of-ispreconnected-of-ismaxon--ccfea97b023b73ad3a125b96.md) | 96 | `result-track:ccfea97b023b73ad3a125b96857b35c5c37dcdb44e383c9b8f08c604f9f296a5` |
| 3 | `theorem` | [eqOn_of_isPreconnected_of_isMaxOn_norm](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant9c2a18f0dbc20aabbf7b521ea0d7db189fedc46ab8604c631839e557fa610b69.lean/declarations/eqon-of-ispreconnected-of-ismaxon-norm--2c3baf53619414dd02acc407.md) | 121 | `result-track:2c3baf53619414dd02acc407c535b84a3655cd53eb3ef256d6e4ed72070f9e77` |
| 4 | `theorem` | [apply_eq_of_isPreconnected_isCompact_isOpen](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant9c2a18f0dbc20aabbf7b521ea0d7db189fedc46ab8604c631839e557fa610b69.lean/declarations/apply-eq-of-ispreconnected-iscompact-isopen--9fe3eb2ac739d330c849a939.md) | 134 | `result-track:9fe3eb2ac739d330c849a9394af02f10c2baeaf9debaaac4595f3ccc0621e2b2` |
| 5 | `theorem` | [isLocallyConstant](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant9c2a18f0dbc20aabbf7b521ea0d7db189fedc46ab8604c631839e557fa610b69.lean/declarations/islocallyconstant--4a4800c17360d304f119170d.md) | 163 | `result-track:4a4800c17360d304f119170d72f522b0351f3fe40123c5452a41c46103889b65` |
| 6 | `theorem` | [apply_eq_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant9c2a18f0dbc20aabbf7b521ea0d7db189fedc46ab8604c631839e557fa610b69.lean/declarations/apply-eq-of-compactspace--a2fb51cfab0a88c355c2609d.md) | 173 | `result-track:a2fb51cfab0a88c355c2609db0d8206f982f7880aeb8156a2714914eb20249de` |
| 7 | `theorem` | [exists_eq_const_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant9c2a18f0dbc20aabbf7b521ea0d7db189fedc46ab8604c631839e557fa610b69.lean/declarations/exists-eq-const-of-compactspace--dc1d6c9777e1c0441879ab72.md) | 180 | `result-track:dc1d6c9777e1c0441879ab7230f7368ce2564c9e6835dbcf6fb5fee018205d8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
