# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Hamiltonian.Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc83610a89aae3f8def8f10ecc71713ec4a7b066",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc83610a89aae3f8def8f10ecc71713ec4a7b066`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Connectivity.EdgeConnectivity` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHamiltonian](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian--6309c335485af2fc088fe646.md) | 46 | `declaration-track:6309c335485af2fc088fe6464ac0f612259523317bde8bb4bbd59cc912caf1f9` |
| 2 | `lemma` | [IsHamiltonian.map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-map--f633ae04a2f751b568a43394.md) | 49 | `result-track:f633ae04a2f751b568a433945793a5de66f6373b1f1d53889d621423bbfef464` |
| 3 | `lemma` | [IsHamiltonian.mem_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-mem-support--c818deeec433ce6dcf4b24b2.md) | 54 | `result-track:c818deeec433ce6dcf4b24b24b2eb6e4ad04a1942d6e4adda2e74722b69482d9` |
| 4 | `lemma` | [IsHamiltonian.isPath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-ispath--052530474e6fcd8df6b50b64.md) | 58 | `result-track:052530474e6fcd8df6b50b64f9f42eefb6ae71f05dc5448dc2878a8d18c3eebd` |
| 5 | `lemma` | [IsPath.isHamiltonian_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ispath-ishamiltonian-of-mem--5c63d0a5634cde5ad4ed6d63.md) | 62 | `result-track:5c63d0a5634cde5ad4ed6d63105a397aecbd87fa2873ea9466dcc6e8e47075a2` |
| 6 | `lemma` | [IsPath.isHamiltonian_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ispath-ishamiltonian-iff--9f7708d411eb9c85a14c3ce7.md) | 66 | `result-track:9f7708d411eb9c85a14c3ce7bea792deb86def19458511632cae4c22c1daec52` |
| 7 | `theorem` | [IsHamiltonian.of_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-of-subsingleton--c1dff69a8d746b3e943e670d.md) | 69 | `result-track:c1dff69a8d746b3e943e670dae5064d31f12972f20fe8ea5f05e9bf328fbb942` |
| 8 | `def` | [IsHamiltonian.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-fintype--df5e2b5690dc26bb36bb9d98.md) | 75 | `declaration-track:df5e2b5690dc26bb36bb9d98cb0282ed3b77a4ab34cf576721de0d98bafd6e7b` |
| 9 | `lemma` | [IsHamiltonian.finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-finite--5d5f49e4e013e8713005ff0e.md) | 80 | `result-track:5d5f49e4e013e8713005ff0effb1c7b6d8ee0dc7792579d61531e0d5269833d7` |
| 10 | `lemma` | [not_isHamiltonian_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/not-ishamiltonian-of-infinite--e1c0a0285c270f5291e42be5.md) | 83 | `result-track:e1c0a0285c270f5291e42be52e4d39dab5ef12a50cdd23e26a7c6dfb88630261` |
| 11 | `lemma` | [IsHamiltonian.toFinset_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-tofinset-support--cba011852156e83317db3134.md) | 90 | `result-track:cba011852156e83317db31343a1c2112942abf662336a51a68b5544460034556` |
| 12 | `theorem` | [IsHamiltonian.setOfPred_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-setofpred-support--6fc153383a44f6fd9ed0ed8c.md) | 97 | `result-track:6fc153383a44f6fd9ed0ed8c8131108f66e21fdc13a47f9ac30c2774380d00b8` |
| 13 | `lemma` | [IsHamiltonian.length_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-length-eq--a1357f53f16b818b01c56bb9.md) | 104 | `result-track:a1357f53f16b818b01c56bb99a24a709c8f5a6904cb3f9c2763678977a2a177f` |
| 14 | `lemma` | [IsHamiltonian.length_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-length-support--9bc9c3b55f9cc62503269d37.md) | 110 | `result-track:9bc9c3b55f9cc62503269d378e284d28ab07e8cffe77d2313fd050ce26d19949` |
| 15 | `def` | [IsHamiltonian.supportGetEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-supportgetequiv--1e63d6a00757d00596032d44.md) | 119 | `declaration-track:1e63d6a00757d00596032d44dc19cdd7bfa63693afbf29ad39816b508f8d324f` |
| 16 | `def` | [IsHamiltonian.getVertEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-getvertequiv--e9c3156b859d0eba968a0f32.md) | 125 | `declaration-track:e9c3156b859d0eba968a0f32b3270570dead504350a1c8b1dc8e7192636d5d59` |
| 17 | `theorem` | [isHamiltonian_iff_support_get_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-iff-support-get-bijective--9c16ace5e7710dd6a19c1f66.md) | 131 | `result-track:9c16ace5e7710dd6a19c1f66396da408d6d1164b5f2e62ca884e3e9f15bdd598` |
| 18 | `theorem` | [IsHamiltonian.getVert_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-getvert-surjective--c11be6cf4f61eca9195006af.md) | 134 | `result-track:c11be6cf4f61eca9195006afa1e6d2f6b4289868be42c89fd3304356f3720047` |
| 19 | `theorem` | [IsHamiltonian.injective_of_isPath_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-injective-of-ispath-map--45e9985ffa03219167a21580.md) | 139 | `result-track:45e9985ffa03219167a21580e0c21d30401031f48c68bae7c7ded75d8cc24b68` |
| 20 | `lemma` | [isHamiltonian_iff_isPath_and_length_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-iff-ispath-and-length-eq--9b7cc832341668a3d19d03f4.md) | 144 | `result-track:9b7cc832341668a3d19d03f48e7c2247ecd4d55617d0d625bb219f6c15fc2915` |
| 21 | `theorem` | [isHamiltonian_transfer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-transfer--3186e9b171decd4da324e8da.md) | 155 | `result-track:3186e9b171decd4da324e8da1b28a05d05fd82e55e21e6eeda0fa6db1924e49c` |
| 22 | `structure` | [IsHamiltonianCycle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltoniancycle--703d7aa6354b08007e43b134.md) | 163 | `declaration-track:703d7aa6354b08007e43b134d8529a204d2e49e3a67dfb9bb60f31ee8f779088` |
| 23 | `lemma` | [IsHamiltonianCycle.isCycle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltoniancycle-iscycle--6e6ea78fc8d1ac534d4ee624.md) | 168 | `result-track:6e6ea78fc8d1ac534d4ee6246a82405d60ff776e0ef25ef8733c22240804bb63` |
| 24 | `lemma` | [IsHamiltonianCycle.map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltoniancycle-map--4c76b2aa690d0c95fb8de8b9.md) | 171 | `result-track:4c76b2aa690d0c95fb8de8b931f18a3d020e9a64e83ffb561e605eb8077e23a0` |
| 25 | `lemma` | [IsHamiltonianCycle.finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltoniancycle-finite--2167618ee098d4e72679fc30.md) | 184 | `result-track:2167618ee098d4e72679fc303c2bb6c13a93b303f4c95c129a08c83e652ab351` |
| 26 | `lemma` | [not_isHamiltonianCycle_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/not-ishamiltoniancycle-of-infinite--7e681037457ae5f1552a499e.md) | 187 | `result-track:7e681037457ae5f1552a499e1273e47e83e6531c5281e071edb0deca7a65111e` |
| 27 | `lemma` | [isHamiltonianCycle_isCycle_and_isHamiltonian_tail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltoniancycle-iscycle-and-ishamiltonian-tail--4fe4acf2abf9c60ec81de12e.md) | 190 | `result-track:4fe4acf2abf9c60ec81de12e3a8711828fc48e48c22dd7c2d8856f803c733dba` |
| 28 | `lemma` | [isHamiltonianCycle_iff_isCycle_and_support_count_tail_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltoniancycle-iff-iscycle-and-support-count-tail-eq-one--61e09be2612c60466e90d7ce.md) | 194 | `result-track:61e09be2612c60466e90d7cec418a0bd69af66309324a67de7e81bb995073d5c` |
| 29 | `lemma` | [IsHamiltonianCycle.mem_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltoniancycle-mem-support--3bad4665f092295ccc80453f.md) | 200 | `result-track:3bad4665f092295ccc80453fde89fc478eef8eca33c3d2ab2e7b3b77270804b0` |
| 30 | `lemma` | [IsHamiltonianCycle.length_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltoniancycle-length-eq--0e0e6b9a1573488c013e5eaa.md) | 206 | `result-track:0e0e6b9a1573488c013e5eaaadddaefe2d89aa4535ae9023febf4018814dd636` |
| 31 | `lemma` | [IsHamiltonianCycle.count_support_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltoniancycle-count-support-self--ce21715d3e5d14c6b6972b0a.md) | 212 | `result-track:ce21715d3e5d14c6b6972b0af2a35379a8420bbe662ef60206c07777da4098c7` |
| 32 | `lemma` | [IsHamiltonianCycle.support_count_of_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltoniancycle-support-count-of-ne--4fc16e67ff7cd6456a790ffd.md) | 217 | `result-track:4fc16e67ff7cd6456a790ffd3ddb40c64c44958f64806957c64d9e569944b030` |
| 33 | `lemma` | [isHamiltonianCycle_iff_isCycle_and_length_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltoniancycle-iff-iscycle-and-length-eq--71a0e2f8f98b40e8e3775619.md) | 221 | `result-track:71a0e2f8f98b40e8e3775619c0925d32b0b43add594f9c557a24a5a9909ceb80` |
| 34 | `lemma` | [isHamiltonianCycle_rotate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltoniancycle-rotate--beed9cc0c36d402d15d0d426.md) | 228 | `result-track:beed9cc0c36d402d15d0d42692b120d3168daeb4d76605519aee6f99c8e49939` |
| 35 | `theorem` | [isHamiltonianCycle_transfer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltoniancycle-transfer--a5360c4d58d3274e9f3916fc.md) | 239 | `result-track:a5360c4d58d3274e9f3916fc8d37cc468328082af064c59ae0f86e72bc18473e` |
| 36 | `def` | [IsHamiltonian](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian--4aea99aa1ba4091958928304.md) | 256 | `declaration-track:4aea99aa1ba4091958928304862387f9ed6f65c4c8c2e904b6e21be0be8faa42` |
| 37 | `lemma` | [IsHamiltonian.exists_isHamiltonianCycle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-exists-ishamiltoniancycle--98ad5149dbcbd03b75932c45.md) | 259 | `result-track:98ad5149dbcbd03b75932c45bc15ac370e77cf3a391740deed65cb5d7991af33` |
| 38 | `lemma` | [IsHamiltonian.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-mono--77e6e72d2fe3b4a151a6d5d7.md) | 263 | `result-track:77e6e72d2fe3b4a151a6d5d7390fc79e59f8f2392c70b8c2ff020d58d4ed1415` |
| 39 | `lemma` | [not_isHamiltonian_of_isEmpty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/not-ishamiltonian-of-isempty--02a6d12a08307233204f744b.md) | 267 | `result-track:02a6d12a08307233204f744b3bb480e8583356332093d5904f645b4f8b2cdb3b` |
| 40 | `lemma` | [IsHamiltonian.connected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-connected--c03df02ba41ca9f1bb7b5efb.md) | 270 | `result-track:c03df02ba41ca9f1bb7b5efba186a5aaf884a1f13b38710873995f999780f671` |
| 41 | `lemma` | [IsHamiltonian.of_card_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-of-card-eq-one--736cdab7e659fa7e8d9cedbb.md) | 281 | `result-track:736cdab7e659fa7e8d9cedbbe337c85d28fbaa6ba809dadc13f2b041decb20c1` |
| 42 | `lemma` | [not_isHamiltonian_of_card_eq_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/not-ishamiltonian-of-card-eq-two--ac48327e36cd3b5087cacbb0.md) | 284 | `result-track:ac48327e36cd3b5087cacbb048603db421586c0d94aa7429e4545d518c3e8399` |
| 43 | `lemma` | [not_isHamiltonian_bot_of_card_ne_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/not-ishamiltonian-bot-of-card-ne-one--e78fa2085df276907295730e.md) | 290 | `result-track:e78fa2085df276907295730eb46323d5348eff41814ce039d587d736c19df779` |
| 44 | `lemma` | [IsHamiltonian.of_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/ishamiltonian-of-unique--4801aba0cb6cc84148e1a1c7.md) | 296 | `result-track:4801aba0cb6cc84148e1a1c7d37bfff257c54d63115427aec82134731f64a640` |
| 45 | `theorem` | [IsBridge.not_isHamiltonian](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/declarations/isbridge-not-ishamiltonian--1f5c9d4648c22201ee018cd6.md) | 300 | `result-track:1f5c9d4648c22201ee018cd62b0e919eb4d34988786b22febe57549098b76158` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
