# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LocalCount.Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "561807f25c3f2966d0a4f6d1e521dbfbcf0dd2e6",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `561807f25c3f2966d0a4f6d1e521dbfbcf0dd2e6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Prelude.InstancePriorities` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.Statement.SeamClosed` — import line 29; external provider; requires a separately pinned dependency.
- `Zeta23.Defs.Counting` — import line 30; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.StrongPNTPrefix` — import line 31; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.ZetaGrowth` — import line 32; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Halving` — import line 33; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [riemannZeta_zeros_finite_of_isCompact](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean/declarations/riemannzeta-zeros-finite-of-iscompact--dc5389913748ee70859f3b59.md) | 46 | `result-track:dc5389913748ee70859f3b590487deebdfeca09a53253341a5d5317e6a11a8f7` |
| 2 | `def` | [gfun](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean/declarations/gfun--2a99bef7a3562ed3b774757a.md) | 56 | `declaration-track:2a99bef7a3562ed3b774757a3e606f9338f9d79881ffb3ef95b3b1a21f8f82fe` |
| 3 | `lemma` | [comp_affine_analyticAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean/declarations/comp-affine-analyticat--f5064a9fccd646edf8c82757.md) | 58 | `result-track:f5064a9fccd646edf8c82757a46fba4769f3d18fa3bca59bd9ba1c6d73c1073a` |
| 4 | `lemma` | [gfun_analyticAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean/declarations/gfun-analyticat--f3273818a4d2f3ad88cf37bc.md) | 64 | `result-track:f3273818a4d2f3ad88cf37bc554bd5afa02fcbce8bf343515993b912dd85bf22` |
| 5 | `lemma` | [analyticOrderNatAt_gfun](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean/declarations/analyticordernatat-gfun--d0e453cbd0a28fdfaafae9bd.md) | 71 | `result-track:d0e453cbd0a28fdfaafae9bd55cf505ecd1e5097b0d1eb0795a4d4f4f2eb3f50` |
| 6 | `lemma` | [norm_sub_center_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean/declarations/norm-sub-center-le--8e73cf583482203ab16a110d.md) | 90 | `result-track:8e73cf583482203ab16a110d5880921794040ab87b86e8a034b1ebbb6f95ea1b` |
| 7 | `def` | [NhalfR](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean/declarations/nhalfr--5eafa6e90d54ef5a4b2a30d4.md) | 101 | `declaration-track:5eafa6e90d54ef5a4b2a30d4681bc68250ad1c1ef62d460f836cf1ebb0e30ff4` |
| 8 | `theorem` | [half_count_large](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean/declarations/half-count-large--8758e47d65f167ddf64d3b8e.md) | 104 | `result-track:8758e47d65f167ddf64d3b8e34a9b3b63992688db0949666de3872f8e16ea899` |
| 9 | `theorem` | [count_small](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean/declarations/count-small--54247f480f3d28b8bad0a1e5.md) | 263 | `result-track:54247f480f3d28b8bad0a1e5b472fe25c030996b097057b44596d45990634240` |
| 10 | `theorem` | [zeta_local_zero_count](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean/declarations/zeta-local-zero-count--7c14d927cfe3fafb7810e060.md) | 274 | `result-track:7c14d927cfe3fafb7810e060c9e0524361610d1614aafd7611d2fea0919c1eb8` |
| 11 | `theorem` | [zetaZeroConfig_local_count](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean/declarations/zetazeroconfig-local-count--68c8b0e3f7b1e3ad468443bc.md) | 302 | `result-track:68c8b0e3f7b1e3ad468443bc825a2a7c24cc5a722f542c2834d893b36255fcb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
