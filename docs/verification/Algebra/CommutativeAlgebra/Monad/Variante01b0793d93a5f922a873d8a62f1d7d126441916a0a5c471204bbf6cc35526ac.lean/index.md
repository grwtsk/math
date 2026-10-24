# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Monad.Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54b0a0bca9480ead2161e5fc58ab0de4cccdb96a",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54b0a0bca9480ead2161e5fc58ab0de4cccdb96a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Rename` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Variables` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/bind--d5177e41d9267cdcca4a5224.md) | 72 | `declaration-track:d5177e41d9267cdcca4a52247b27918fed7b64b0a458aa982efd920ff9269a88` |
| 2 | `def` | [bind₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/bind--f97531d47ea219003e369003.md) | 83 | `declaration-track:f97531d47ea219003e3690032ebdb4617d35a4407ba0ee1939db3aa7c0b5b449` |
| 3 | `def` | [join₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/join--9d200e34aa04bf660e854086.md) | 92 | `declaration-track:9d200e34aa04bf660e8540862f37c7bb959510c23e9b6b4d55f6884cb138c5a2` |
| 4 | `def` | [join₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/join--20fd4fc785478608751ad3cc.md) | 101 | `declaration-track:20fd4fc785478608751ad3cc3cbe02b669a77b32e6371c39adb4d2d17d85fc9f` |
| 5 | `theorem` | [aeval_eq_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/aeval-eq-bind--8588e63b0c62c1791b7015c0.md) | 105 | `result-track:8588e63b0c62c1791b7015c05982348c4c4273fa6dc892a1c17f58619934f57c` |
| 6 | `theorem` | [eval₂Hom_C_eq_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/eval-hom-c-eq-bind--b9383124d6643d4ed07378fa.md) | 109 | `result-track:b9383124d6643d4ed07378fa870bd59ae6a2b6b1dffa8152c19d8b82116d7024` |
| 7 | `theorem` | [eval₂Hom_eq_bind₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/eval-hom-eq-bind--53dbb36829fb674a2f020a03.md) | 113 | `result-track:53dbb36829fb674a2f020a030242b1beca0610d2c64dcf6e4889e26870b5618d` |
| 8 | `theorem` | [aeval_id_eq_join₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/aeval-id-eq-join--086d25cb53c16b41f7ca7534.md) | 121 | `result-track:086d25cb53c16b41f7ca753471388039627b5669f90f98ca9eeb48753b08f117` |
| 9 | `theorem` | [eval₂Hom_C_id_eq_join₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/eval-hom-c-id-eq-join--63bb94ef0159de86f462f9e3.md) | 124 | `result-track:63bb94ef0159de86f462f9e36a60af73f22f9880fa785cc37fb69ec5463dae97` |
| 10 | `theorem` | [eval₂Hom_id_X_eq_join₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/eval-hom-id-x-eq-join--579e3eb64fb31d7a024c08a1.md) | 129 | `result-track:579e3eb64fb31d7a024c08a184cb81e1fdaa4a64a9f6ac347f319e5abf9a71ed` |
| 11 | `theorem` | [bind₁_X_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/bind-x-right--1711509e6f515d188ee2eb8d.md) | 141 | `result-track:1711509e6f515d188ee2eb8d56d144eb32e4a9c3f6fe2f1f47206d53e2fbc4cf` |
| 12 | `theorem` | [bind₂_X_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/bind-x-right--df2cdecaf81f45ea3b0636a0.md) | 145 | `result-track:df2cdecaf81f45ea3b0636a0c2e1d6ecff573d066004708575c83df0bddfabb0` |
| 13 | `theorem` | [bind₁_X_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/bind-x-left--9fc163391417b0016d074f8a.md) | 149 | `result-track:9fc163391417b0016d074f8a6fe6398b0808a83149fc56059c812c95f16efabb` |
| 14 | `theorem` | [bind₁_C_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/bind-c-right--aaa042ee07a2888c449639ec.md) | 155 | `result-track:aaa042ee07a2888c449639ec777e96cf53e8f53eab7de747807315b011ae432e` |
| 15 | `theorem` | [bind₂_C_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/bind-c-right--6c49c687cd4fbff9dd8e4da2.md) | 158 | `result-track:6c49c687cd4fbff9dd8e4da2e574f071bc2eedf43abd8c69eaff68ea68b17be2` |
| 16 | `theorem` | [bind₂_C_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/bind-c-left--08acefa868402c0b7dd18c5f.md) | 162 | `result-track:08acefa868402c0b7dd18c5f82f8bc3dad7df798f8f44a80ca203cbe7ca963d0` |
| 17 | `theorem` | [bind₂_comp_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/bind-comp-c--d7a823fd68a4720d22cca2ed.md) | 165 | `result-track:d7a823fd68a4720d22cca2ed41bd6a10a84c54562213e62659d2a4108dd42d23` |
| 18 | `theorem` | [join₂_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/join-map--9d924f90335fd8de40dae8e8.md) | 169 | `result-track:9d924f90335fd8de40dae8e896adcf3b51ffaf935ce836916b5a54bd07c44769` |
| 19 | `theorem` | [join₂_comp_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/join-comp-map--b5a3005bbaae5ef83f50f21b.md) | 173 | `result-track:b5a3005bbaae5ef83f50f21b78c4506dfd4ab13267bfe9470cffd8aa58e25c0d` |
| 20 | `theorem` | [aeval_id_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/aeval-id-rename--39ce71c7abea146fb56660e3.md) | 176 | `result-track:39ce71c7abea146fb56660e3cae743ec9683386c5600f73dd5ef39533e783e2f` |
| 21 | `theorem` | [join₁_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/join-rename--2c0e1659013cdf64c3aeb984.md) | 180 | `result-track:2c0e1659013cdf64c3aeb98407163536d14f6074709cc6e08b49dc5b64b011cf` |
| 22 | `theorem` | [bind₁_id](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/bind-id--04f1d308bd88dfa879022802.md) | 185 | `result-track:04f1d308bd88dfa8790228022c0fb9293b3fefb96c9cd0a09e288ddf6f431513` |
| 23 | `theorem` | [bind₂_id](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/bind-id--a69f2a89e7a2bd5805bffa85.md) | 189 | `result-track:a69f2a89e7a2bd5805bffa857ce75bec8f53210fbe646ff617430e9f72566271` |
| 24 | `theorem` | [bind₁_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/bind-bind--482be89be3f61fffea76cc9a.md) | 192 | `result-track:482be89be3f61fffea76cc9ae7d2de9df702259ae1d60aae89c910266d9e76c9` |
| 25 | `theorem` | [bind₁_comp_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/bind-comp-bind--c25957b5c0e47820626a5bfb.md) | 196 | `result-track:c25957b5c0e47820626a5bfb610efe2b2a0e268d1f11500e652749fc4744e576` |
| 26 | `theorem` | [bind₂_comp_bind₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/bind-comp-bind--7295f2ab872e9f216b040b7a.md) | 201 | `result-track:7295f2ab872e9f216b040b7af71877bdede8a701709673fc43717a9b2f040843` |
| 27 | `theorem` | [bind₂_bind₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/bind-bind--886b4accedb5210e5daf0acd.md) | 204 | `result-track:886b4accedb5210e5daf0acd8cafaae190c3fa58503dd88fa3952cb30a326764` |
| 28 | `theorem` | [rename_comp_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/rename-comp-bind--3342813de89b7445347fddb2.md) | 208 | `result-track:3342813de89b7445347fddb21432dac2fe56322e274aaa195c19377c2ff17c14` |
| 29 | `theorem` | [rename_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/rename-bind--c886e32cd8be05e97503e12e.md) | 213 | `result-track:c886e32cd8be05e97503e12e014172b9fb003305a07d0b10d49142e921c3405e` |
| 30 | `theorem` | [map_bind₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/map-bind--07b40941e288519d1814e1e4.md) | 217 | `result-track:07b40941e288519d1814e1e4168ed4f47b1655d875c2e9ce22575ed5dbf428e5` |
| 31 | `theorem` | [bind₁_comp_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/bind-comp-rename--cd3fceb002e6f1f46e986ae3.md) | 223 | `result-track:cd3fceb002e6f1f46e986ae348b86b165b41a5585c9c1577c34f9a7a39b298b9` |
| 32 | `theorem` | [bind₁_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/bind-rename--d56c3a52f959bbc174162a3a.md) | 228 | `result-track:d56c3a52f959bbc174162a3a014489c1421836c93010e4b65ee69fe82f35b9b4` |
| 33 | `theorem` | [bind₂_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/bind-map--52f60de54b8651ec7f2a9000.md) | 232 | `result-track:52f60de54b8651ec7f2a900037da2fa3bbfe07f98fcf86d71eecdfa262cd4bd0` |
| 34 | `theorem` | [map_comp_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/map-comp-c--ac5ec99a27e4f08a14eb0e2c.md) | 236 | `result-track:ac5ec99a27e4f08a14eb0e2c090d8119195bfd8a25ed07c3006f5eabdf01bc4f` |
| 35 | `theorem` | [hom_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/hom-bind--1b1de666cd39975271deef12.md) | 241 | `result-track:1b1de666cd39975271deef12bd8d5935ae31d953c9dfd32fb2936c2368d8022e` |
| 36 | `theorem` | [map_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/map-bind--98ff633ee1df1bdbe2e9b209.md) | 245 | `result-track:98ff633ee1df1bdbe2e9b209f0a6bb57ab12eb19ef198146d10638a76d419092` |
| 37 | `theorem` | [eval₂Hom_comp_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/eval-hom-comp-c--12dd7d9f43d4f3c5809b2e2c.md) | 251 | `result-track:12dd7d9f43d4f3c5809b2e2cf6af3da383d3a1f54b09ddfeaaf09327537a1666` |
| 38 | `theorem` | [eval₂Hom_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/eval-hom-bind--21dd612d42261a279cddf5e1.md) | 255 | `result-track:21dd612d42261a279cddf5e140f1234567c4d993f319f3372ecdba69a370e176` |
| 39 | `theorem` | [aeval_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/aeval-bind--b4ef63f7572476872b63cdbd.md) | 259 | `result-track:b4ef63f7572476872b63cdbdb902b97c56e9afdfbbb07bdcb13e82f4867b6180` |
| 40 | `theorem` | [aeval_comp_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/aeval-comp-bind--075cced1f8d73b1cb03f7608.md) | 263 | `result-track:075cced1f8d73b1cb03f7608bef70043eada93263f65662a62e2863d8a58e254` |
| 41 | `theorem` | [eval₂Hom_comp_bind₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/eval-hom-comp-bind--ae3608eb8df215766b1e03da.md) | 268 | `result-track:ae3608eb8df215766b1e03da5c400e5a7c0585bb6e5d20034587afaad352f354` |
| 42 | `theorem` | [eval₂Hom_bind₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/eval-hom-bind--f78004932c2a7a46ef7ff809.md) | 271 | `result-track:f78004932c2a7a46ef7ff8091dbfb938c5d6cd54771adc61221f791fdfe84011` |
| 43 | `theorem` | [aeval_bind₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/aeval-bind--5ee9927d4b9a04edab1821db.md) | 275 | `result-track:5ee9927d4b9a04edab1821dbb05245a21efbd6338cbce795a858e99aac2a4c9b` |
| 44 | `theorem` | [bind₁_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/bind-monomial--8ae302715ec53aa9392b27ac.md) | 281 | `result-track:8ae302715ec53aa9392b27ac9dcd8b62b754c00f0384f54aa44168b43c2d4fc5` |
| 45 | `theorem` | [bind₂_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/bind-monomial--371aa944f107cdcc5531d06c.md) | 286 | `result-track:371aa944f107cdcc5531d06c2c27e820486f11f3f53984156f03d239815ad485` |
| 46 | `theorem` | [bind₂_monomial_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/bind-monomial-one--0a591d29a42d149ae4f4f322.md) | 292 | `result-track:0a591d29a42d149ae4f4f322d6c4fae08d2b945f846fbdaea6f660615b6cf652` |
| 47 | `theorem` | [vars_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/vars-bind--78d94df73f723adbca069f51.md) | 297 | `result-track:78d94df73f723adbca069f51a15390287acf5138f99a3e0bae9f03e842df6234` |
| 48 | `theorem` | [mem_vars_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/mem-vars-bind--b6e0c700a51e68e05c0944d4.md) | 330 | `result-track:b6e0c700a51e68e05c0944d49a25b75e9023da6e4a942a3b5e1ac3a1b0a0d56f` |
| 49 | `instance` | [monad](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/monad--4bdca23918fc2db4560da1f1.md) | 335 | `declaration-track:4bdca23918fc2db4560da1f1e4b221c3e726b8d97a8de5b085eac3fc0834dc15` |
| 50 | `instance` | [lawfulFunctor](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/lawfulfunctor--44ad31e5f15fb1604f658966.md) | 340 | `declaration-track:44ad31e5f15fb1604f658966846edd4e1cc767462fc7dd50c230db5f646e4a44` |
| 51 | `instance` | [lawfulMonad](../../../../../mathematics/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean/declarations/lawfulmonad--1ce11694fe9fa9f340724289.md) | 346 | `declaration-track:1ce11694fe9fa9f34072428914b1ed52545471387bf6bcb485b82d44a52710af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
