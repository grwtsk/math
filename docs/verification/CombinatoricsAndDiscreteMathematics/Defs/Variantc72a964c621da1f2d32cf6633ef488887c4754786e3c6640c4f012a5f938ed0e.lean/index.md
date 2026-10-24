# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Defs.Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8ea93fb42797b47223781d8b24b608d44831743",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8ea93fb42797b47223781d8b24b608d44831743`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Defs/Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e.lean/declarations/prod--1afc2a5d3bc0451860abc321.md) | 43 | `declaration-track:1afc2a5d3bc0451860abc321981ebba80b44d0956dead2d2f022e63458b8bcc2` |
| 2 | `theorem` | [prod_eq_foldr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e.lean/declarations/prod-eq-foldr--61d137ce3a29dd441754aa48.md) | 47 | `result-track:61d137ce3a29dd441754aa48e3a6b760b7b3c37994545945ad91fb585ca28f32` |
| 3 | `theorem` | [prod_eq_foldl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e.lean/declarations/prod-eq-foldl--61a8b58953f31a71486dc695.md) | 52 | `result-track:61a8b58953f31a71486dc69515805be6c3471cab12b4bac8c8567dc61d3f72c6` |
| 4 | `theorem` | [prod_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e.lean/declarations/prod-coe--6e3edf44e5da1c8536662f4b.md) | 57 | `result-track:6e3edf44e5da1c8536662f4b28d791ec59f96b27f075e8791c70bc3465766cc9` |
| 5 | `theorem` | [prod_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e.lean/declarations/prod-tolist--2aba9310386dfe9cb646f4e0.md) | 60 | `result-track:2aba9310386dfe9cb646f4e0b13bc6cb4112ecfb182c7cb6b797ec87e27595c7` |
| 6 | `theorem` | [prod_map_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e.lean/declarations/prod-map-tolist--c9436413cac3c8942bdc9fd2.md) | 65 | `result-track:c9436413cac3c8942bdc9fd2fcecee737ce27e686c94d60c01bc6fabb4178ba9` |
| 7 | `theorem` | [prod_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e.lean/declarations/prod-zero--f47b4afc451a0084350fcfa0.md) | 69 | `result-track:f47b4afc451a0084350fcfa01e6aa9cb7d4db370d42d94cf64706ab950db7d2e` |
| 8 | `theorem` | [prod_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e.lean/declarations/prod-cons--ba96546bd9d06f39cdbc9802.md) | 73 | `result-track:ba96546bd9d06f39cdbc9802498849432be0767978d8c2e9d6923602282f8a59` |
| 9 | `theorem` | [prod_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e.lean/declarations/prod-singleton--009ff81e3288e132419505a4.md) | 77 | `result-track:009ff81e3288e132419505a4010661570386ff1c01fef646d5d011419c733e99` |
| 10 | `theorem` | [prod_pair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e.lean/declarations/prod-pair--0f3dad108f739b8a39b51e50.md) | 81 | `result-track:0f3dad108f739b8a39b51e50043b5a8238b0c15e1e9f716f884dc4046d710e6a` |
| 11 | `theorem` | [prod_replicate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e.lean/declarations/prod-replicate--a3850709e09a2466c851316f.md) | 85 | `result-track:a3850709e09a2466c851316f159f58d61254ca553add7c245a2b600b4352c524` |
| 12 | `theorem` | [pow_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e.lean/declarations/pow-count--be1cc2fb6a14642433df718b.md) | 89 | `result-track:be1cc2fb6a14642433df718b78fdef1041d38130c7221cbf280c70bf2aa63141` |
| 13 | `theorem` | [prod_hom_rel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e.lean/declarations/prod-hom-rel--5e97b475c5ac65502433cc3f.md) | 93 | `result-track:5e97b475c5ac65502433cc3fba089e7307bade71feb4dd09df05f2ddae1aab92` |
| 14 | `theorem` | [prod_map_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e.lean/declarations/prod-map-one--94a11452799d6944cc6ab244.md) | 100 | `result-track:94a11452799d6944cc6ab244751a96b7afb38d72ae13507c52f3eacba3dbf76b` |
| 15 | `theorem` | [prod_induction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e.lean/declarations/prod-induction--ef70f7c3b0578dfb52f49c15.md) | 104 | `result-track:ef70f7c3b0578dfb52f49c15234b647e25a3f3abbd1ae73adf3015e0991dcdd9` |
| 16 | `theorem` | [prod_induction_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantc72a964c621da1f2d32cf6633ef488887c4754786e3c6640c4f012a5f938ed0e.lean/declarations/prod-induction-nonempty--36e2493001526d302ef91d0f.md) | 110 | `result-track:36e2493001526d302ef91d0f8ea766c5a0a36150607bdf90e3b16b30d9fda0a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
