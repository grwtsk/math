# Verification target: GRWTSK.Topology.GeneralTopology.Log1p.Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf9e8892b67e403f0ebaf17412bc3ebafbeb336d",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf9e8892b67e403f0ebaf17412bc3ebafbeb336d`.

Source path: `GRWTSK/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.TaylorModel.Core` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Tower` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log1pTaylorCoeffs](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/declarations/log1ptaylorcoeffs--34ead5bd866a38c58d04baf0.md) | 66 | `declaration-track:34ead5bd866a38c58d04baf001d985f0494a2fae3175d70e7f3d151928a06940` |
| 2 | `def` | [log1pTaylorPoly](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/declarations/log1ptaylorpoly--09857fdc5b6d83a43d1f4fad.md) | 72 | `declaration-track:09857fdc5b6d83a43d1f4fad0f819b074064b80c7c89366b86f8999711a7bb22` |
| 3 | `def` | [log1pLagrangeRemainder](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/declarations/log1plagrangeremainder--cb421467a5b9a81e3f210a63.md) | 82 | `declaration-track:cb421467a5b9a81e3f210a6308147b3d49a266f25413467807861661122502cc` |
| 4 | `theorem` | [log1pLagrangeRemainder_nonneg](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/declarations/log1plagrangeremainder-nonneg--83fe84172375e2cc6793b93a.md) | 93 | `result-track:83fe84172375e2cc6793b93a2fff3bef5496532a2d439e8635b811ecc66bb0eb` |
| 5 | `def` | [tmLog1p](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/declarations/tmlog1p--355a1da1faa754e946db2597.md) | 112 | `declaration-track:355a1da1faa754e946db2597d44509fd788d71862916d42e356e82c15bb27962` |
| 6 | `theorem` | [iteratedDeriv_log1p](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/declarations/iteratedderiv-log1p--d71a7ad69b69f2b1a0cafa34.md) | 132 | `result-track:d71a7ad69b69f2b1a0cafa3479a5f82b993916a09ee7053d38d4ee5f38c6dcd8` |
| 7 | `theorem` | [iteratedDeriv_log1p_zero](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/declarations/iteratedderiv-log1p-zero--ce2a252868641e8cff4c5e8d.md) | 143 | `result-track:ce2a252868641e8cff4c5e8dac9c40af6289ac0509abc6a62d209977e56277d2` |
| 8 | `theorem` | [log1pTaylorCoeffs_eq_deriv](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/declarations/log1ptaylorcoeffs-eq-deriv--80120e4f35cc83cb37ffd2da.md) | 151 | `result-track:80120e4f35cc83cb37ffd2dab9205dcdc52da123f2eb728b01c8dff633bb2d4b` |
| 9 | `theorem` | [log1pTaylorPoly_aeval_eq_sum](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/declarations/log1ptaylorpoly-aeval-eq-sum--fca6b2043b60d3f9da4388b4.md) | 180 | `result-track:fca6b2043b60d3f9da4388b426e276841bebee7c8d8a4fafa36d10db244044dc` |
| 10 | `theorem` | [log1p_taylor_remainder_bound](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/declarations/log1p-taylor-remainder-bound--e86d1ce0d4deaa8342033f09.md) | 205 | `result-track:e86d1ce0d4deaa8342033f0977b5f56d130fcf32f2c9978e62574a46c853c8d5` |
| 11 | `theorem` | [tmLog1p_correct](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/declarations/tmlog1p-correct--534357e4cea39080e08f6fab.md) | 311 | `result-track:534357e4cea39080e08f6fabd86d1a73bad18dd420fa78d6f0dcb2fea8275892` |
| 12 | `def` | [symmetricLogCombination](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/declarations/symmetriclogcombination--aabce5a4a0a30da2a27fae26.md) | 364 | `declaration-track:aabce5a4a0a30da2a27fae26805bcf6b06c7c43530b775b3d517a879789710c8` |
| 13 | `theorem` | [symmetricLogCombination_alt](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/declarations/symmetriclogcombination-alt--4e9a086f68a1584a646af98f.md) | 368 | `result-track:4e9a086f68a1584a646af98ff6d44a93ce7676b2a76c0f08c7243a3037eb1af4` |
| 14 | `theorem` | [tendsto_log_one_add_div_self](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/declarations/tendsto-log-one-add-div-self--8b2fbf2160019398f0da1992.md) | 386 | `result-track:8b2fbf2160019398f0da199283186b06b71e0ca1dd8ef69c5ca8c5553ea58369` |
| 15 | `theorem` | [tendsto_log_one_sub_div_self](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/declarations/tendsto-log-one-sub-div-self--368768cbfeec520f0e56911c.md) | 400 | `result-track:368768cbfeec520f0e56911c4f41e0b0fbb6ccde2ac7e30cfc6a4b0b19387192` |
| 16 | `theorem` | [tendsto_log_one_sub_sq_div_sq](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/declarations/tendsto-log-one-sub-sq-div-sq--d1e5af23d8bb94ed3b0e50b0.md) | 414 | `result-track:d1e5af23d8bb94ed3b0e50b04c0f3024bf76f7add6da8da5a39732c1d0852f32` |
| 17 | `theorem` | [symmetricLogCombination_tendsto_one](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/declarations/symmetriclogcombination-tendsto-one--656239dc4cdfd1a269de141e.md) | 445 | `result-track:656239dc4cdfd1a269de141eed0cf255723b5fbde503cf3517071ca8da6dbeb9` |
| 18 | `theorem` | [symmetricLogCombination_bounded](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/declarations/symmetriclogcombination-bounded--3952b36cb0e2dd3ff70232a5.md) | 498 | `result-track:3952b36cb0e2dd3ff70232a561579fedd63bf0c459b4c4ad56372561e31b2f2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
