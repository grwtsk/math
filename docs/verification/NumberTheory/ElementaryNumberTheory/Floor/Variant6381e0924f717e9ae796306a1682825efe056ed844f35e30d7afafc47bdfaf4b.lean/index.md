# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Floor.Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a530c5ccba80e7ee21f2b2d504f0b1069edcfaf",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a530c5ccba80e7ee21f2b2d504f0b1069edcfaf`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Round` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [floor_def'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/floor-def--5f3bbd668ed9b4ea0d379051.md) | 32 | `result-track:5f3bbd668ed9b4ea0d3790519232d8d0716424bba75a2a346aa4bcccd8f9e1c5` |
| 2 | `theorem` | [le_floor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/le-floor--773da680ba61f739d6b1e950.md) | 38 | `result-track:773da680ba61f739d6b1e950af6e50e565cbd0c89da5f320cd6a57058ebaad23` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/instance--d862f5a7bcd9b099b7b506b0.md) | 48 | `declaration-track:d862f5a7bcd9b099b7b506b0e27042382bf7d4c7c5c8aa867bd8398cf62003ed` |
| 4 | `theorem` | [floor_def](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/floor-def--dc75eecf1d1b42890769e34d.md) | 51 | `result-track:dc75eecf1d1b42890769e34df622d1a36a49c8e6a94cca1cf8150e0ae789b5c8` |
| 5 | `theorem` | [ceil_def](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/ceil-def--8453bb450113ba41d2e0145e.md) | 53 | `result-track:8453bb450113ba41d2e0145eefadf968d64607a34ce53d149c52f7b08947beb3` |
| 6 | `theorem` | [floor_intCast_div_natCast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/floor-intcast-div-natcast--680b584c73fbccad44e5b4cd.md) | 59 | `result-track:680b584c73fbccad44e5b4cdecad490097be2a998e3087adff205b23e28555e1` |
| 7 | `theorem` | [ceil_intCast_div_natCast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/ceil-intcast-div-natcast--e641db0b0ca9f4a616b5bc53.md) | 72 | `result-track:e641db0b0ca9f4a616b5bc53d4d81dd11de7b9f98973ec8f8b080667f69aebe4` |
| 8 | `theorem` | [floor_natCast_div_natCast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/floor-natcast-div-natcast--47338396c0d84e8f214dcbc0.md) | 77 | `result-track:47338396c0d84e8f214dcbc0ea8a5336eb6fa88907b5398df77ec3063e08e705` |
| 9 | `theorem` | [ceil_natCast_div_natCast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/ceil-natcast-div-natcast--49b9d8ef013388e5f3a4d907.md) | 81 | `result-track:49b9d8ef013388e5f3a4d907570b71085bcd6814171b4ab17d6f83ed05687742` |
| 10 | `theorem` | [natFloor_natCast_div_natCast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/natfloor-natcast-div-natcast--27a08175af7189684572eab9.md) | 85 | `result-track:27a08175af7189684572eab94ef9ff3b339cd6eb0623fe0dd2e63da19b76346c` |
| 11 | `theorem` | [floor_cast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/floor-cast--5a357f172d7d10194f4c2977.md) | 91 | `result-track:5a357f172d7d10194f4c2977146b68743eb7990f2a23fcfa406dbb04d448350e` |
| 12 | `theorem` | [ceil_cast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/ceil-cast--d414ae9623660292d6390709.md) | 95 | `result-track:d414ae9623660292d6390709dd93b7ed73c5ecb97437bd7f72ff3c930bab42f3` |
| 13 | `theorem` | [round_cast](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/round-cast--f344c9986cd3046f528aa260.md) | 99 | `result-track:f344c9986cd3046f528aa2601763fd3e8f20eb75849bc42e307f5af814fa32c0` |
| 14 | `theorem` | [cast_fract](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/cast-fract--7f48756a36a01be4ca04481b.md) | 104 | `result-track:7f48756a36a01be4ca04481b6ea3f4866f029c0b3d939f288875796c70bf6542` |
| 15 | `theorem` | [isNat_intFloor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/isnat-intfloor--6ff00a41887710b562104114.md) | 111 | `result-track:6ff00a41887710b562104114ca5b195a48d316dd275219bce1548d0f6aa5ac87` |
| 16 | `theorem` | [isInt_intFloor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/isint-intfloor--6ef537a337121c11fd0621bb.md) | 115 | `result-track:6ef537a337121c11fd0621bb7b6d116f7221a10e8030ba9947d97243d1d6d072` |
| 17 | `theorem` | [isInt_intFloor_ofIsRat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/isint-intfloor-ofisrat--079bf226c0d10da1f013683b.md) | 119 | `result-track:079bf226c0d10da1f013683bf47e0dab5f642cf94927030513ac9888613a9110` |
| 18 | `def` | [evalIntFloor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/evalintfloor--7279d83786811b8b2c0744d6.md) | 129 | `declaration-track:7279d83786811b8b2c0744d663613c535697a0a919fa30352d07cdc0d7611fbe` |
| 19 | `theorem` | [isNat_intCeil](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/isnat-intceil--766c8d860e91ae29b8b598ea.md) | 152 | `result-track:766c8d860e91ae29b8b598ea78f998138fa47e03243ea06f90b829df1323d58d` |
| 20 | `theorem` | [isInt_intCeil](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/isint-intceil--3359f7da2f0b915014f973af.md) | 156 | `result-track:3359f7da2f0b915014f973afc3479e8b645b2a9b6baa3da8728ba74b3330cf7f` |
| 21 | `theorem` | [isInt_intCeil_ofIsRat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/isint-intceil-ofisrat--2963494f1feb6fa20716297a.md) | 160 | `result-track:2963494f1feb6fa20716297a3a31ab6f68590dac5d580522ad688144803f1a05` |
| 22 | `def` | [evalIntCeil](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/evalintceil--28aa7c734dada5e96ab2231a.md) | 170 | `declaration-track:28aa7c734dada5e96ab2231acf10607368e055169993528294606fd5a697de01` |
| 23 | `theorem` | [Int.mod_nat_eq_sub_mul_floor_rat_div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/int-mod-nat-eq-sub-mul-floor-rat-div--c9340b132106fac1e42da91b.md) | 197 | `result-track:c9340b132106fac1e42da91be0339d89c30db728e36ff912ffb132eeef24eed5` |
| 24 | `theorem` | [Nat.coprime_sub_mul_floor_rat_div_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/nat-coprime-sub-mul-floor-rat-div-of-coprime--6f89770a2473472daa3f5688.md) | 200 | `result-track:6f89770a2473472daa3f5688b423f8f336e672ecaaa5db3d4a4aac4522c31b75` |
| 25 | `theorem` | [num_lt_succ_floor_mul_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/num-lt-succ-floor-mul-den--2788888eb82b8cf4770bc4ea.md) | 209 | `result-track:2788888eb82b8cf4770bc4eab523e95d50a92503d4bc64c793a81759ce5b7ac9` |
| 26 | `theorem` | [fract_inv_num_lt_num_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Floor/Variant6381e0924f717e9ae796306a1682825efe056ed844f35e30d7afafc47bdfaf4b.lean/declarations/fract-inv-num-lt-num-of-pos--cc8323c0a5f60c4fe4bf424c.md) | 230 | `result-track:cc8323c0a5f60c4fe4bf424ce24119ac488e562ce4b18ea73ad5231bb43b1a8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
