# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate.Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "604ee4e1fd6651b2b7ad0065ff0d4aed24f828b2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `604ee4e1fd6651b2b7ad0065ff0d4aed24f828b2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Fold` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Order` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Supermodular](../../../../mathematics/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean/declarations/supermodular--e07423411f96029fc6c54bf6.md) | 35 | `declaration-track:e07423411f96029fc6c54bf6869f80826a629897034d21767964aa77a85e4767` |
| 2 | `def` | [IsMaximizer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean/declarations/ismaximizer--f5f1071e733738429bef5c47.md) | 39 | `declaration-track:f5f1071e733738429bef5c474a479adeb99d774e8c7ca142d926bbacf4a926d0` |
| 3 | `theorem` | [maximizers_inf_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean/declarations/maximizers-inf-sup--c2ec712628b8afd07c379ecd.md) | 43 | `result-track:c2ec712628b8afd07c379ecdf98ceda6ea2cd68aed8c48912b587d9bbc29b582` |
| 4 | `theorem` | [exists_unique_greatest_maximizer_of_attained](../../../../mathematics/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean/declarations/exists-unique-greatest-maximizer-of-attained--ef66ca471b7c359ae4739997.md) | 60 | `result-track:ef66ca471b7c359ae473999734078bb9e21905086676c214dfd0bc2ea57a010e` |
| 5 | `theorem` | [exists_unique_greatest_maximizer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean/declarations/exists-unique-greatest-maximizer--7ce1a9b57adfe9f6c08882e7.md) | 82 | `result-track:7ce1a9b57adfe9f6c08882e788eb870473c5a5b6e7dcf919de3425e812c301fc` |
| 6 | `theorem` | [greatest_maximizer_fixed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean/declarations/greatest-maximizer-fixed--5b1293d2b928fc5c7a01ee11.md) | 93 | `result-track:5b1293d2b928fc5c7a01ee11707f8c751a551559aa0885e940ffa52175bfbb09` |
| 7 | `theorem` | [exists_greatest_maximizer_fixed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean/declarations/exists-greatest-maximizer-fixed--ad4c28754983721f8322aca6.md) | 109 | `result-track:ad4c28754983721f8322aca66976e5487bcd55cf11d6e24cb1171e86d72ced90` |
| 8 | `theorem` | [finset_exists_greatest_maximizer_fixed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean/declarations/finset-exists-greatest-maximizer-fixed--03d09dd36bf1858f7203ddaf.md) | 118 | `result-track:03d09dd36bf1858f7203ddaf8eed0a21fc661094797ed01e2d59655ee97b0229` |
| 9 | `theorem` | [canonical_selection_does_not_bound_defect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate/Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a.lean/declarations/canonical-selection-does-not-bound-defect--d7455632f5f57fc6542b935f.md) | 129 | `result-track:d7455632f5f57fc6542b935f286ed2bf4058d742ec65bac4ca34a7955367268b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
