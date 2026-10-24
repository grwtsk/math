# Verification target: GRWTSK.Algebra.UniversalAlgebra.Free.Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62d10082754200dbb9ac6632e65bb6b87b0b7a36",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62d10082754200dbb9ac6632e65bb6b87b0b7a36`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.NonUnitalNonAssocAlgebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.UniversalEnveloping` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.FreeNonUnitalNonAssocAlgebra` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rel](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/rel--fb7d27b91045ce4f64ff3d7d.md) | 89 | `declaration-track:fb7d27b91045ce4f64ff3d7d10b00fa0a977ba15dc3727a2a77c20cc169dac58` |
| 2 | `theorem` | [Rel.addLeft](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/rel-addleft--61beb8af7ab1ac4ee19173aa.md) | 100 | `result-track:61beb8af7ab1ac4ee19173aa9e6b8a9c976b1ae876ff6c67930eb5a16b3df7ef` |
| 3 | `theorem` | [Rel.neg](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/rel-neg--95f124bcfab9b94f9d93275e.md) | 104 | `result-track:95f124bcfab9b94f9d93275e88ab9cf4a7555b8f19e85b117ec48124f34bcb3e` |
| 4 | `theorem` | [Rel.subLeft](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/rel-subleft--ca67ed10f65496e32491a9ae.md) | 108 | `result-track:ca67ed10f65496e32491a9aeb7d20936cd41ae52602d2278630ffb86d70972a3` |
| 5 | `theorem` | [Rel.subRight](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/rel-subright--82739ee673a69e86cc192ad0.md) | 112 | `result-track:82739ee673a69e86cc192ad097bee09fd60a9aac2bb03f92ed2f2c3537155991` |
| 6 | `theorem` | [Rel.smulOfTower](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/rel-smuloftower--7174f730db7292845a3814dd.md) | 116 | `result-track:7174f730db7292845a3814dd20b85d0b0286295ec1516f48d68c126b26c9a215` |
| 7 | `def` | [FreeLieAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/freeliealgebra--377f0c132576d4c4e33af902.md) | 125 | `declaration-track:377f0c132576d4c4e33af902d82c8965a78fb8fd80c73325a0bb674156adfb2c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/instance--edca0c542f3bfd74c1769a4d.md) | 129 | `declaration-track:edca0c542f3bfd74c1769a4da3bdf6e3141f876c94b414d35587354f26f2f9db` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/instance--b0cf5e7e8547ec42ddd6753c.md) | 133 | `declaration-track:b0cf5e7e8547ec42ddd6753c15cee3a3a709e246be6183bd8508f5a0a18b6700` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/instance--9e5fb75e7ea316efa88cce63.md) | 136 | `declaration-track:9e5fb75e7ea316efa88cce63442f47bb14dc4f2110ddfb8c9e90fc6cf753aac2` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/instance--0f233cdb59884285374df352.md) | 140 | `declaration-track:0f233cdb59884285374df35211d4df6a823e966fc60fa474f3e6a97c6404debf` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/instance--ce01ca358e92cbde8f482e96.md) | 142 | `declaration-track:ce01ca358e92cbde8f482e96517e30cfb2040dc7fb63b143a1859aef635868a5` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/instance--ee72d11e20951752e42f72d0.md) | 145 | `declaration-track:ee72d11e20951752e42f72d0f703de36a07b8550e1ee942ed78f5e46d35d18e0` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/instance--771c262a75d1bc6951535060.md) | 147 | `declaration-track:771c262a75d1bc6951535060eceff46d7778e342e9db974a3db128cd6d4df906` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/instance--94f905a3d69aebe35d2dbdb1.md) | 150 | `declaration-track:94f905a3d69aebe35d2dbdb1f257c877f09f9e319afa58e0b8fbc601cb7bc8b6` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/instance--f74d558eb0bde08de7d91323.md) | 154 | `declaration-track:f74d558eb0bde08de7d913238c5a029f0d342e4b8598b8ce6beef4450ffa92b8` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/instance--8df5fce624cb5a27e1010291.md) | 157 | `declaration-track:8df5fce624cb5a27e101029147507c944ff1c3cd5ef5665f1b92e0c920650d50` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/instance--7bad90811e34feb7d04543d4.md) | 161 | `declaration-track:7bad90811e34feb7d04543d4ef49447d59f6a0832121559bcdd057ad258d9734` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/instance--c4dcae1ca28bae44b8d35256.md) | 168 | `declaration-track:c4dcae1ca28bae44b8d352567de8b057f8321ec2e789dbd6cdd1e1f09fe383f7` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/instance--b66e91817e792b291bcf8e8e.md) | 175 | `declaration-track:b66e91817e792b291bcf8e8e367034aeb6cbe687cf625f3bb5d3ecbac0411ae4` |
| 21 | `def` | [of](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/of--10e3befcaa2b343569629394.md) | 185 | `declaration-track:10e3befcaa2b3435696293947a82c81052a6992ace905f2bd259d0b00dc0e1ce` |
| 22 | `def` | [liftAux](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/liftaux--c560775120f1c65cc560bd60.md) | 191 | `declaration-track:c560775120f1c65cc560bd605e0911f9fcc7ff176c06de76364dbf1ae015add1` |
| 23 | `theorem` | [liftAux_map_smul](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/liftaux-map-smul--5537f23b8d2cf1d9a9b6a6c7.md) | 195 | `result-track:5537f23b8d2cf1d9a9b6a6c77ea5565a1ea020d36ce8dbdef169778351af0a80` |
| 24 | `theorem` | [liftAux_map_add](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/liftaux-map-add--b6dd2a08770f76e5a55b56e4.md) | 200 | `result-track:b6dd2a08770f76e5a55b56e43a31081bf7931ca0ceb598a7703120cb611f92fd` |
| 25 | `theorem` | [liftAux_map_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/liftaux-map-mul--1834b6d74505a1cf8b749446.md) | 205 | `result-track:1834b6d74505a1cf8b749446247b32779db34d53b513e349086dfc46c3368d4b` |
| 26 | `theorem` | [liftAux_spec](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/liftaux-spec--9b00bc3e5d72cf4489d8dbe2.md) | 210 | `result-track:9b00bc3e5d72cf4489d8dbe2279ccfc17ac2cea4783665e7b0859a6d4f56311e` |
| 27 | `def` | [mk](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/mk--6bc257ad9d82aa96fa71a60c.md) | 223 | `declaration-track:6bc257ad9d82aa96fa71a60cdb7b740262c44d716d0f7a55b71111de4edbc3f9` |
| 28 | `def` | [lift](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/lift--ba786e4cf3c16a5cc0d7c69f.md) | 233 | `declaration-track:ba786e4cf3c16a5cc0d7c69feb702179f975ad2acaf6d1cb902b2b7caa6860eb` |
| 29 | `theorem` | [lift_symm_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/lift-symm-apply--236777cdee05053bbd26abf1.md) | 250 | `result-track:236777cdee05053bbd26abf1d32c3d7c7615bfd3c1478506966ffb11461f0ba5` |
| 30 | `theorem` | [of_comp_lift](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/of-comp-lift--f2a83195c17cf59e87820ec3.md) | 256 | `result-track:f2a83195c17cf59e87820ec393a3069a76bacdbbe5f21dd307fda23ca99deb54` |
| 31 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/lift-unique--cd35a52d822aca4c3761fdba.md) | 260 | `result-track:cd35a52d822aca4c3761fdbab934496181361b2776cff218e90d711b2fe4b49c` |
| 32 | `theorem` | [lift_of_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/lift-of-apply--eb7e75d38c06566a5153e544.md) | 265 | `result-track:eb7e75d38c06566a5153e54438afdbd772285110140ffb04f92982cd050517a8` |
| 33 | `theorem` | [lift_comp_of](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/lift-comp-of--5ead0a1a1dd5807ce4707c61.md) | 270 | `result-track:5ead0a1a1dd5807ce4707c61daeec5ffca2b9b83d3bf9e9bf675649be0a073e4` |
| 34 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/hom-ext--da1f60ac9fdcd4907b0f452f.md) | 275 | `result-track:da1f60ac9fdcd4907b0f452fbb83f939b9ad668f299b0d88641c6fefa761fc83` |
| 35 | `def` | [universalEnvelopingEquivFreeAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/declarations/universalenvelopingequivfreealgebra--2e0643c19894e5d37fee2d81.md) | 286 | `declaration-track:2e0643c19894e5d37fee2d81bae80d0dfa3b66208a7bec2216a9d12848e53681` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
