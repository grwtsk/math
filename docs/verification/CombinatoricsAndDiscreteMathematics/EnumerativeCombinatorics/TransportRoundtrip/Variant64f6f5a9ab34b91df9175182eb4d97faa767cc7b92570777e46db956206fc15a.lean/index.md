# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.TransportRoundtrip.Variant64f6f5a9ab34b91df9175182eb4d97faa767cc7b92570777e46db956206fc15a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3b77e1ce6bcff537b555e86880e98b9d37f3031",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant64f6f5a9ab34b91df9175182eb4d97faa767cc7b92570777e46db956206fc15a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant64f6f5a9ab34b91df9175182eb4d97faa767cc7b92570777e46db956206fc15a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant64f6f5a9ab34b91df9175182eb4d97faa767cc7b92570777e46db956206fc15a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3b77e1ce6bcff537b555e86880e98b9d37f3031`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant64f6f5a9ab34b91df9175182eb4d97faa767cc7b92570777e46db956206fc15a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant64f6f5a9ab34b91df9175182eb4d97faa767cc7b92570777e46db956206fc15a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Monodromy.CatalanTransport` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.DerivedSheaf.RodgersTaoEulerTransport` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.DerivedSheaf.RodgersTaoQuasiIsomorphism` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [catalan_expand_contract_roundtrip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant64f6f5a9ab34b91df9175182eb4d97faa767cc7b92570777e46db956206fc15a.lean/declarations/catalan-expand-contract-roundtrip--0866c4270077d046cb8f81d4.md) | 29 | `result-track:0866c4270077d046cb8f81d4057ef236a8d84e7d848776fa12514be4774ffde1` |
| 2 | `theorem` | [catalan_contract_expand_roundtrip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant64f6f5a9ab34b91df9175182eb4d97faa767cc7b92570777e46db956206fc15a.lean/declarations/catalan-contract-expand-roundtrip--c95aa75c30b4e2ba8d19a1b9.md) | 39 | `result-track:c95aa75c30b4e2ba8d19a1b9d661972437944fecaef572f1a1f2c2590314f688` |
| 3 | `theorem` | [rodgersTao_transport_preserves_euler_characteristic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant64f6f5a9ab34b91df9175182eb4d97faa767cc7b92570777e46db956206fc15a.lean/declarations/rodgerstao-transport-preserves-euler-characteristic--c8704f339728c8f2985ca671.md) | 61 | `result-track:c8704f339728c8f2985ca671e9191012296e0fe0d0730a5bf944ce55b1831f3d` |
| 4 | `theorem` | [rodgersTao_transport_is_quasi_isomorphism](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant64f6f5a9ab34b91df9175182eb4d97faa767cc7b92570777e46db956206fc15a.lean/declarations/rodgerstao-transport-is-quasi-isomorphism--8db0aa91360d47bacba1380e.md) | 71 | `result-track:8db0aa91360d47bacba1380e1bc6c5a31a8d607eab634ad33363271ea81c5f3a` |
| 5 | `theorem` | [rodgersTao_index_transport_is_quasi_isomorphism](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant64f6f5a9ab34b91df9175182eb4d97faa767cc7b92570777e46db956206fc15a.lean/declarations/rodgerstao-index-transport-is-quasi-isomorphism--a550ecd412f948a5206bc21c.md) | 76 | `result-track:a550ecd412f948a5206bc21cf388a361dee64010abd0991feab8972e76c1fb1c` |
| 6 | `theorem` | [rodgersTao_index_transport_preserves_euler](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant64f6f5a9ab34b91df9175182eb4d97faa767cc7b92570777e46db956206fc15a.lean/declarations/rodgerstao-index-transport-preserves-euler--b4ec7ed142b3cd739f842281.md) | 81 | `result-track:b4ec7ed142b3cd739f842281e9f74045f69b5f178d7343e48f5d004684c692e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
