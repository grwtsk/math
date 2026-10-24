# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Intervals.Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62878db1ac9ce1c1f3b2d0bf50c70b7331f68b03",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62878db1ac9ce1c1f3b2d0bf50c70b7331f68b03`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Interval` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_Ico_add'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/prod-ico-add--30a511209b69b89264c8499b.md) | 42 | `result-track:30a511209b69b89264c8499b2f3748793ece9a7fff5d0b9f863823697b2a45a5` |
| 2 | `theorem` | [prod_Ico_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/prod-ico-add--a2954a87f79e24eb6110077f.md) | 50 | `result-track:a2954a87f79e24eb6110077ffd8e68f6fd2efbc1ba38419c8bcb52cc8af8f449` |
| 3 | `theorem` | [prod_Ico_succ_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/prod-ico-succ-top--a27afb1881ab0236a2cbb107.md) | 58 | `result-track:a27afb1881ab0236a2cbb107e64fb123ed73fe8580c21ceac17528824a6df60a` |
| 4 | `theorem` | [prod_eq_prod_Ico_succ_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/prod-eq-prod-ico-succ-bot--f7bbb53f3c26fa2ae294bcf0.md) | 65 | `result-track:f7bbb53f3c26fa2ae294bcf08466b47118b7b1527b8757915db9a2db3a9b0ff1` |
| 5 | `theorem` | [prod_Ico_consecutive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/prod-ico-consecutive--20e5f0078f4fe5562df8667a.md) | 73 | `result-track:20e5f0078f4fe5562df8667a15858c72d2707a7f2fcbfa80a43b61ddcc7f78dc` |
| 6 | `theorem` | [prod_Ioc_consecutive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/prod-ioc-consecutive--db08928aeac91ed7064e1f1b.md) | 80 | `result-track:db08928aeac91ed7064e1f1b3793fb3b73b0bfe710726dc0a2f69823d41f8ee3` |
| 7 | `theorem` | [prod_Ioc_succ_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/prod-ioc-succ-top--6c95e508f69ee59c7a154980.md) | 90 | `result-track:6c95e508f69ee59c7a154980af4a1eeda97548f5216daabfcc975cfc5973bbd7` |
| 8 | `theorem` | [prod_range_mul_prod_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/prod-range-mul-prod-ico--aa37fc8cead771439896827f.md) | 97 | `result-track:aa37fc8cead771439896827f7ece786a8ce7735748cba3a8073c340e9a6afb4d` |
| 9 | `theorem` | [prod_Ico_eq_mul_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/prod-ico-eq-mul-inv--31ee1e99504a95da2a2572a6.md) | 104 | `result-track:31ee1e99504a95da2a2572a6efefaf7b7d34bd54b8955a5e3c4a022906f60d87` |
| 10 | `theorem` | [prod_Ico_eq_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/prod-ico-eq-div--752aea0f956a46a31da84d54.md) | 111 | `result-track:752aea0f956a46a31da84d549f7b4e80ea83f01c84f26151c036043b1cfeb6e3` |
| 11 | `theorem` | [prod_range_div_prod_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/prod-range-div-prod-range--6766c7d1c9e810d2ad53fc0f.md) | 118 | `result-track:6766c7d1c9e810d2ad53fc0fa9b22a2ea63b9dbff2f3ca6a6b0e0f4b64b11e6a` |
| 12 | `theorem` | [sum_Ico_Ico_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/sum-ico-ico-comm--e9a1ca8f5e606b5754b40e01.md) | 130 | `result-track:e9a1ca8f5e606b5754b40e01db87b20a30359b688028617c422d9ec870d990cd` |
| 13 | `theorem` | [prod_Ico_eq_prod_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/prod-ico-eq-prod-range--487f5bc18fee74a6ab8f934d.md) | 145 | `result-track:487f5bc18fee74a6ab8f934ddaa69bd53565c59c3543db0c5ca4bb4b3f37a6e8` |
| 14 | `theorem` | [prod_Ico_reflect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/prod-ico-reflect--9ec8eafb9f1646df51ba4791.md) | 154 | `result-track:9ec8eafb9f1646df51ba4791c54533b0336dad1d93cc64e11f86a5010fad6a8e` |
| 15 | `theorem` | [sum_Ico_reflect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/sum-ico-reflect--7d321d8c6d82e0e8b30f1c6c.md) | 172 | `result-track:7d321d8c6d82e0e8b30f1c6cf96560ef400d1256e7d70e2e4f2c67c78c15ce49` |
| 16 | `theorem` | [prod_range_reflect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/prod-range-reflect--1f07b1277c21adee2872cae8.md) | 177 | `result-track:1f07b1277c21adee2872cae8add7c08a5a63222b6b44d0dd184330fe0b96d694` |
| 17 | `theorem` | [sum_range_reflect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/sum-range-reflect--0a16a0ed0fb6e03e6c70b5bf.md) | 186 | `result-track:0a16a0ed0fb6e03e6c70b5bfb35a493d6852ab654cad202c209636fef198b917` |
| 18 | `theorem` | [prod_Ico_id_eq_factorial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/prod-ico-id-eq-factorial--f9b173ff2741a7db611a9321.md) | 192 | `result-track:f9b173ff2741a7db611a932188823b24d44a42a33d04083615c1c79f7bbe0652` |
| 19 | `theorem` | [prod_range_add_one_eq_factorial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/prod-range-add-one-eq-factorial--29e591a798fa75cba9c4f565.md) | 200 | `result-track:29e591a798fa75cba9c4f565f2de330a627e6d8d126153dbd171d8efeca4a010` |
| 20 | `theorem` | [sum_range_id_mul_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/sum-range-id-mul-two--0b43a492d2e99087bcc7497c.md) | 208 | `result-track:0b43a492d2e99087bcc7497c39dc34d64694f54c50a1f5f8c12e41c1ad6f78e0` |
| 21 | `theorem` | [sum_range_id](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/sum-range-id--65d2d7769ffd97cfda835746.md) | 219 | `result-track:65d2d7769ffd97cfda83574668f29df60ca26ef6a30172db7819181e7d4b1e0e` |
| 22 | `theorem` | [prod_range_succ_div_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/prod-range-succ-div-prod--90d1528572352916b1a95180.md) | 238 | `result-track:90d1528572352916b1a95180c4f691f2547ae6cb05b883c9f1df98df6e9ef188` |
| 23 | `theorem` | [prod_range_succ_div_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/prod-range-succ-div-top--f64444e586176c75110b8b1e.md) | 244 | `result-track:f64444e586176c75110b8b1e638253245810547864ff55eb270d591ed82260f9` |
| 24 | `theorem` | [prod_Ico_div_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/prod-ico-div-bot--92b7de20b446adbceffc30a4.md) | 250 | `result-track:92b7de20b446adbceffc30a4f0cb09b409d8c6f2fd85c07794d5c8c0af1294a3` |
| 25 | `theorem` | [prod_Ico_succ_div_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/prod-ico-succ-div-top--559da8cc7a8dd03c85fb9d6f.md) | 256 | `result-track:559da8cc7a8dd03c85fb9d6f7d38dc3f7ad46ef9c103b02dc7f55e9c1bc86817` |
| 26 | `theorem` | [sum_Ico_by_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/sum-ico-by-parts--8ae1b16b146c14ecdb894538.md) | 276 | `result-track:8ae1b16b146c14ecdb8945383eeacdce22c6528baa8b2a12e2485a5d8d648d30` |
| 27 | `theorem` | [sum_range_by_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/declarations/sum-range-by-parts--9498667f33c54e0aa2b071f5.md) | 318 | `result-track:9498667f33c54e0aa2b071f5ba3a59096d9b3be3bb74214749489a17505a9b8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
