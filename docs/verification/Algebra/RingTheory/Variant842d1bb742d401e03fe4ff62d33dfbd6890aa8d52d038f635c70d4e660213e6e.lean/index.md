# Verification target: GRWTSK.Algebra.Ring.Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e424a312a23a58cdeef65a4769b37c1e8290274",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e424a312a23a58cdeef65a4769b37c1e8290274`.

Source path: `GRWTSK/Algebra/Ring/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FreeCommRing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Colimit.DirectLimit` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SuppressCompilation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DirectLimit](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/directlimit--54138ce9156c14ebc6a7b4ed.md) | 46 | `declaration-track:54138ce9156c14ebc6a7b4ed43116231d57c6b1e59ca6079388fd91682e2f87d` |
| 2 | `instance` | [commRing](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/commring--e5ac3c03265a27be5b69ea18.md) | 57 | `declaration-track:e5ac3c03265a27be5b69ea187a2fbe81f82bb9b2be5800d94a1d0a3a3956b9aa` |
| 3 | `instance` | [ring](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/ring--a2d87c971bd1ad6cc25aa721.md) | 60 | `declaration-track:a2d87c971bd1ad6cc25aa7210608d8ce41c6d750ed7607912e668826c677dfd9` |
| 4 | `instance` | [zero](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/zero--1293054c6acc47fefb86f762.md) | 64 | `declaration-track:1293054c6acc47fefb86f76268627dee2edf01af5e8ab6820369d81d3b8a3b8e` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/instance--4a04b92c36c422020a752dfc.md) | 68 | `declaration-track:4a04b92c36c422020a752dfc37e134a20937377bd1bc8f46c0fe70a3731a68e4` |
| 6 | `def` | [of](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/of--ffe5e52493557cc64b15a73c.md) | 72 | `declaration-track:ffe5e52493557cc64b15a73c116da395557abbd173b5baab69c0119de274c45a` |
| 7 | `theorem` | [quotientMk_of](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/quotientmk-of--41f4ce20bfe0d8e22aa0638e.md) | 82 | `result-track:41f4ce20bfe0d8e22aa0638efbd48a658e744bc4f6d817665a81d67640a05f8c` |
| 8 | `theorem` | [of_f](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/of-f--7e536ad0b8df7101dd567ba4.md) | 85 | `result-track:7e536ad0b8df7101dd567ba4ad2ac54b72f648cba173bab692bc36e3eae9bfaf` |
| 9 | `theorem` | [exists_of](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/exists-of--58fdd7fa824cbf42e474852f.md) | 90 | `result-track:58fdd7fa824cbf42e474852f02144ac623da3f445c254954593d39188a504ddd` |
| 10 | `theorem` | [Polynomial.exists_of](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/polynomial-exists-of--2ce663542c2427e226499eb5.md) | 104 | `result-track:2ce663542c2427e226499eb5f0326b04f36ad4ffb80b96c592a134eb71bf2422` |
| 11 | `theorem` | [induction_on](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/induction-on--cc75125d37df2a57ecd1221e.md) | 123 | `result-track:cc75125d37df2a57ecd1221e2cc82dcbf0eb7cef37f8020c723143ed11cb9ed7` |
| 12 | `def` | [lift](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/lift--03fd3d95b7d6611f4c1da676.md) | 137 | `declaration-track:03fd3d95b7d6611f4c1da6762a6dee91fb1b489350b26bf3b842748e37d0e355` |
| 13 | `theorem` | [lift_of](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/lift-of--4bb7f4a6058dcae8089a361a.md) | 154 | `result-track:4bb7f4a6058dcae8089a361a299d2c171154bc2118bd4dee2217152adfa5b797` |
| 14 | `theorem` | [lift_unique](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/lift-unique--ad1a9f95baf791227cd1f0ac.md) | 157 | `result-track:ad1a9f95baf791227cd1f0acebf8e4a9f5acb15ffbc443214d137469e44827d1` |
| 15 | `lemma` | [lift_injective](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/lift-injective--c0f6ef56bd4c0dd7b259d468.md) | 163 | `result-track:c0f6ef56bd4c0dd7b259d468412e4a0dfbb96a8efbfe5ce8044dde868b87424e` |
| 16 | `def` | [ringEquiv](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/ringequiv--29e72f18431e6915f84fa0dd.md) | 180 | `declaration-track:29e72f18431e6915f84fa0dd0b0c63e17d679027dcdd10c3337fe494e847ca12` |
| 17 | `theorem` | [ringEquiv_of](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/ringequiv-of--6c4e33af26f06bf40aca3c75.md) | 186 | `result-track:6c4e33af26f06bf40aca3c75830fec1b1639f1c232961f9c461274673ff5373f` |
| 18 | `theorem` | [ringEquiv_symm_mk](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/ringequiv-symm-mk--d01b0ecd50ea71f8e8aba6c7.md) | 189 | `result-track:d01b0ecd50ea71f8e8aba6c7fd1ba3746a4d958499e0e85b74c8b679c2fa5f1f` |
| 19 | `theorem` | [of.zero_exact](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/of-zero-exact--9cd8f33cdba80391d22e14e7.md) | 194 | `result-track:9cd8f33cdba80391d22e14e78eb37cf828849e47582c6a519a4dda2e5a8d46a0` |
| 20 | `theorem` | [of_injective](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/of-injective--3e90e4416edc24fb2cedee09.md) | 206 | `result-track:3e90e4416edc24fb2cedee0971b72ba006e0d91a1a620e85245e998e6cd49b28` |
| 21 | `def` | [map](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/map--0fce7cbee4c709626e9befd1.md) | 226 | `declaration-track:0fce7cbee4c709626e9befd18a158fa69cf5f971f078412a2d6c7ab015e4f51c` |
| 22 | `lemma` | [map_apply_of](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/map-apply-of--8a25d02c2882a61fd5ed297c.md) | 234 | `result-track:8a25d02c2882a61fd5ed297c9ffab8c1d95df7c46206a1758f144f106b93b0c8` |
| 23 | `lemma` | [map_id](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/map-id--6179b25ec7a5fe9b66efffb1.md) | 240 | `result-track:6179b25ec7a5fe9b66efffb17326c1069ed4ad5dbf2cbbcd914343253b28e5ac` |
| 24 | `lemma` | [map_comp](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/map-comp--9ce72a08c81b7ec493f82a31.md) | 247 | `result-track:9ce72a08c81b7ec493f82a31d0210d384525e33577a37d6c8e05251d0f391c8e` |
| 25 | `def` | [congr](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/congr--76900c5c1ffd3d7204252124.md) | 267 | `declaration-track:76900c5c1ffd3d7204252124d0626d88fdbb71a8860f04b290ab1ce8763d5004` |
| 26 | `lemma` | [congr_apply_of](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/congr-apply-of--962e65abb24aa94c16118562.md) | 279 | `result-track:962e65abb24aa94c161185621cbf44e1f23335d427ead064638b7903a878e305` |
| 27 | `lemma` | [congr_symm_apply_of](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/congr-symm-apply-of--a650c9e334fd3e893e2570fd.md) | 285 | `result-track:a650c9e334fd3e893e2570fded0e502efc8d1afaa2a29ed53e2f061c8110fd50` |
| 28 | `instance` | [nontrivial](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/nontrivial--afa1cb78012612f9a0cd9391.md) | 307 | `declaration-track:afa1cb78012612f9a0cd939103e75ca23bba61581de16e495492cd17cef33d2a` |
| 29 | `theorem` | [exists_inv](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/exists-inv--a1c05daf7407cd0233794160.md) | 317 | `result-track:a1c05daf7407cd0233794160093def45702e5ce6067420bdf22df550e929b6a6` |
| 30 | `def` | [inv](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/inv--1bfd20384aaa389cafdf62e0.md) | 329 | `declaration-track:1bfd20384aaa389cafdf62e09be700a2fccccf4f9f8f5491ef131889bf287751` |
| 31 | `theorem` | [mul_inv_cancel](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/mul-inv-cancel--9d0340292db5ad7a1c8228ca.md) | 332 | `result-track:9d0340292db5ad7a1c8228ca9768005dacc16f98dfa769b95928f472696aaa3d` |
| 32 | `theorem` | [inv_mul_cancel](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/inv-mul-cancel--3fbf1953244907409f86203e.md) | 335 | `result-track:3fbf1953244907409f86203e19ea304a02e74dd47337e2f6523c46e05ccfc6b4` |
| 33 | `abbrev` | [field](../../../../mathematics/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/declarations/field--3bd5322f549a600356cef56e.md) | 340 | `declaration-track:3bd5322f549a600356cef56ed96e3ab1376f577c5ebb835e5b114d1a88d2a6cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
