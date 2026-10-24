# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Dissociation.Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc8bfce0e0e3433003ebc171cec847cc559cbb2b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc8bfce0e0e3433003ebc171cec847cc559cbb2b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Piecewise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Indicator` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Equiv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Preorder.Finite` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MulDissociated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean/declarations/muldissociated--f4f3b4b65beb417aa1acf87c.md) | 49 | `declaration-track:f4f3b4b65beb417aa1acf87c6de747fd76a6d1218a8eb57c11741465ec2f1f8c` |
| 2 | `lemma` | [mulDissociated_iff_sum_eq_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean/declarations/muldissociated-iff-sum-eq-subsingleton--10dcb830c7f0b961b18c4d9e.md) | 51 | `result-track:10dcb830c7f0b961b18c4d9e2798e847a48d43634a0fb931dbd999f443d9a4bd` |
| 3 | `lemma` | [MulDissociated.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean/declarations/muldissociated-subset--378971f3e7f57672b34fba83.md) | 56 | `result-track:378971f3e7f57672b34fba834925b32fc0727d154a660c5a15e61de238c38390` |
| 4 | `lemma` | [mulDissociated_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean/declarations/muldissociated-empty--516a9b01b5433d48162c3356.md) | 59 | `result-track:516a9b01b5433d48162c33560095bd4d89326a24b2f0bbda8a018749bebfaaa8` |
| 5 | `lemma` | [mulDissociated_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean/declarations/muldissociated-singleton--dca983b0f500e5af3d9a0ac6.md) | 63 | `result-track:dca983b0f500e5af3d9a0ac64b192ed579a3925a2aa82355aef718b9b2b99071` |
| 6 | `lemma` | [not_mulDissociated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean/declarations/not-muldissociated--57237b65b48004066ecbb275.md) | 68 | `result-track:57237b65b48004066ecbb2757244875fea10626efc1aad9bdb6f4305805e26c1` |
| 7 | `lemma` | [not_mulDissociated_iff_exists_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean/declarations/not-muldissociated-iff-exists-disjoint--ccc4eec43ace0f6e539ef87c.md) | 74 | `result-track:ccc4eec43ace0f6e539ef87c4c90a2f57b05b343b5bb9793e2fb5f525fe7c785` |
| 8 | `lemma` | [MulEquiv.mulDissociated_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean/declarations/mulequiv-muldissociated-preimage--0802913ea75c7175c5c4577a.md) | 84 | `result-track:0802913ea75c7175c5c4577afebe859a639c4dfe840c132fd0e5bcc45370f752` |
| 9 | `lemma` | [mulDissociated_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean/declarations/muldissociated-inv--07c035ce9ab2bac55f92263a.md) | 89 | `result-track:07c035ce9ab2bac55f92263a757f7537a60aacaf20b14736b73535d5ef8f4652` |
| 10 | `def` | [mulSpan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean/declarations/mulspan--f66a3664878e612e59753a38.md) | 109 | `declaration-track:f66a3664878e612e59753a38bb8c51492aae7945c4e46f122d18a4bce43e20d0` |
| 11 | `lemma` | [mem_mulSpan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean/declarations/mem-mulspan--4f92507d919684c6914f11cb.md) | 113 | `result-track:4f92507d919684c6914f11cb5cdaaf718578c1a256b300e5937de3ee56671ce7` |
| 12 | `lemma` | [subset_mulSpan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean/declarations/subset-mulspan--9eabdc18a8d5d1e8161bd4b5.md) | 118 | `result-track:9eabdc18a8d5d1e8161bd4b5f40206fb4dbca0649c6b43f78b38d469a9104af8` |
| 13 | `lemma` | [prod_div_prod_mem_mulSpan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean/declarations/prod-div-prod-mem-mulspan--90e5c3dce98680bb0e09e921.md) | 123 | `result-track:90e5c3dce98680bb0e09e9214bb3c8a726f7cbc43643256ab3bc341a28b47b5e` |
| 14 | `lemma` | [exists_subset_mulSpan_card_le_of_forall_mulDissociated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean/declarations/exists-subset-mulspan-card-le-of-forall-muldissociated--d338e4b3f2b44aee463bdb25.md) | 139 | `result-track:d338e4b3f2b44aee463bdb2540897f752fa4f1113519552c4ed34a0a6dd4f2f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
