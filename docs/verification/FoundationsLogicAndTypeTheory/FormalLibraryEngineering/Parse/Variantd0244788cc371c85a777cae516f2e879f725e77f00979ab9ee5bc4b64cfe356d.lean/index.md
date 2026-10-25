# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Parse.Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35cc34a5c46fe85c18fc2fea04bd9ca1753fed55",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35cc34a5c46fe85c18fc2fea04bd9ca1753fed55`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto.Types` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto.Extract` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ToExpr` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parseBoundGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean/declarations/parseboundgoal--15c03a6d14b3d8b35f267a96.md) | 31 | `declaration-track:15c03a6d14b3d8b35f267a967b06f9b70821b8709843356be78c47c613c6b3a4` |
| 2 | `def` | [extractIntervalFromSetIcc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean/declarations/extractintervalfromseticc--d36cb04551222b233a381eec.md) | 325 | `declaration-track:d36cb04551222b233a381eecf58380dfd6a36b7d8c3a9adc4e6a556469ba8d83` |
| 3 | `def` | [extractIntervalFromIntervalRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean/declarations/extractintervalfromintervalrat--7c2a13b2c39022042bb37ae3.md) | 363 | `declaration-track:7c2a13b2c39022042bb37ae3b966671d866083d1217d388d2b5f177e1c48fa68` |
| 4 | `def` | [parseMultivariateBoundGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean/declarations/parsemultivariateboundgoal--7ed90889c9feaf49a7368981.md) | 394 | `declaration-track:7ed90889c9feaf49a7368981f15dae192a71b0372e849d796ac99a724e4e2b5f` |
| 5 | `def` | [nameEndsWithStr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean/declarations/nameendswithstr--03e35cd4d9203eafd489a86d.md) | 639 | `declaration-track:03e35cd4d9203eafd489a86d1437e2b482e172930ada677aca5d376d138bd6b6` |
| 6 | `def` | [parsePointIneq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean/declarations/parsepointineq--69a6e260c9dc4a027a90f83b.md) | 648 | `declaration-track:69a6e260c9dc4a027a90f83b8e5c9839b039e35e1330c1cd3b563f719821f6c6` |
| 7 | `def` | [collectConstants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean/declarations/collectconstants--4b6e2ea4daff1b441f573302.md) | 681 | `declaration-track:4b6e2ea4daff1b441f573302024e8a60de745aced41ff21efd6c1e580d543bc7` |
| 8 | `def` | [parseRootGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean/declarations/parserootgoal--27f0b48a8f8c022d18969cc5.md) | 717 | `declaration-track:27f0b48a8f8c022d18969cc522ca8a26f9797c4c7233f267519931a3ded22c52` |
| 9 | `def` | [isExprEval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean/declarations/isexpreval--22bb4d355e452e03c5cb4b05.md) | 827 | `declaration-track:22bb4d355e452e03c5cb4b0598b6aa5159b1da51b4c9d5a66806def6ba4c29f1` |
| 10 | `def` | [isExprEvalName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean/declarations/isexprevalname--109db9cf2613f67f31674a59.md) | 832 | `declaration-track:109db9cf2613f67f31674a59da957cbdc6027317ef2441f5e60cf403a101a345` |
| 11 | `def` | [parseSimpleBoundGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean/declarations/parsesimpleboundgoal--6cdb401418fadbda92f23bb4.md) | 837 | `declaration-track:6cdb401418fadbda92f23bb434935e00307afeb8a86ea4a5795382ec81507966` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
