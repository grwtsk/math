# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Positivity.Variante5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e218541d184a94b85653caa33aca5decfaf0cee",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Positivity/Variante5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Positivity/Variante5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Positivity/Variante5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e218541d184a94b85653caa33aca5decfaf0cee`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Positivity/Variante5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Positivity/Variante5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.RH.TraceFormula` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProvenPositivityData](../../../../../mathematics/Analysis/FunctionalAnalysis/Positivity/Variante5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6.lean/declarations/provenpositivitydata--df6d41ff1fc707b70871872e.md) | 27 | `declaration-track:df6d41ff1fc707b70871872e1f41de772d811e38b5336559aa0a4195fcca67e7` |
| 2 | `theorem` | [positivity_data_uses_operator](../../../../../mathematics/Analysis/FunctionalAnalysis/Positivity/Variante5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6.lean/declarations/positivity-data-uses-operator--a56abe7548832bffc4c6d416.md) | 34 | `result-track:a56abe7548832bffc4c6d41679ab08f597eb3176007fb823d5c1a5a0ae25346d` |
| 3 | `theorem` | [dense_domain_from_operator_data](../../../../../mathematics/Analysis/FunctionalAnalysis/Positivity/Variante5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6.lean/declarations/dense-domain-from-operator-data--6852a64efc1fd3bae72d318e.md) | 40 | `result-track:6852a64efc1fd3bae72d318ee0026715093e33b6d3439e665b1403801ff7db8b` |
| 4 | `def` | [realQuadraticForm](../../../../../mathematics/Analysis/FunctionalAnalysis/Positivity/Variante5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6.lean/declarations/realquadraticform--b714aa0bfb6acb10a23e5548.md) | 45 | `declaration-track:b714aa0bfb6acb10a23e55484e7852bdcc44eadb5affcec2d5e982a29cf0fcb2` |
| 5 | `def` | [ProvenPositivity](../../../../../mathematics/Analysis/FunctionalAnalysis/Positivity/Variante5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6.lean/declarations/provenpositivity--33ae4c3f2bb8410fefeeaf50.md) | 51 | `declaration-track:33ae4c3f2bb8410fefeeaf505f7a505bf12c202328f856871938404383f5f579` |
| 6 | `theorem` | [positivity_from_operator_data](../../../../../mathematics/Analysis/FunctionalAnalysis/Positivity/Variante5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6.lean/declarations/positivity-from-operator-data--047075e4cbcb6825b2551be9.md) | 57 | `result-track:047075e4cbcb6825b2551be9867628a6830212962121f537fb1053d290962e75` |
| 7 | `theorem` | [proven_positivity_from_operator_data](../../../../../mathematics/Analysis/FunctionalAnalysis/Positivity/Variante5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6.lean/declarations/proven-positivity-from-operator-data--312e7bd51c5a2b947fc75c59.md) | 64 | `result-track:312e7bd51c5a2b947fc75c59b6821100bb24ad0b01492757869fb7930657e981` |
| 8 | `theorem` | [selfAdjoint_from_operator_theorem](../../../../../mathematics/Analysis/FunctionalAnalysis/Positivity/Variante5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6.lean/declarations/selfadjoint-from-operator-theorem--6a777a30592ddc45a5c5bcfb.md) | 70 | `result-track:6a777a30592ddc45a5c5bcfb43eb8ce19f04c8d81e3734e98e6614bb8f2f4b1e` |
| 9 | `theorem` | [compactResolvent_from_operator_theorem](../../../../../mathematics/Analysis/FunctionalAnalysis/Positivity/Variante5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6.lean/declarations/compactresolvent-from-operator-theorem--d9b0a5f97bbe5e75245bf293.md) | 76 | `result-track:d9b0a5f97bbe5e75245bf29344e281eef815a2f0781fb20a0112a04ce74cbe41` |
| 10 | `theorem` | [spectral_reality_from_selfAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/Positivity/Variante5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6.lean/declarations/spectral-reality-from-selfadjoint--f7c06af6ccc4256b15f59b61.md) | 82 | `result-track:f7c06af6ccc4256b15f59b61cc2e963dd2a9c8016c17c19cf73361d9859ed394` |
| 11 | `theorem` | [real_spectrum_from_selfAdjoint_theorem](../../../../../mathematics/Analysis/FunctionalAnalysis/Positivity/Variante5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6.lean/declarations/real-spectrum-from-selfadjoint-theorem--45df422d874bccc26d4af11d.md) | 89 | `result-track:45df422d874bccc26d4af11ddb276737e6fd1df7ed42de9faff2167bc98da329` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
