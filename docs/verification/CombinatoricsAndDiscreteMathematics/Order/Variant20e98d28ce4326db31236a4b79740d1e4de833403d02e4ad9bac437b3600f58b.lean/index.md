# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Order.Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2b5cfaecfa29bcdf8c00dfdc1a4788858e4be26",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2b5cfaecfa29bcdf8c00dfdc1a4788858e4be26`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Basic.Finite.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Finset` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [toOrderBot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/toorderbot--b637dbcf7acc3afe99754dfe.md) | 65 | `declaration-track:b637dbcf7acc3afe99754dfef64150e42003c3544d5132ee062008caf394b139` |
| 2 | `abbrev` | [toOrderTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/toordertop--585126f52d2d021d867d636f.md) | 71 | `declaration-track:585126f52d2d021d867d636f4b701715942d3876d612ddfcc5605b60564be533` |
| 3 | `abbrev` | [toBoundedOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/toboundedorder--93a8030ac2009da2326e7327.md) | 77 | `declaration-track:93a8030ac2009da2326e73274962180d575c7b3c017993cdbb5a9757d84eb0dc` |
| 4 | `abbrev` | [toCompleteLattice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/tocompletelattice--1326f2ba6c33e230683f4169.md) | 89 | `declaration-track:1326f2ba6c33e230683f4169472f10154f72b97b8751dfac2a53e86481992b27` |
| 5 | `abbrev` | [toCompleteDistribLatticeMinimalAxioms](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/tocompletedistriblatticeminimalaxioms--0b249ca55ea8180238649f79.md) | 100 | `declaration-track:0b249ca55ea8180238649f797007419be0f8b7387300fc028a510e2a3ab5f4b0` |
| 6 | `abbrev` | [toCompleteDistribLattice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/tocompletedistriblattice--7dcaeaac025e6bd5a84bc5e0.md) | 116 | `declaration-track:7dcaeaac025e6bd5a84bc5e06da5306b59eb7375ebefc637a2f886f84e8cef13` |
| 7 | `abbrev` | [toCompleteLinearOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/tocompletelinearorder--9d9327c2a59cffd5bc9d9b66.md) | 125 | `declaration-track:9d9327c2a59cffd5bc9d9b669df533347436c01257dc497fbc9d0e509fdfee9a` |
| 8 | `abbrev` | [toCompleteBooleanAlgebra](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/tocompletebooleanalgebra--ec31eae47255b02a751292b9.md) | 131 | `declaration-track:ec31eae47255b02a751292b9b6223ae57525579afa35479a24ea5900efc72556` |
| 9 | `abbrev` | [toCompleteAtomicBooleanAlgebra](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/tocompleteatomicbooleanalgebra--6f407883d8db2b5a1c07e85d.md) | 137 | `declaration-track:6f407883d8db2b5a1c07e85df0dde789f585b36f419798f82eaf507c7e08cf0d` |
| 10 | `abbrev` | [toCompleteLatticeOfNonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/tocompletelatticeofnonempty--8cce93f26aa15a4ad50bba0f.md) | 150 | `declaration-track:8cce93f26aa15a4ad50bba0fc0fc823f8065781f33ae937118732e15dbbebdb5` |
| 11 | `abbrev` | [toCompleteLinearOrderOfNonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/tocompletelinearorderofnonempty--91953cf474885b8d50a7d468.md) | 157 | `declaration-track:91953cf474885b8d50a7d4680c179b9a0697c681392ccc63c58fe525a3d15196` |
| 12 | `instance` | [Fin.completeLinearOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/fin-completelinearorder--c1e11ad2a9f11f960f4bca1a.md) | 166 | `declaration-track:c1e11ad2a9f11f960f4bca1a300d86a92f0a59296a780e32469cf4260084821b` |
| 13 | `instance` | [Bool.completeBooleanAlgebra](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/bool-completebooleanalgebra--c3f9d9ef595552b329e0e9ff.md) | 169 | `declaration-track:c3f9d9ef595552b329e0e9ffd9ce1e84800f463025df569d0c19938910c1d4b3` |
| 14 | `instance` | [Bool.completeLinearOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/bool-completelinearorder--6fa4aeb5d3a4391140aadeea.md) | 172 | `declaration-track:6fa4aeb5d3a4391140aadeea3fb1fcaab1b0fac18ec5a4ce7a884e64b2771121` |
| 15 | `instance` | [Bool.completeAtomicBooleanAlgebra](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/bool-completeatomicbooleanalgebra--16db6cd675acab5a54a07e52.md) | 177 | `declaration-track:16db6cd675acab5a54a07e529d414a0949587abdd4321191561152665faee8ac` |
| 16 | `theorem` | [Directed.finite_set_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/directed-finite-set-le--1ebc84d0bdced39995f72d57.md) | 187 | `result-track:1ebc84d0bdced39995f72d5764d9b3fd0800893b2bb8791e5e90b23c9d541127` |
| 17 | `lemma` | [Directed.finite_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/directed-finite-le--3240aa807dc214301671d6e3.md) | 191 | `result-track:3240aa807dc214301671d6e3af5b4da7a21a907cae55a778655e9d76a1617432` |
| 18 | `theorem` | [Finite.exists_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/finite-exists-le--21fc1d76c405426a0c68d657.md) | 198 | `result-track:21fc1d76c405426a0c68d657c095c0c3eeb2dea525d414e36917e556d0bbd9a3` |
| 19 | `theorem` | [Finite.exists_ge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/finite-exists-ge--cbca328e2305352f166a2347.md) | 201 | `result-track:cbca328e2305352f166a2347ba4695ece3102b9675570197e2e3c92c6b7ea2cf` |
| 20 | `theorem` | [Set.Finite.exists_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/set-finite-exists-le--75c07874c978e5b9d9356cb1.md) | 204 | `result-track:75c07874c978e5b9d9356cb1556ccced5862fd59d55bbab71e493e3f309a3dd0` |
| 21 | `theorem` | [Set.Finite.exists_ge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/set-finite-exists-ge--606da837696bdff78bdf94b5.md) | 208 | `result-track:606da837696bdff78bdf94b53e89cec648b7c9f1dabe7b2c4138a32c7cbd7d78` |
| 22 | `theorem` | [Finite.bddAbove_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/finite-bddabove-range--13bb6acde220c8239400c5b2.md) | 213 | `result-track:13bb6acde220c8239400c5b2d999ef3a841597366d0e2a2e6b10f02818419fbe` |
| 23 | `theorem` | [Finite.bddBelow_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/finite-bddbelow-range--e8bae5ed381495937d46ce1c.md) | 220 | `result-track:e8bae5ed381495937d46ce1c9aa74c9d6d74ee0d6e4b159dedc0bb4baa5247d0` |
| 24 | `lemma` | [le_iSup_iff_of_directed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/le-isup-iff-of-directed--2787256d9cd2e33c22523fd1.md) | 231 | `result-track:2787256d9cd2e33c22523fd132d1dc18546c9c3d6ac5b6d68126a0fc5d1c3eb2` |
| 25 | `lemma` | [le_sSup_iff_of_directedOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/le-ssup-iff-of-directedon--3fad2e4cb59435f3681aa111.md) | 236 | `result-track:3fad2e4cb59435f3681aa111f8ec834688ee02e39164329459b2008c31076657` |
| 26 | `lemma` | [subset_iUnion_iff_of_directed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/subset-iunion-iff-of-directed--371b17c6b0e8c2ca2db36e73.md) | 247 | `result-track:371b17c6b0e8c2ca2db36e7319c0df464d51746c2985041030779f9c9cf1fdb7` |
| 27 | `lemma` | [subset_sUnion_iff_of_directed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/subset-sunion-iff-of-directed--56c4a4c4f3b5bd4d88c9e999.md) | 250 | `result-track:56c4a4c4f3b5bd4d88c9e999fd17429e3d0024e6ba3a6f6d7ad1073a59357686` |
| 28 | `lemma` | [le_ciSup_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/le-cisup-of-le--bf72699047c307f7d1d31803.md) | 273 | `result-track:bf72699047c307f7d1d31803069087298d4c9f2adc7338696b63856a0df42d6e` |
| 29 | `lemma` | [ciInf_le_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/ciinf-le-of-le--5aba961660fb19e8097dcab4.md) | 276 | `result-track:5aba961660fb19e8097dcab44412df736004abded75ea008ea659af6f343e8aa` |
| 30 | `lemma` | [ciSup_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/cisup-mono--b4bc55498af60c69b39622a4.md) | 279 | `result-track:b4bc55498af60c69b39622a435da3504fd1cb145528492f54d2d77650494b7c1` |
| 31 | `lemma` | [ciInf_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/ciinf-mono--63a33b8d082d7733f379fbfe.md) | 282 | `result-track:63a33b8d082d7733f379fbfebfab78a788dd4abb578fbed1a94c42c7c74a4191` |
| 32 | `lemma` | [le_ciSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/le-cisup--5821ca8ed6d0554109e8b1b0.md) | 285 | `result-track:5821ca8ed6d0554109e8b1b07533a25c5f1d203e4cc893ceca6ad4bf712d56a5` |
| 33 | `lemma` | [ciInf_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/ciinf-le--5399548c723f8fb27f06be86.md) | 288 | `result-track:5399548c723f8fb27f06be86cbf6a2a0b9ff320f1f5bda3c516a2833f240f745` |
| 34 | `lemma` | [ciSup_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/cisup-sup--47d32fc194c0995593f5f44b.md) | 291 | `result-track:47d32fc194c0995593f5f44b190c5d1ef6c19d4c931551e630d2b6a285299744` |
| 35 | `lemma` | [ciInf_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/ciinf-inf--3fe9d5b112c6521431f34634.md) | 297 | `result-track:3fe9d5b112c6521431f346347195939b01cbc89a3af928a9b67c3bf98d441e1e` |
| 36 | `lemma` | [ciSup_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/cisup-prod--1809e2bf490511b832dbe7b3.md) | 301 | `result-track:1809e2bf490511b832dbe7b330a494810df1cd6c75f7fe2c1bc2842ab07a17db` |
| 37 | `lemma` | [ciInf_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/ciinf-prod--ca6a00307b42c471a09e522a.md) | 305 | `result-track:ca6a00307b42c471a09e522a8e306d86409f5b7a14fbba2168fd52e89169cf3f` |
| 38 | `lemma` | [map_iSup_of_monotoneOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/map-isup-of-monotoneon--9c422cd2981ece17472daf07.md) | 316 | `result-track:9c422cd2981ece17472daf076834b40b5a9b4b3022565b5e23d899e77100f6f2` |
| 39 | `lemma` | [map_iInf_of_monotoneOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/map-iinf-of-monotoneon--c1b811dc019362773a3810a7.md) | 324 | `result-track:c1b811dc019362773a3810a79e8798e0fef32daecac3486a221e38423f5326d2` |
| 40 | `lemma` | [map_iSup_of_antitoneOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/map-isup-of-antitoneon--ff5fe5cf01ca879640f0302e.md) | 329 | `result-track:ff5fe5cf01ca879640f0302e5783a5fcc3b4f6a88288029591c2aba6d35d4aff` |
| 41 | `lemma` | [map_iInf_of_antitoneOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/map-iinf-of-antitoneon--c87c051cc22143917cff0581.md) | 334 | `result-track:c87c051cc22143917cff058196954d946f49d3b6577b1de12f82faaa40ab7352` |
| 42 | `lemma` | [map_iSup_of_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/map-isup-of-monotone--d781038fb7e3e3d69d93ddd2.md) | 339 | `result-track:d781038fb7e3e3d69d93ddd2334894c2bf9bf22025cf400a491a98654683cc8e` |
| 43 | `lemma` | [map_iInf_of_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/map-iinf-of-monotone--02e30a5d3525ad7773ebe421.md) | 343 | `result-track:02e30a5d3525ad7773ebe4213003e0e5332e70df326f75968d72621b2d77213e` |
| 44 | `lemma` | [map_iSup_of_antitone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/map-isup-of-antitone--ed56c68f7c5f5bf930f425db.md) | 347 | `result-track:ed56c68f7c5f5bf930f425db623273c3fbab92b7974d9656ecb4edb91e4f2961` |
| 45 | `lemma` | [map_iInf_of_antitone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/map-iinf-of-antitone--f5266d667671c12aeff00915.md) | 351 | `result-track:f5266d667671c12aeff00915a9ce75dbebf9be537db290045c6aceab79600cf9` |
| 46 | `theorem` | [le_ciSup_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/le-cisup-iff--aa7e57203f6ee320db86b4be.md) | 356 | `result-track:aa7e57203f6ee320db86b4be358f4f7984215c2b2b80963484ac655ee1711119` |
| 47 | `theorem` | [ciSup_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/declarations/cisup-lt-iff--e4c395ad7cff90b75171aaee.md) | 360 | `result-track:e4c395ad7cff90b75171aaee7597edba619ca50408c4c4d86f081272412613c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
