# Verification target: GRWTSK.Algebra.Finite.Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d9bd5728d8060acedbe1e042af8428b59008fcc",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d9bd5728d8060acedbe1e042af8428b59008fcc`.

Source path: `GRWTSK/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normBound](../../../../mathematics/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/declarations/normbound--c389a2191da4f374194fb4c8.md) | 48 | `declaration-track:c389a2191da4f374194fb4c8e08089a5664ce8fdd14a5f8eda26b173938f0a77` |
| 2 | `theorem` | [normBound_pos](../../../../mathematics/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/declarations/normbound-pos--2a18b4a4e7c8455a0fc8eb3d.md) | 58 | `result-track:2a18b4a4e7c8455a0fc8eb3d54516f6518313a7d8841bebbd4716140c47ce44f` |
| 3 | `theorem` | [norm_le](../../../../mathematics/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/declarations/norm-le--9ef0b034196083403e2862fc.md) | 75 | `result-track:9ef0b034196083403e2862fcd5b4b96a388b537547d9dca3693f8afe41b3ef4c` |
| 4 | `theorem` | [norm_lt](../../../../mathematics/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/declarations/norm-lt--9325c3fe8dad7f057d58ca57.md) | 89 | `result-track:9325c3fe8dad7f057d58ca573ee8bad651cc2045cfaf36b9720ab13f0211ba70` |
| 5 | `theorem` | [exists_min](../../../../mathematics/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/declarations/exists-min--1d4a1647821b244fa8bcfc52.md) | 117 | `result-track:1d4a1647821b244fa8bcfc52749d1683b507706b58040d4930be887cef61aac3` |
| 6 | `def` | [cardM](../../../../mathematics/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/declarations/cardm--0f96c1b3da25e742a6105a2d.md) | 147 | `declaration-track:0f96c1b3da25e742a6105a2d72d55aa972d1cb1aa7beeaa8d2fdfc56d923fcca` |
| 7 | `def` | [distinctElems](../../../../mathematics/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/declarations/distinctelems--380c023d8e3b7f2ba2e0ecea.md) | 153 | `declaration-track:380c023d8e3b7f2ba2e0ecea5d0e454b6fcde64381ec1142a39ad1582eb6b59f` |
| 8 | `def` | [finsetApprox](../../../../mathematics/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/declarations/finsetapprox--28ab883dbb582decbb41b4a4.md) | 160 | `declaration-track:28ab883dbb582decbb41b4a4d5dbadf4710f80137ec26502630a4ec87371387b` |
| 9 | `theorem` | [finsetApprox.zero_notMem](../../../../mathematics/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/declarations/finsetapprox-zero-notmem--56e24a058e5c4e753c2526d6.md) | 164 | `result-track:56e24a058e5c4e753c2526d6f55a6dd734672409f417514eecd94d7ee53a2d0e` |
| 10 | `theorem` | [mem_finsetApprox](../../../../mathematics/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/declarations/mem-finsetapprox--9582d4c0438119be2e5bce94.md) | 168 | `result-track:9582d4c0438119be2e5bce94c6e8d59cb8a1ae5a476b0dc8d26ff277ca8b871e` |
| 11 | `theorem` | [exists_mem_finsetApprox](../../../../mathematics/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/declarations/exists-mem-finsetapprox--4258a9c15403b798b2c5ad8b.md) | 190 | `result-track:4258a9c15403b798b2c5ad8bcc79a4bbda3737213d711d6cf54a58bd262db969` |
| 12 | `theorem` | [exists_mem_finset_approx'](../../../../mathematics/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/declarations/exists-mem-finset-approx--61f4af2abac372a36001584a.md) | 242 | `result-track:61f4af2abac372a36001584a06bbf6257723dab9e42f8f27e07e09bf106575cb` |
| 13 | `theorem` | [prod_finsetApprox_ne_zero](../../../../mathematics/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/declarations/prod-finsetapprox-ne-zero--a925bae44a68d16571372d45.md) | 260 | `result-track:a925bae44a68d16571372d45a17e4872407faa8c08e2b95b8bf6365ebf7a838b` |
| 14 | `theorem` | [ne_bot_of_prod_finsetApprox_mem](../../../../mathematics/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/declarations/ne-bot-of-prod-finsetapprox-mem--94c96dd53e9de596dc88e9fb.md) | 266 | `result-track:94c96dd53e9de596dc88e9fb823b630ca586aeeb54422764986d8aafd39da726` |
| 15 | `theorem` | [exists_mk0_eq_mk0](../../../../mathematics/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/declarations/exists-mk0-eq-mk0--8c82e7f877a4855a28ae7247.md) | 274 | `result-track:8c82e7f877a4855a28ae7247dc4b80679b78433d5c152c7de00252202955d538` |
| 16 | `def` | [mkMMem](../../../../mathematics/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/declarations/mkmmem--ad37892636e236b51f55d21f.md) | 311 | `declaration-track:ad37892636e236b51f55d21ffac9875dc46c4753f8f600513397c8e88be3adc9` |
| 17 | `theorem` | [mkMMem_surjective](../../../../mathematics/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/declarations/mkmmem-surjective--98f669f255d5cb9be46f4a18.md) | 316 | `result-track:98f669f255d5cb9be46f4a18d8edfc0911f4444b2b4577322a96890746841a5d` |
| 18 | `def` | [fintypeOfAdmissibleOfAlgebraic](../../../../mathematics/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/declarations/fintypeofadmissibleofalgebraic--ba298c5b88c847501cdd6e3f.md) | 331 | `declaration-track:ba298c5b88c847501cdd6e3f8cf0e5f144c4854181923f82226bddaa8b97360c` |
| 19 | `def` | [fintypeOfAdmissibleOfFinite](../../../../mathematics/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/declarations/fintypeofadmissibleoffinite--168ab0961f51c0eaf1db72b6.md) | 353 | `declaration-track:168ab0961f51c0eaf1db72b66d08148f95efb5765aaf99a65a3bf1df30fad988` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
