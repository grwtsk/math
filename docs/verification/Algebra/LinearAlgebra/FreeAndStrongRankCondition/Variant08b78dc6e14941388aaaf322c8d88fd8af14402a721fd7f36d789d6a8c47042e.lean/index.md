# Verification target: GRWTSK.Algebra.LinearAlgebra.FreeAndStrongRankCondition.Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d2d5ffffaeef593b7b7ca140c440764ffc2015d",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d2d5ffffaeef593b7b7ca140c440764ffc2015d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Subsingleton` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Basis.ofRankEqZero](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/basis-ofrankeqzero--6528ef926a03b9e877efe441.md) | 40 | `declaration-track:6528ef926a03b9e877efe441106c5b727778e846b393b9e4410729d1925709c0` |
| 2 | `theorem` | [Basis.ofRankEqZero_apply](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/basis-ofrankeqzero-apply--f0f4a8bb9ee6559a13726446.md) | 49 | `result-track:f0f4a8bb9ee6559a1372644692e0da7c6157905c61e29729255b780daf96b31f` |
| 3 | `theorem` | [le_rank_iff_exists_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/le-rank-iff-exists-linearindependent--9ca15ce3fa5e6e5a81b412b3.md) | 52 | `result-track:9ca15ce3fa5e6e5a81b412b3463fe77ac1842237f772ef0ed616908f3fcdfb9a` |
| 4 | `theorem` | [le_rank_iff_exists_linearIndependent_finset](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/le-rank-iff-exists-linearindependent-finset--6f6629d91175ca808678b484.md) | 69 | `result-track:6f6629d91175ca808678b484bd587b97687f14d8919c3dec1ad84a24259906c1` |
| 5 | `theorem` | [rank_le_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/rank-le-one-iff--972452ae43c523f7c92fa037.md) | 81 | `result-track:972452ae43c523f7c92fa037b1aeb147d4d4b45fb81363b7351efec2c1bbd6c1` |
| 6 | `theorem` | [rank_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/rank-eq-one-iff--e557aa3fa0680dfec319575f.md) | 109 | `result-track:e557aa3fa0680dfec319575f1382ddaa9f69fdc4ed7a71841ff2b4439ef99b39` |
| 7 | `theorem` | [rank_submodule_le_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/rank-submodule-le-one-iff--cf6f08c01af83663e56337ab.md) | 128 | `result-track:cf6f08c01af83663e56337ab15067dda059e7b625889c9321b648c4dec4828b9` |
| 8 | `theorem` | [rank_submodule_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/rank-submodule-eq-one-iff--269496ea69b28923c1ff3a2a.md) | 148 | `result-track:269496ea69b28923c1ff3a2aa51febed818a12e78a595e2190d28d8a9e429482` |
| 9 | `theorem` | [rank_submodule_le_one_iff'](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/rank-submodule-le-one-iff--63fbe08a8c4d562777ebf951.md) | 163 | `result-track:63fbe08a8c4d562777ebf951633b1ac82c174f1a4ade03e69cae2af5fc2e04d9` |
| 10 | `theorem` | [Submodule.rank_le_one_iff_isPrincipal](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/submodule-rank-le-one-iff-isprincipal--b7bc1eb4d105a0ce9330ac4d.md) | 175 | `result-track:b7bc1eb4d105a0ce9330ac4d327ae845e410bb9c99160c2406add99d3af9faaa` |
| 11 | `theorem` | [Module.rank_le_one_iff_top_isPrincipal](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/module-rank-le-one-iff-top-isprincipal--e4595134502b8b6085c56345.md) | 187 | `result-track:e4595134502b8b6085c56345e6316fb2818dce5f97ebb9d76ac2773bf0a0cfd8` |
| 12 | `theorem` | [finrank_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/finrank-eq-one-iff--71b729c3c3d1d9747a30672b.md) | 194 | `result-track:71b729c3c3d1d9747a30672bd57ac46368feac345d16b245b4c59c0bfbe36d52` |
| 13 | `theorem` | [finrank_eq_one_iff'](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/finrank-eq-one-iff--c77b239e212ced6ae97dc0ce.md) | 204 | `result-track:c77b239e212ced6ae97dc0cee44208dbc19314b1005cad90036313383a90b6c7` |
| 14 | `theorem` | [finrank_le_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/finrank-le-one-iff--a29eeddc0dae7da8f2ea89b0.md) | 212 | `result-track:a29eeddc0dae7da8f2ea89b0bdc8adc3af8f1dca53759b647b52253bce40c8db` |
| 15 | `theorem` | [Submodule.finrank_le_one_iff_isPrincipal](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/submodule-finrank-le-one-iff-isprincipal--18f4dd0986960de22b9086d7.md) | 216 | `result-track:18f4dd0986960de22b9086d7e7ec58e9f7fdffb3e9a70311977f02edc9df47b6` |
| 16 | `theorem` | [Module.finrank_le_one_iff_top_isPrincipal](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/module-finrank-le-one-iff-top-isprincipal--e16babdf37c41f3507bc7cdb.md) | 221 | `result-track:e16babdf37c41f3507bc7cdb6af4c4bb4a43ade2fccd40fd852141eefabe0c25` |
| 17 | `theorem` | [lift_cardinalMk_eq_lift_cardinalMk_field_pow_lift_rank](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/lift-cardinalmk-eq-lift-cardinalmk-field-pow-lift-rank--abadc773a4c8e74efb230db4.md) | 226 | `result-track:abadc773a4c8e74efb230db433daf0ce6164e46afe99095fe533060dd36c710c` |
| 18 | `theorem` | [cardinalMk_eq_cardinalMk_field_pow_rank](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/cardinalmk-eq-cardinalmk-field-pow-rank--c8337d195b942f739497cf36.md) | 242 | `result-track:c8337d195b942f739497cf36549bdc49a10507d374e659dee041c5ffd8003f8d` |
| 19 | `theorem` | [cardinal_lt_aleph0_of_finiteDimensional](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/cardinal-lt-aleph0-of-finitedimensional--7b1e531a92bd3a362b82f93d.md) | 251 | `result-track:7b1e531a92bd3a362b82f93df5b9fd75f22af8d04a9762182e18f7b4f93f2ff6` |
| 20 | `theorem` | [eq_bot_of_rank_le_one](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/eq-bot-of-rank-le-one--087c3ae77f70f2b088ba7ac4.md) | 264 | `result-track:087c3ae77f70f2b088ba7ac400b79c68e077acd18d5e0931277f981c4cdd1301` |
| 21 | `theorem` | [eq_bot_of_finrank_one](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/eq-bot-of-finrank-one--0537a402ec0e0bbd4c156f01.md) | 278 | `result-track:0537a402ec0e0bbd4c156f0192e653e3175c9a267a29b5c731f7418aed41fd65` |
| 22 | `theorem` | [rank_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/rank-eq-one-iff--a91b154071400e81c7b0dfba.md) | 284 | `result-track:a91b154071400e81c7b0dfba8d57cc24fe71cd734905c7d67bc63806def5dbf0` |
| 23 | `theorem` | [finrank_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/finrank-eq-one-iff--796a194a82d00ea8547d2c2f.md) | 299 | `result-track:796a194a82d00ea8547d2c2f71a8aa69f394ae237414b0d6800ba596bbe3a1d1` |
| 24 | `theorem` | [bot_eq_top_iff_rank_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/bot-eq-top-iff-rank-eq-one--3c42524a1e429017299f4b47.md) | 303 | `result-track:3c42524a1e429017299f4b476ceee5374e7404416a5b97115a53276f80fbd5df` |
| 25 | `theorem` | [bot_eq_top_iff_finrank_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/declarations/bot-eq-top-iff-finrank-eq-one--fb77c26b56cb6f0291306df1.md) | 309 | `result-track:fb77c26b56cb6f0291306df1629b005223caa12bdc2fa8f40ed92cf9ccfab77c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
