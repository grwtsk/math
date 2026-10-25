# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Peel.Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6139a947686426ee58ff5cf3e6f4d6c54b05a205",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6139a947686426ee58ff5cf3e6f4d6c54b05a205`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/declarations/syntax--d349c66c089e44dfbe5e238b.md) | 83 | `declaration-track:d349c66c089e44dfbe5e238b7410cff083183bfa8901416d34723b8af8cc3467` |
| 2 | `lemma` | [and_imp_left_of_imp_imp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/declarations/and-imp-left-of-imp-imp--b611a4036ab968f617279d78.md) | 87 | `result-track:b611a4036ab968f617279d7807c99b643e95b579b5e8202a76afd400d4e8439a` |
| 3 | `theorem` | [eventually_imp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/declarations/eventually-imp--93d9d248cc54381c792af2e3.md) | 89 | `result-track:93d9d248cc54381c792af2e33e2178e134743c30573314494ae3272e79f62735` |
| 4 | `theorem` | [frequently_imp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/declarations/frequently-imp--5330a98b66c281d494f8a735.md) | 93 | `result-track:5330a98b66c281d494f8a73571824edb625f39b60639a62e58a3c3c3554015d0` |
| 5 | `theorem` | [eventually_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/declarations/eventually-congr--11037ce0808b8280a372fe06.md) | 97 | `result-track:11037ce0808b8280a372fe061ddfee57699c7a233f61681134b1069e4e158493` |
| 6 | `theorem` | [frequently_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/declarations/frequently-congr--ab0bdc470c15d76e89b48433.md) | 101 | `result-track:ab0bdc470c15d76e89b48433f7062755ab2081ba953c1e2e7f73f018f1e87d2b` |
| 7 | `def` | [quantifiers](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/declarations/quantifiers--6471b626d0db2e69d9a117c3.md) | 106 | `declaration-track:6471b626d0db2e69d9a117c3b074d083f84b5aec55e8514819f5c644300759c8` |
| 8 | `def` | [whnfQuantifier](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/declarations/whnfquantifier--8066a29d0fa7cf8ddc26c2f3.md) | 111 | `declaration-track:8066a29d0fa7cf8ddc26c2f304434d61f43a64c5b5836afc11459ec3549ff56d` |
| 9 | `def` | [throwPeelError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/declarations/throwpeelerror--9ba9f37fc2971b3bad8666b8.md) | 122 | `declaration-track:9ba9f37fc2971b3bad8666b8f5e709a455265d9ff61d7647c2c9540ab9bf3eff` |
| 10 | `def` | [mkFreshBinderName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/declarations/mkfreshbindername--6933f5a3a10037b31608918c.md) | 127 | `declaration-track:6933f5a3a10037b31608918c5785cb5ff5b10516e7df71f85944c284a08fdf09` |
| 11 | `def` | [applyPeelThm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/declarations/applypeelthm--c996e43c7d0622838a378320.md) | 136 | `declaration-track:c996e43c7d0622838a3783204d069cd6674438f1012fd0fda7348f62f5fdf37d` |
| 12 | `def` | [peelCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/declarations/peelcore--b03727d2a3833953b3c2c53d.md) | 152 | `declaration-track:b03727d2a3833953b3c2c53df168b4b1a0280f29a50435ade70847871d6b9030` |
| 13 | `def` | [peelArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/declarations/peelargs--f88aabcde531c8f3a530977f.md) | 178 | `declaration-track:f88aabcde531c8f3a530977ffd6e69ff99e5aac207582943fb886896f56f9afe` |
| 14 | `def` | [peelUnbounded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/declarations/peelunbounded--dcf142c050e11e37baf18ce0.md) | 191 | `declaration-track:dcf142c050e11e37baf18ce06cdf2ff33eb8153b1e3606854a2a4b71c7a7cd71` |
| 15 | `def` | [peelIffAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/declarations/peeliffaux--38be9b980fd6251c239efed4.md) | 204 | `declaration-track:38be9b980fd6251c239efed444fb3c40af0e87f26921f1e55f5aaaee32b026c1` |
| 16 | `def` | [peelArgsIff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/declarations/peelargsiff--1b6dd06956661cbd51669838.md) | 215 | `declaration-track:1b6dd06956661cbd516698385107623a26ff5bea332b1ce71176b40981edf430` |
| 17 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/declarations/elab-rules--d9743e3bac6d3b61d4a434c5.md) | 225 | `declaration-track:d9743e3bac6d3b61d4a434c5e0eed64866b13752a2a15a9b83ca43dfcc69075e` |
| 18 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variant06bc03ea28579ffc66fa22954d33526bdd7b6b2bec20e5b3cc5b315ba13bb092.lean/declarations/macro-rules--14ea9600ecd7e6a523014750.md) | 243 | `declaration-track:14ea9600ecd7e6a5230147507c0bc0388312b958f5985eb83aeb57e90046c2b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
