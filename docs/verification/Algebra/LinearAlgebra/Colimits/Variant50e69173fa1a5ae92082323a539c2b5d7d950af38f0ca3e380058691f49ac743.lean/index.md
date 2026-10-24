# Verification target: GRWTSK.Algebra.LinearAlgebra.Colimits.Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16470ef9aeada2f9eac38e1230471ecbaac14fd0",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16470ef9aeada2f9eac38e1230471ecbaac14fd0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Prequotient](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/prequotient--a24561100e247035ced87ce3.md) | 58 | `declaration-track:a24561100e247035ced87ce34c3ab7d32eab59268325af49e979f1b1bc0f81f4` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/instance--e4f4079c04532382cd6d0202.md) | 69 | `declaration-track:e4f4079c04532382cd6d020257e77f10ec475776091c4dafb3dfbea336f27530` |
| 3 | `inductive` | [Relation](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/relation--10fe884a7fd512d5e1361f57.md) | 78 | `declaration-track:10fe884a7fd512d5e1361f5758e025940250ea30b0656859c4deced2ca19aa13` |
| 4 | `def` | [colimitSetoid](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/colimitsetoid--1ca7be439fa4ec818b7e16ec.md) | 116 | `declaration-track:1ca7be439fa4ec818b7e16ecd0d9e8fda3ae921e1e921eb27b55272e1e27f425` |
| 5 | `def` | [ColimitType](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/colimittype--18cf68f77e2c27508713962f.md) | 126 | `declaration-track:18cf68f77e2c27508713962f62c5c977f378aab143255ef1733af41af148d57e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/instance--e1a8a2e314bc0ac1bd9b9eab.md) | 131 | `declaration-track:e1a8a2e314bc0ac1bd9b9eabe3c95ff3bd3ad2683261f6bc1f404770c6250a62` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/instance--36634f29d2e6cfb2253f3a53.md) | 133 | `declaration-track:36634f29d2e6cfb2253f3a53a84bad5d96a22c855ebc8c993748d5ddcf933d8a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/instance--d764db46d3e85c4cfed03b30.md) | 145 | `declaration-track:d764db46d3e85c4cfed03b300e8612c8b38f4a62ebfe03f60cdde8f8c5ccbd34` |
| 9 | `theorem` | [quot_zero](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/quot-zero--309500d151812464bce73feb.md) | 155 | `result-track:309500d151812464bce73feb024b05859241fad5e18783340dbb724ebfd736db` |
| 10 | `def` | [ColimitType.mk](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/colimittype-mk--52987f9b687fc1e2525365d2.md) | 160 | `declaration-track:52987f9b687fc1e2525365d296aad2b2c9e3602b4372e46c9d0fbe2deb14a162` |
| 11 | `theorem` | [quot_neg](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/quot-neg--5e2cba40e228a20df1b386af.md) | 163 | `result-track:5e2cba40e228a20df1b386afbb0507f2ee8600d2f8041770c713551f597aaef9` |
| 12 | `theorem` | [quot_add](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/quot-add--75119c55948971dbabc54f45.md) | 169 | `result-track:75119c55948971dbabc54f45ee90ba37408defeeb8e821b3d267c9392969a1f3` |
| 13 | `theorem` | [quot_smul](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/quot-smul--7721bd34ebcbc84ea76b405d.md) | 176 | `result-track:7721bd34ebcbc84ea76b405d9552b0065fda2eb1e560f029ac621e0e484a5e6c` |
| 14 | `def` | [colimit](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/colimit--c454b311b8c7742f6e0c16d0.md) | 182 | `declaration-track:c454b311b8c7742f6e0c16d083c2991397c34d6443cdd8d9711b17e1b6cb12c9` |
| 15 | `def` | [coconeFun](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/coconefun--8e86cdd9aef60b1ce3029080.md) | 188 | `declaration-track:8e86cdd9aef60b1ce3029080c399d81174a182945b1a7e6895e873d833869508` |
| 16 | `def` | [coconeMorphism](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/coconemorphism--7b755bb3635be4643d572a31.md) | 194 | `declaration-track:7b755bb3635be4643d572a31ce1e6ed5a49ce78b2b8f2bb4d7bd5ea2ebc4be44` |
| 17 | `theorem` | [cocone_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/cocone-naturality--b9845ff550b10d40d691ce12.md) | 202 | `result-track:b9845ff550b10d40d691ce126eedcbef27280a765032f759f73d5f4b6f2d410b` |
| 18 | `theorem` | [cocone_naturality_components](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/cocone-naturality-components--2e60be9bdaf7ab980806be00.md) | 211 | `result-track:2e60be9bdaf7ab980806be00b4cb701f2ef47a3365b3632bcd93d4943c68da71` |
| 19 | `def` | [colimitCocone](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/colimitcocone--a70725ced6e7051ea1657873.md) | 219 | `declaration-track:a70725ced6e7051ea165787393b4be01c082236b4aa9d6b4109e61249c1b1727` |
| 20 | `def` | [descFunLift](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/descfunlift--1300e1f10d26906f38a605b9.md) | 227 | `declaration-track:1300e1f10d26906f38a605b910cdafd7f6a4aad5d8294416be2bfdb4535abdd9` |
| 21 | `def` | [descFun](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/descfun--9d3732e751d178951cb30a63.md) | 237 | `declaration-track:9d3732e751d178951cb30a63a0506fe79fb87a616a88ca47af66c1dfb40483c4` |
| 22 | `def` | [descMorphism](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/descmorphism--add557fd2b568ad46c00ebe0.md) | 293 | `declaration-track:add557fd2b568ad46c00ebe0108b3341fac4b2da576b132aaceb6fcedf879033` |
| 23 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/colimitcoconeiscolimit--bc78b19cc2ce83733c09f904.md) | 301 | `declaration-track:bc78b19cc2ce83733c09f904bdc1f21b7ab117503ae067814a74cf0aec518b5c` |
| 24 | `instance` | [hasColimits_moduleCat](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/hascolimits-modulecat--e1c496dd3058c28e48da72b7.md) | 325 | `declaration-track:e1c496dd3058c28e48da72b7575a559af3a139647a4046999df0713ef74d2fff` |
| 25 | `instance` | [hasColimitsOfSize_moduleCat](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/hascolimitsofsize-modulecat--01c1d7437c71a309176ef50e.md) | 334 | `declaration-track:01c1d7437c71a309176ef50e0cb7618aa7678234f5e2b2f383a57477fbe14eab` |
| 26 | `instance` | [hasColimitsOfSize_zero_moduleCat](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/hascolimitsofsize-zero-modulecat--25e9c903c49f363af8138e11.md) | 339 | `declaration-track:25e9c903c49f363af8138e1165bd4c491aed572eb90b598c3c5549a866271a7d` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/example--8d9c822ddc7f3b62f83a883b.md) | 363 | `declaration-track:8d9c822ddc7f3b62f83a883b12ac7ab45606fa53728f6f6bfbd1e4706f56f699` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/example--2007076cc34bc820b32661ca.md) | 366 | `declaration-track:2007076cc34bc820b32661caca29a1164716c4258568e3d58ce2d5a2cd177d28` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/declarations/example--e2647bb35ca815328e8e3a5d.md) | 369 | `declaration-track:e2647bb35ca815328e8e3a5de3177e06c31697991aaa7dbd6a0e467178861d9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
