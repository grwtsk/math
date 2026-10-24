# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ExtremalCombinatorics.WellQuasiOrder.Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c77d793a807993353d628247e7cd730489d1f1a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c77d793a807993353d628247e7cd730489d1f1a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Antichain` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrderIsoNat` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WellQuasiOrdered](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b.lean/declarations/wellquasiordered--6d8476af92efb57b537950c8.md) | 46 | `declaration-track:6d8476af92efb57b537950c830df2b6aad6efdf30714777ca58137dae7f21b18` |
| 2 | `theorem` | [wellQuasiOrdered_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b.lean/declarations/wellquasiordered-of-isempty--74efdb117e0755bfd830411c.md) | 49 | `result-track:74efdb117e0755bfd830411caea74f963f15b01dc36b8f3cf390aede040c0123` |
| 3 | `theorem` | [IsAntichain.finite_of_wellQuasiOrdered](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b.lean/declarations/isantichain-finite-of-wellquasiordered--eb9c9532a845d311284704d9.md) | 52 | `result-track:eb9c9532a845d311284704d936b0164bdd8600c522d4914db398d9b826fd386b` |
| 4 | `theorem` | [Finite.wellQuasiOrdered](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b.lean/declarations/finite-wellquasiordered--b3824c75673dbde1d7a8feaf.md) | 59 | `result-track:b3824c75673dbde1d7a8feafb4aa5251c0dcc2efecaf95419eb3436926db4b84` |
| 5 | `theorem` | [WellQuasiOrdered.exists_monotone_subseq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b.lean/declarations/wellquasiordered-exists-monotone-subseq--dc0b888ef98be36bab455443.md) | 66 | `result-track:dc0b888ef98be36bab4554436b5b09968994e18000498834e46a992288df76bc` |
| 6 | `theorem` | [wellQuasiOrdered_iff_exists_monotone_subseq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b.lean/declarations/wellquasiordered-iff-exists-monotone-subseq--70b23e6b7302d6f86b49afb8.md) | 75 | `result-track:70b23e6b7302d6f86b49afb82416da449bf0c16503be641bd8bd0ec297384e99` |
| 7 | `theorem` | [WellQuasiOrdered.prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b.lean/declarations/wellquasiordered-prod--341ab6daac559aac88d9e35a.md) | 82 | `result-track:341ab6daac559aac88d9e35aa12d7bfda3aacbd2f8bf16616683cf599dcc8283` |
| 8 | `class` | [WellQuasiOrderedLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b.lean/declarations/wellquasiorderedle--ae5097b7d6a721aa6c4bad9d.md) | 93 | `declaration-track:ae5097b7d6a721aa6c4bad9defa8d1c98bcf5bad40e077b4ce39ec323bd9af76` |
| 9 | `theorem` | [wellQuasiOrdered_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b.lean/declarations/wellquasiordered-le--912f47ec14d8783b0ee55740.md) | 96 | `result-track:912f47ec14d8783b0ee557400852945e0756b97873ea1dbc27046e77b354a955` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b.lean/declarations/instance--c5e43678e9aabfd68d3b3739.md) | 102 | `declaration-track:c5e43678e9aabfd68d3b3739dc309c60b794eca083da5f5235addddcab9f769e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b.lean/declarations/instance--10cc9ab3a8fdfedc6160086d.md) | 105 | `declaration-track:10cc9ab3a8fdfedc6160086d84728ad42ef24e09913ac9c546b257b63d37a4f6` |
| 12 | `theorem` | [WellQuasiOrdered.wellFounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b.lean/declarations/wellquasiordered-wellfounded--dd0efa52297037c1e4bc5edd.md) | 112 | `result-track:dd0efa52297037c1e4bc5edd4c4924e37b810f7e4de6afe2ced56905ef6df407` |
| 13 | `theorem` | [WellQuasiOrderedLE.finite_of_isAntichain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b.lean/declarations/wellquasiorderedle-finite-of-isantichain--768a85ee24e64e34c2e7b227.md) | 121 | `result-track:768a85ee24e64e34c2e7b227d1aea094f82dad7f7ea122916a137ba13ca3a12f` |
| 14 | `theorem` | [wellQuasiOrderedLE_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b.lean/declarations/wellquasiorderedle-iff--8eb48ba5066cb6f815a1162f.md) | 126 | `result-track:8eb48ba5066cb6f815a1162f3cd692890df7b593e19b0337f86f7bde26d7e43e` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b.lean/declarations/instance--233a0d314f8e5d49badfc19f.md) | 145 | `declaration-track:233a0d314f8e5d49badfc19f78d8691fd80f65bd47f3512100c39b54f2bc94c4` |
| 16 | `theorem` | [wellQuasiOrderedLE_iff_wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variant36ff8b64d73efb181c884bb002fdaf1c07d72ba1735e77b9de0a3623d6728d0b.lean/declarations/wellquasiorderedle-iff-wellfoundedlt--5ee83fb1c9f5737cdcd49c62.md) | 154 | `result-track:5ee83fb1c9f5737cdcd49c62d9ce8c857465f1b9678fde224b72797f9bb17ca7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
