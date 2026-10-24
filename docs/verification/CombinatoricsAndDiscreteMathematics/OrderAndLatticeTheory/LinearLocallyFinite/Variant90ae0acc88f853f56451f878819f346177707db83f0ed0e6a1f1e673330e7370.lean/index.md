# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LinearLocallyFinite.Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "733efb872ae3c3ab2e3419290b3e0e74a5f5eedc",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `733efb872ae3c3ab2e3419290b3e0e74a5f5eedc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pigeonhole` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Encodable.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Archimedean` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/instance--1ee390b6893cfccbcaffda10.md) | 65 | `declaration-track:1ee390b6893cfccbcaffda10ca12904da8f9bd085fe398366ac6a346a264dafd` |
| 2 | `instance` | [isSuccArchimedean_of_isPredArchimedean](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/issuccarchimedean-of-ispredarchimedean--720bfd0b1c51265f28de8c54.md) | 85 | `declaration-track:720bfd0b1c51265f28de8c54e49f3c1ff8793865dddccb643a04fefe4bfc9d72` |
| 3 | `theorem` | [isSuccArchimedean_iff_isPredArchimedean](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/issuccarchimedean-iff-ispredarchimedean--bd964d584b46f73783326890.md) | 90 | `result-track:bd964d584b46f73783326890a2ad31b691f95b37c1f061123754898a07293ccc` |
| 4 | `def` | [succFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/succfn--0ba64fb60eda9aebb8795869.md) | 100 | `declaration-track:0ba64fb60eda9aebb87958695d1ec62bcc5ca341592cbc76b7f777d8157463a9` |
| 5 | `theorem` | [succFn_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/succfn-spec--6fc3a591f578a9e3d5c46b80.md) | 103 | `result-track:6fc3a591f578a9e3d5c46b8010ad9ac1b450d5714d42f00d453bc9ce83e45888` |
| 6 | `theorem` | [le_succFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/le-succfn--01e245f11f1cb6c153bbb1d1.md) | 106 | `result-track:01e245f11f1cb6c153bbb1d16371de6bdbddd7bf432b46b48e943334f474ec64` |
| 7 | `theorem` | [isGLB_Ioc_of_isGLB_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/isglb-ioc-of-isglb-ioi--682c792492d6628829f7ede2.md) | 110 | `result-track:682c792492d6628829f7ede2cc686db95184f22ccaf082e89b0fed4b647eec3e` |
| 8 | `theorem` | [isMax_of_succFn_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/ismax-of-succfn-le--db35fa137ece6905b2b32739.md) | 119 | `result-track:db35fa137ece6905b2b327396126675b9a29f4601c6b4e3923250519e9343422` |
| 9 | `theorem` | [succFn_le_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/succfn-le-of-lt--16beb0b8b9de687bdd4a6c3d.md) | 133 | `result-track:16beb0b8b9de687bdd4a6c3dbed95883b71569cc40f9d17036e2e0650195784b` |
| 10 | `theorem` | [le_of_lt_succFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/le-of-lt-succfn--cd58df859b6319aabdfd65e9.md) | 138 | `result-track:cd58df859b6319aabdfd65e90663f4d489e613443eecb88fcffac79f18b3f3a7` |
| 11 | `def` | [succOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/succorder--883cb8f93231973b160efd45.md) | 148 | `declaration-track:883cb8f93231973b160efd4554dcad79cf9a9f1e788ab0c2a8d77065844b94a8` |
| 12 | `def` | [predOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/predorder--4361779a48de9bf3228f2018.md) | 158 | `declaration-track:4361779a48de9bf3228f2018161c8c5ac57c9b442c18afc3e1b3f4a27ed0ffda` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/instance--472b130e962c12ced35fb547.md) | 162 | `declaration-track:472b130e962c12ced35fb547205674ad5699966453c3321b2a690609d14e7be3` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/instance--402dc9b0c697034156004692.md) | 191 | `declaration-track:402dc9b0c69703415600469261e5c16228b996bace513ece8faeba40f045bb61` |
| 15 | `def` | [toZ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/toz--781f4b56dc3d462abb1675ec.md) | 206 | `declaration-track:781f4b56dc3d462abb1675ec2b2e2d9bb813037738ff2a3ab7939642c3e889a6` |
| 16 | `theorem` | [toZ_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/toz-of-ge--00166e09e355caf7a3d353be.md) | 210 | `result-track:00166e09e355caf7a3d353be2f4e6b97520288d0dccbb8d0554baefed0578023` |
| 17 | `theorem` | [toZ_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/toz-of-lt--454240aecaba33f7a6a7de6c.md) | 213 | `result-track:454240aecaba33f7a6a7de6c2edc2950a53ceb2a306b60449667e5dea694cad1` |
| 18 | `theorem` | [toZ_of_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/toz-of-eq--b9329d972d0a5a92cc1c3d19.md) | 218 | `result-track:b9329d972d0a5a92cc1c3d19a77e2c01294484fe1624df7b01884a08becbc312` |
| 19 | `theorem` | [iterate_succ_toZ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/iterate-succ-toz--13cdfedd85cbfb45cc80ec64.md) | 224 | `result-track:13cdfedd85cbfb45cc80ec64284e0a60d32485c0a75550d5babf7f4c55bb9700` |
| 20 | `theorem` | [iterate_pred_toZ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/iterate-pred-toz--aef66aab65a4d5edae03bc88.md) | 228 | `result-track:aef66aab65a4d5edae03bc88a6ea4a2afeae25d918ae308dad00e6db03ff9ec5` |
| 21 | `lemma` | [toZ_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/toz-nonneg--7632884e51ddd64db6e3bb24.md) | 232 | `result-track:7632884e51ddd64db6e3bb24cb4121bd8489d8941f2f791d07f16652d3757986` |
| 22 | `theorem` | [toZ_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/toz-neg--fa73a655fb43b78740ce6824.md) | 234 | `result-track:fa73a655fb43b78740ce6824fa762a69f6263d341c69a5cbba6b1f6596f54d01` |
| 23 | `theorem` | [toZ_iterate_succ_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/toz-iterate-succ-le--54e94ec76d22bee1080fe7fb.md) | 243 | `result-track:54e94ec76d22bee1080fe7fb398dba68a3e179a9a1b4e157b6bd51b169a4a69d` |
| 24 | `theorem` | [toZ_iterate_pred_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/toz-iterate-pred-ge--7f8a5a60cb2bcd859c0e0d63.md) | 248 | `result-track:7f8a5a60cb2bcd859c0e0d63629ef19767f3ff4b8424dcbaf50866f9b3e7f8d5` |
| 25 | `theorem` | [toZ_iterate_succ_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/toz-iterate-succ-of-not-ismax--fa1c906770b626169ebd6df6.md) | 258 | `result-track:fa1c906770b626169ebd6df6814654c1f25577de533d262711af30ab32378286` |
| 26 | `theorem` | [toZ_iterate_pred_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/toz-iterate-pred-of-not-ismin--c917b69618aa78cfb0bc4929.md) | 269 | `result-track:c917b69618aa78cfb0bc49298998cc98403b777523a623eee649490536bb0bb1` |
| 27 | `theorem` | [le_of_toZ_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/le-of-toz-le--b09ba676eae8fbb168fcfe4d.md) | 288 | `result-track:b09ba676eae8fbb168fcfe4d87813e56ebfee11ceac1ef3f4c34d7485256e78a` |
| 28 | `theorem` | [toZ_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/toz-mono--0eb5ccea87bc99a659083c5e.md) | 298 | `result-track:0eb5ccea87bc99a659083c5e208faf4fbbcbdc49250e6d31ba35f89efc91ea3a` |
| 29 | `theorem` | [toZ_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/toz-le-iff--0f7df2d6ac7450e07239cf7f.md) | 346 | `result-track:0f7df2d6ac7450e07239cf7f77ba3ee16ad9cfbe3ca56d47a14d1c93e8183f89` |
| 30 | `theorem` | [toZ_iterate_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/toz-iterate-succ--a8ac106711d5f7c8c9cf6eaa.md) | 349 | `result-track:a8ac106711d5f7c8c9cf6eaa7dc46a1114fc24f7d667ee23fe3a081c45af0bba` |
| 31 | `theorem` | [toZ_iterate_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/toz-iterate-pred--873933f8267c8e1e26906369.md) | 352 | `result-track:873933f8267c8e1e26906369bf1f81c5eee35487c836e3ababa79c41d5ae3a28` |
| 32 | `theorem` | [injective_toZ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/injective-toz--49857ebad260daaa8c127cc7.md) | 355 | `result-track:49857ebad260daaa8c127cc761f54aaa48492e64f4dfbecc672ee17861de0b77` |
| 33 | `def` | [orderIsoRangeToZOfLinearSuccPredArch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/orderisorangetozoflinearsuccpredarch--f6a8c52f9b4ee78d6914f690.md) | 365 | `declaration-track:f6a8c52f9b4ee78d6914f6902b68959ae3de86087ae8cb1d693911f036aec4fb` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/instance--37aa1cd9b81b5dc4c35117cd.md) | 370 | `declaration-track:37aa1cd9b81b5dc4c35117cdc0cce33df70cedcbb3cb8ed3b029e84464ff327c` |
| 35 | `def` | [orderIsoIntOfLinearSuccPredArch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/orderisointoflinearsuccpredarch--ddba770d752371150c0a4528.md) | 376 | `declaration-track:ddba770d752371150c0a452817aa2fddf826daa2bd7f7a7a80b08fe692ffe149` |
| 36 | `def` | [orderIsoNatOfLinearSuccPredArch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/orderisonatoflinearsuccpredarch--e8027492119407247c0b663b.md) | 399 | `declaration-track:e8027492119407247c0b663bd00a3652eacc2060a9a273d7cc01642b81969d18` |
| 37 | `def` | [orderIsoRangeOfLinearSuccPredArch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/orderisorangeoflinearsuccpredarch--99d2336d6450ba37e61a52a3.md) | 416 | `declaration-track:99d2336d6450ba37e61a52a3a891273dc9c6e3b38301211eace3d8838065817e` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/declarations/instance--73a5b9a252e54c5975dae96d.md) | 442 | `declaration-track:73a5b9a252e54c5975dae96d087538325f441b4ef853cfe9757a19d8b963b044` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
