# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sum.Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb60d2d5ed5e2d73c42d3cdc5481c6f1f007982f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb60d2d5ed5e2d73c42d3cdc5481c6f1f007982f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Set` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/declarations/instance--1d655d129d5cfa290d8fbd24.md) | 23 | `declaration-track:1d655d129d5cfa290d8fbd24275ac30146e4e3192c8aec527309381541a5a3e3` |
| 2 | `lemma` | [toLeft_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/declarations/toleft-eq-univ--6f6ff4f6ad3167c59d62f7a9.md) | 33 | `result-track:6f6ff4f6ad3167c59d62f7a9651184faba1b9f824146bf2770066c84fac40b98` |
| 3 | `lemma` | [toRight_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/declarations/toright-eq-empty--a327234f36a81666ea0a8b09.md) | 36 | `result-track:a327234f36a81666ea0a8b096616c582bedf2f95d25dc3e42e9f11a20ce9310d` |
| 4 | `lemma` | [toRight_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/declarations/toright-eq-univ--e1899c4ea2ba0fcf5621d9ef.md) | 43 | `result-track:e1899c4ea2ba0fcf5621d9ef997f1317cf5df65b775607d13d84bc742a7a1fe6` |
| 5 | `lemma` | [toLeft_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/declarations/toleft-eq-empty--a9c6f0fd76beef3b59ee8bd3.md) | 46 | `result-track:a9c6f0fd76beef3b59ee8bd32ce070f6bcf1f4471cb9ddb50020e85dcf2039dc` |
| 6 | `lemma` | [univ_disjSum_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/declarations/univ-disjsum-univ--e2843602ebbc0fe2daae3c97.md) | 52 | `result-track:e2843602ebbc0fe2daae3c97ed8e303858eb48aa6fdf74976e1ef542461329cb` |
| 7 | `lemma` | [toLeft_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/declarations/toleft-univ--843c88ad9ccb21c0e3b9dafa.md) | 53 | `result-track:843c88ad9ccb21c0e3b9dafafc2c6c2f077f5fbad1ee30bef93d456d5d102b9f` |
| 8 | `lemma` | [toRight_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/declarations/toright-univ--96a96a332cbc751a3e71feea.md) | 54 | `result-track:96a96a332cbc751a3e71feea0c1275653e8d938a977d6fca1182d627345bbde7` |
| 9 | `theorem` | [Fintype.card_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/declarations/fintype-card-sum--e9477620890797f903e1606d.md) | 59 | `result-track:e9477620890797f903e1606d6eae4d23097777c2c23ccdec144688b65680a166` |
| 10 | `def` | [fintypeOfFintypeNe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/declarations/fintypeoffintypene--460620b0bb9fa584fcfd88f5.md) | 64 | `declaration-track:460620b0bb9fa584fcfd88f5543f4e5029387d2ebb23f2a94615270e94a9698a` |
| 11 | `theorem` | [image_subtype_ne_univ_eq_image_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/declarations/image-subtype-ne-univ-eq-image-erase--8b08b71a4610d7ef3d777548.md) | 68 | `result-track:8b08b71a4610d7ef3d7775481c79375ff813164238be1f627657f0c61a6e0962` |
| 12 | `theorem` | [image_subtype_univ_ssubset_image_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/declarations/image-subtype-univ-ssubset-image-univ--d6a143f98871ff032a094823.md) | 80 | `result-track:d6a143f98871ff032a094823355e439d344ea72c6dbd0149e5d85ad4e5534e37` |
| 13 | `theorem` | [Finset.exists_equiv_extend_of_card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/declarations/finset-exists-equiv-extend-of-card-eq--6d9378be2ab592022f293ce9.md) | 98 | `result-track:6d9378be2ab592022f293ce9c0bc4bddac78d64a6b4b97bee90f63bfa6cb827d` |
| 14 | `theorem` | [Set.MapsTo.exists_equiv_extend_of_card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/declarations/set-mapsto-exists-equiv-extend-of-card-eq--3f0473c344e3a161c7423e6f.md) | 123 | `result-track:3f0473c344e3a161c7423e6f1dd7927f30ddddfdffd0a8c4266a20d70d3864d0` |
| 15 | `theorem` | [Fintype.card_subtype_or](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/declarations/fintype-card-subtype-or--3bb9314d057cbdd26b816ef8.md) | 135 | `result-track:3bb9314d057cbdd26b816ef8da5b8c77513085e069f4f801ed8b9a8a33c68566` |
| 16 | `theorem` | [Fintype.card_subtype_or_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/declarations/fintype-card-subtype-or-disjoint--583aaf08aaaa403058578314.md) | 142 | `result-track:583aaf08aaaa4030585783146f0a0ee0af6cfcc59f9755a07c9d75a7dd4269e7` |
| 17 | `theorem` | [infinite_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/declarations/infinite-sum--165af15ecb3136ced0ea086a.md) | 152 | `result-track:165af15ecb3136ced0ea086a19545969ca4cdd4eb4527470b0b586f48d557492` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
