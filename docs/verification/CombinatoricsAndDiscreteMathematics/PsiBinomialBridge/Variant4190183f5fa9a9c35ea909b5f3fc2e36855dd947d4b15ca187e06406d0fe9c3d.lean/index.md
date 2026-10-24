# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PsiBinomialBridge.Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80e914bb1b60c65174593635448ca46c797f413f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80e914bb1b60c65174593635448ca46c797f413f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.BinomialChebyshevBounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Dvd` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Factorization` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primePowerPairsInOpenClosedInterval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean/declarations/primepowerpairsinopenclosedinterval--693d4b59295b35a74a5b76a1.md) | 26 | `declaration-track:693d4b59295b35a74a5b76a16a0cc329a834b5304b28122d2e8fde810feff06a` |
| 2 | `def` | [primePowerPairsDyadicStrip](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean/declarations/primepowerpairsdyadicstrip--c217b095d4e53c8f4391ed03.md) | 31 | `declaration-track:c217b095d4e53c8f4391ed0327adbf13a2a9594cebc3bb1f3146ee8b860a42e6` |
| 3 | `def` | [chebyshevPsiStrip](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean/declarations/chebyshevpsistrip--82a31df67a415d7813af3d9c.md) | 35 | `declaration-track:82a31df67a415d7813af3d9c5e40055805a3a0987f203c287aece4ac955538f0` |
| 4 | `def` | [chebyshevPsiDyadicStrip](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean/declarations/chebyshevpsidyadicstrip--4d48a7b41b2e3a6a53c7c9e7.md) | 39 | `declaration-track:4d48a7b41b2e3a6a53c7c9e766f5f23970318e791c32510d868e9b25314da2b5` |
| 5 | `def` | [primesDyadicStrip](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean/declarations/primesdyadicstrip--4ccc48ee06c684df842f4060.md) | 43 | `declaration-track:4ccc48ee06c684df842f40602d4c26fc82ff44e6769748129fd31929bd3d5c50` |
| 6 | `theorem` | [mem_primesDyadicStrip_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean/declarations/mem-primesdyadicstrip-iff--0687e135ca29629dc83d291e.md) | 47 | `result-track:0687e135ca29629dc83d291eb265b3588656dd6ba1777ce37dc8e4518ae45fe0` |
| 7 | `theorem` | [prime_dyadic_strip_dvd_centralBinomial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean/declarations/prime-dyadic-strip-dvd-centralbinomial--571590deb8a26a46df2818c6.md) | 59 | `result-track:571590deb8a26a46df2818c6d94968269d2abaf981f1e579e36034c346021991` |
| 8 | `theorem` | [one_le_factorization_centralBinomial_of_mem_strip](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean/declarations/one-le-factorization-centralbinomial-of-mem-strip--60b7f3b9239f92111fffb187.md) | 69 | `result-track:60b7f3b9239f92111fffb1874bbd099d74e3ffdfdba352eb06a870ebb2ea37d7` |
| 9 | `theorem` | [log_centralBinomial_eq_sum_factorization](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean/declarations/log-centralbinomial-eq-sum-factorization--7d595a7841cc0aa521da1ce0.md) | 77 | `result-track:7d595a7841cc0aa521da1ce0e36abc46b14f0684afde0ef272cdf94492a442c1` |
| 10 | `theorem` | [chebyshevTheta_two_mul_eq_theta_add_strip](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean/declarations/chebyshevtheta-two-mul-eq-theta-add-strip--3790e8e0880a7e5829b8bcb8.md) | 107 | `result-track:3790e8e0880a7e5829b8bcb8df17e211944d79be1932589b9158141ead5622ba` |
| 11 | `theorem` | [primesDyadicStrip_log_sum_le_log_centralBinomial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean/declarations/primesdyadicstrip-log-sum-le-log-centralbinomial--52c08bd40c35a82d5fa8b6c0.md) | 130 | `result-track:52c08bd40c35a82d5fa8b6c0637f81daafd5f44325c6122828e1bdd16ca2d3d1` |
| 12 | `theorem` | [chebyshevTheta_two_mul_sub_theta_le_log_centralBinomial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean/declarations/chebyshevtheta-two-mul-sub-theta-le-log-centralbinomial--820f4c105087739da29bdde6.md) | 165 | `result-track:820f4c105087739da29bdde615d27c69964a96d550fc618715085ccab7b21f3a` |
| 13 | `theorem` | [chebyshevTheta_two_mul_sub_theta_le_n_log_four](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean/declarations/chebyshevtheta-two-mul-sub-theta-le-n-log-four--707e409e3a0b8b295453ed64.md) | 173 | `result-track:707e409e3a0b8b295453ed645e8ac62de79dd2174994038b885b77538b1e60db` |
| 14 | `def` | [ChebyshevPsiDyadicBinomialBridgeTarget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean/declarations/chebyshevpsidyadicbinomialbridgetarget--a770bb6e6f98c4264f9af65e.md) | 182 | `declaration-track:a770bb6e6f98c4264f9af65efe618b12ddc6ce692a427aab08bef54e2e600f9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
