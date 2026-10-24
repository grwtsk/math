# Verification target: GRWTSK.Topology.GeneralTopology.Lemmas.Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "615cb20571243b984ac63e76d8455bbf02842049",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `615cb20571243b984ac63e76d8455bbf02842049`.

Source path: `GRWTSK/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Canonical.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Order` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Real.isTopologicalBasis_Ioo_rat](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/declarations/real-istopologicalbasis-ioo-rat--0d49921ef22990979fb249fb.md) | 33 | `result-track:0d49921ef22990979fb249fb186cf0c737f5f12aee2decd7d970bacc8b94907f` |
| 2 | `theorem` | [Real.mem_closure_iff](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/declarations/real-mem-closure-iff--a461edc26f37acafedea9d59.md) | 51 | `result-track:a461edc26f37acafedea9d59f6f8250bbc2f383c00bc865dcce9d4047998fc76` |
| 3 | `theorem` | [Real.uniformContinuous_inv](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/declarations/real-uniformcontinuous-inv--63dd149652b516de33dd19d8.md) | 55 | `result-track:63dd149652b516de33dd19d8c3faad2f5b44e978f56c1e33d88e651a2c8527d1` |
| 4 | `theorem` | [Real.uniformContinuous_abs](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/declarations/real-uniformcontinuous-abs--8a142601af10703e5a70b6f8.md) | 61 | `result-track:8a142601af10703e5a70b6f8012bd06b6b92444c11d1a6cc0200d146e98ab3a0` |
| 5 | `theorem` | [Real.continuous_inv](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/declarations/real-continuous-inv--8358a9e887e20898def47868.md) | 65 | `result-track:8358a9e887e20898def478683af092ef65e37c87e6490357bf1ec8d4c427eaa4` |
| 6 | `theorem` | [Real.uniformContinuous_mul](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/declarations/real-uniformcontinuous-mul--4e31b4c7cc13113fb9ecd744.md) | 68 | `result-track:4e31b4c7cc13113fb9ecd744c2a2e53839d72792246a559f22a649044d3c0537` |
| 7 | `theorem` | [Real.totallyBounded_ball](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/declarations/real-totallybounded-ball--b9d34ce1e339545f1dfccfe7.md) | 77 | `result-track:b9d34ce1e339545f1dfccfe7c70d7dbec680ccceb6fc6a0a8a161f6b01476471` |
| 8 | `theorem` | [Real.subfield_eq_of_closed](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/declarations/real-subfield-eq-of-closed--bdc798e2f23ca6ece7a20477.md) | 80 | `result-track:bdc798e2f23ca6ece7a2047785487184efb506d22fccc242f773c26f5d0066a6` |
| 9 | `theorem` | [Real.exists_seq_rat_strictMono_tendsto](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/declarations/real-exists-seq-rat-strictmono-tendsto--563b0dff5055aa9624342333.md) | 86 | `result-track:563b0dff5055aa96243423330f9054557b764b868d73771aadd6285c1700cb35` |
| 10 | `theorem` | [Real.exists_seq_rat_strictAnti_tendsto](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/declarations/real-exists-seq-rat-strictanti-tendsto--1186921812cb4074c3a15ac8.md) | 90 | `result-track:1186921812cb4074c3a15ac85f57ba5c483c5f3a7ee3a6a62a2c9c6d46644a06` |
| 11 | `theorem` | [closure_ordConnected_inter_rat](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/declarations/closure-ordconnected-inter-rat--c7f64e75d0e5d1a606e05a5e.md) | 96 | `result-track:c7f64e75d0e5d1a606e05a5ed4b898fba7ae52994b02af00811eb312be878a81` |
| 12 | `theorem` | [closure_of_rat_image_lt](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/declarations/closure-of-rat-image-lt--291022950bdb0eb4d38c0fdc.md) | 111 | `result-track:291022950bdb0eb4d38c0fdcae1761ff68de3f484d3fb1ebbea197669f27fd59` |
| 13 | `theorem` | [Periodic.compact_of_continuous](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/declarations/periodic-compact-of-continuous--8bea15d631af4d24dd78aaa2.md) | 137 | `result-track:8bea15d631af4d24dd78aaa2b0e1f3cba95deeeada8be8a086c3436c144aaa1f` |
| 14 | `theorem` | [Periodic.isBounded_of_continuous](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/declarations/periodic-isbounded-of-continuous--aef5788a4a8d4267a4e20d92.md) | 143 | `result-track:aef5788a4a8d4267a4e20d925c0dcf7e20e03c706813d0e8d43a171828f29940` |
| 15 | `theorem` | [Real.tendsto_atTop_csSup_of_monotoneOn_bddAbove_nat_Ici](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/declarations/real-tendsto-attop-cssup-of-monotoneon-bddabove-nat-ici--1c711cad5c72e80d4879a197.md) | 157 | `result-track:1c711cad5c72e80d4879a197b4d5f2b316016f1d1265ede3877820f5dd50f1c5` |
| 16 | `theorem` | [Real.tendsto_atTop_csInf_of_antitoneOn_bddBelow_nat_Ici](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/declarations/real-tendsto-attop-csinf-of-antitoneon-bddbelow-nat-ici--9c4983dbc5049f243c2ce31b.md) | 167 | `result-track:9c4983dbc5049f243c2ce31b5aafc034a89e1774f2768e43e152d243658b82c3` |
| 17 | `theorem` | [Real.isLUB_of_tendsto_monotone_bddAbove](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/declarations/real-islub-of-tendsto-monotone-bddabove--6b5667f9c13f96be710b3268.md) | 179 | `result-track:6b5667f9c13f96be710b326809d125ffd55678f3e33c2b2d5a0f5f34f6644777` |
| 18 | `theorem` | [Real.isGLB_of_tendsto_antitone_bddBelow](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/declarations/real-isglb-of-tendsto-antitone-bddbelow--9cc63691d1edff2a2cd8bec9.md) | 187 | `result-track:9cc63691d1edff2a2cd8bec9bb31bf464c5bb6d3fb5395e6cf3d6d58f9757739` |
| 19 | `theorem` | [Real.isLUB_of_tendsto_monotoneOn_bddAbove_nat_Ici](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/declarations/real-islub-of-tendsto-monotoneon-bddabove-nat-ici--51b2ae96fa166316aacfa4a4.md) | 195 | `result-track:51b2ae96fa166316aacfa4a46e9a088c1b9fba4033dcb45acda1b6cfc1e673ac` |
| 20 | `theorem` | [Real.isGLB_of_tendsto_antitoneOn_bddBelow_nat_Ici](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantfcd6f39821585a46bf25635c3274dee1880480ee806896315b845d733bbdfeea.lean/declarations/real-isglb-of-tendsto-antitoneon-bddbelow-nat-ici--2a7bbcfc85c22feb09d9840d.md) | 204 | `result-track:2a7bbcfc85c22feb09d9840d947b20bc8ca040e72e8096a3a03613e6ad102815` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
