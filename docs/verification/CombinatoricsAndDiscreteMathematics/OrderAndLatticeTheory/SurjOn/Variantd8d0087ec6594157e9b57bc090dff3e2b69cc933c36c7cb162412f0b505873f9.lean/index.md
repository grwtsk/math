# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SurjOn.Variantd8d0087ec6594157e9b57bc090dff3e2b69cc933c36c7cb162412f0b505873f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "528ec238fef338d43e35bc49ccd2e7f81d1eee4d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SurjOn/Variantd8d0087ec6594157e9b57bc090dff3e2b69cc933c36c7cb162412f0b505873f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SurjOn/Variantd8d0087ec6594157e9b57bc090dff3e2b69cc933c36c7cb162412f0b505873f9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SurjOn/Variantd8d0087ec6594157e9b57bc090dff3e2b69cc933c36c7cb162412f0b505873f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `528ec238fef338d43e35bc49ccd2e7f81d1eee4d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SurjOn/Variantd8d0087ec6594157e9b57bc090dff3e2b69cc933c36c7cb162412f0b505873f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SurjOn/Variantd8d0087ec6594157e9b57bc090dff3e2b69cc933c36c7cb162412f0b505873f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Function` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.LinearOrder` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [surjOn_Ioo_of_monotone_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SurjOn/Variantd8d0087ec6594157e9b57bc090dff3e2b69cc933c36c7cb162412f0b505873f9.lean/declarations/surjon-ioo-of-monotone-surjective--18271bb88c5b6960690f5dc5.md) | 24 | `result-track:18271bb88c5b6960690f5dc5fc3a42ae0ba16325668aaa1f74053af4b49e0cd6` |
| 2 | `theorem` | [surjOn_Ico_of_monotone_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SurjOn/Variantd8d0087ec6594157e9b57bc090dff3e2b69cc933c36c7cb162412f0b505873f9.lean/declarations/surjon-ico-of-monotone-surjective--6d0f0b75b5782f49f69ccf4f.md) | 32 | `result-track:6d0f0b75b5782f49f69ccf4ff9a709d9e579c6624c9be908eeed1d768638f1ae` |
| 3 | `theorem` | [surjOn_Ioc_of_monotone_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SurjOn/Variantd8d0087ec6594157e9b57bc090dff3e2b69cc933c36c7cb162412f0b505873f9.lean/declarations/surjon-ioc-of-monotone-surjective--458580f605d587f9cd5c766d.md) | 43 | `result-track:458580f605d587f9cd5c766d2a8b949788eb0c32bd16276e2ae1e3c3004e0b1f` |
| 4 | `theorem` | [surjOn_Icc_of_monotone_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SurjOn/Variantd8d0087ec6594157e9b57bc090dff3e2b69cc933c36c7cb162412f0b505873f9.lean/declarations/surjon-icc-of-monotone-surjective--2be063750c0c2f2863962022.md) | 48 | `result-track:2be063750c0c2f2863962022a4f5aea1197272f2df148ce0b2089c22459dc5e3` |
| 5 | `theorem` | [surjOn_Ioi_of_monotone_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SurjOn/Variantd8d0087ec6594157e9b57bc090dff3e2b69cc933c36c7cb162412f0b505873f9.lean/declarations/surjon-ioi-of-monotone-surjective--364a2927e5093a4f8fb9a4ff.md) | 57 | `result-track:364a2927e5093a4f8fb9a4ff98aed704d5294394f0be59274a5e539a110949d7` |
| 6 | `theorem` | [surjOn_Iio_of_monotone_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SurjOn/Variantd8d0087ec6594157e9b57bc090dff3e2b69cc933c36c7cb162412f0b505873f9.lean/declarations/surjon-iio-of-monotone-surjective--eab2af39ceb1974f6ff228ce.md) | 63 | `result-track:eab2af39ceb1974f6ff228ce38070b5ac957b6c2618aeb35272ba420859c67df` |
| 7 | `theorem` | [surjOn_Ici_of_monotone_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SurjOn/Variantd8d0087ec6594157e9b57bc090dff3e2b69cc933c36c7cb162412f0b505873f9.lean/declarations/surjon-ici-of-monotone-surjective--f9d3a8e95455f164a1bc66a2.md) | 67 | `result-track:f9d3a8e95455f164a1bc66a273d2b426c4c326e2347ca24fbb88989b5f1ef104` |
| 8 | `theorem` | [surjOn_Iic_of_monotone_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SurjOn/Variantd8d0087ec6594157e9b57bc090dff3e2b69cc933c36c7cb162412f0b505873f9.lean/declarations/surjon-iic-of-monotone-surjective--16064aa6334d93b259293538.md) | 74 | `result-track:16064aa6334d93b259293538c60dd0eaadd64e052aabdb344d46ef53840c8708` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
