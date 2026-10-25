# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulMonadState.Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42edda8f30b1560d466824191e2241f4279a7598",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42edda8f30b1560d466824191e2241f4279a7598`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [monadStateOf_get_eq_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/monadstateof-get-eq-get--ab16197324986ac1e16d6e6e.md) | 30 | `result-track:ab16197324986ac1e16d6e6e407812184c96e7aecbfb0d81cf530b365853a8ae` |
| 2 | `theorem` | [monadStateOf_modifyGet_eq_modifyGet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/monadstateof-modifyget-eq-modifyget--f25f1e1065bb6d0eb0d25d18.md) | 34 | `result-track:f25f1e1065bb6d0eb0d25d18dc2837ebe095ab33055c2e61d5ccc2c2210cc462` |
| 3 | `theorem` | [liftM_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/liftm-get--810d67c36bc755acf809cd65.md) | 37 | `result-track:810d67c36bc755acf809cd650dc7e4dcf2210818e1e734aa5161a0c1e13d7691` |
| 4 | `theorem` | [liftM_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/liftm-set--7c6a0c61a4e8fa91b256788e.md) | 40 | `result-track:7c6a0c61a4e8fa91b256788e6fa3c3de83211b5975ec87b85b0a9490049fb852` |
| 5 | `theorem` | [liftM_modify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/liftm-modify--19279cdf0712bccc267e5d75.md) | 43 | `result-track:19279cdf0712bccc267e5d75f8428ae23fd0640015c2c4c307e885358e7fba3b` |
| 6 | `theorem` | [liftM_modifyGet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/liftm-modifyget--141b68e2713b76183047d5a8.md) | 46 | `result-track:141b68e2713b76183047d5a87b5a90d75a8e43bc77b4dd5554c90e9b3cb3183c` |
| 7 | `theorem` | [liftM_getModify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/liftm-getmodify--f4aa19528b585d205a269b73.md) | 49 | `result-track:f4aa19528b585d205a269b73373882876d654b0affb16e12a082394241d425fe` |
| 8 | `class` | [LawfulMonadStateOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/lawfulmonadstateof--a644e40575da315f6218841f.md) | 56 | `declaration-track:a644e40575da315f6218841f1b6f32af5d61d55f10d67daa5cc84e1c238510a0` |
| 9 | `theorem` | [get_seqRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/get-seqright--da98e903961ba7e435478762.md) | 81 | `result-track:da98e903961ba7e4354787626194d67c03a2ad5296dbfebfdf74e017cf4a8197` |
| 10 | `theorem` | [seqLeft_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/seqleft-get--4ddf492ca85a0f8d26494278.md) | 84 | `result-track:4ddf492ca85a0f8d264942788860db389762183e922fd76bc3363ce0ccc44d8c` |
| 11 | `theorem` | [get_map_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/get-map-const--c763e3b4ac6bab9f24f06a3e.md) | 87 | `result-track:c763e3b4ac6bab9f24f06a3e424abc62bb8ca88cd03d7741205c6f5b5eb01c0b` |
| 12 | `theorem` | [get_bind_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/get-bind-get--3e216f9665436b5ab5ae94c0.md) | 91 | `result-track:3e216f9665436b5ab5ae94c07003f01b543b9ae328405d8e85e60791e5378a37` |
| 13 | `theorem` | [get_bind_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/get-bind-set--2c7dec2767f3f7fcf8eb7b26.md) | 93 | `result-track:2c7dec2767f3f7fcf8eb7b269a7b494adfbb667e2072c0f73ee90b7491b6cab5` |
| 14 | `theorem` | [get_bind_map_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/get-bind-map-set--7f0d17a3f773e0c8d1aa3bef.md) | 98 | `result-track:7f0d17a3f773e0c8d1aa3befd96792960061983cefc3bb7eca637d1cedbbee2a` |
| 15 | `theorem` | [set_bind_get_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/set-bind-get-bind--a5ffa2df15660b4e88f90c22.md) | 102 | `result-track:a5ffa2df15660b4e88f90c220c76fa302ba609fe681c9f85fe28be43a72ee3a8` |
| 16 | `theorem` | [set_bind_map_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/set-bind-map-get--aa3bd3dbff8a4a190114ab96.md) | 106 | `result-track:aa3bd3dbff8a4a190114ab96c8e58b6983c6a0981574611f998d84ef1301bab6` |
| 17 | `theorem` | [set_bind_set_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/set-bind-set-bind--37f7fe274814c603866732c5.md) | 110 | `result-track:37f7fe274814c603866732c56966546ce0f2204fd6813f65e5e41a7690929bc4` |
| 18 | `theorem` | [set_bind_map_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/set-bind-map-set--de193717ea1547cfb1025ff8.md) | 114 | `result-track:de193717ea1547cfb1025ff8f46d54d5f17494ff94c0d9641d57d0bd2b9bc43a` |
| 19 | `theorem` | [modifyGetThe_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/modifygetthe-eq--58dcf86608e9ca2db42cd1df.md) | 120 | `result-track:58dcf86608e9ca2db42cd1df5f5d4a808f094d2cb886f53b6d26de85979d8dfe` |
| 20 | `theorem` | [modify_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/modify-eq--cb79ac2bcad39993be265c14.md) | 123 | `result-track:cb79ac2bcad39993be265c140f5ba3cf5c1a2d57222e299a2ec0b2336e12b4e1` |
| 21 | `theorem` | [modifyThe_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/modifythe-eq--663e9a350f70542d31880f16.md) | 126 | `result-track:663e9a350f70542d31880f16dc6f992bd361cd08e6b95358458480e1478a1704` |
| 22 | `theorem` | [getModify_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/getmodify-eq--b070f4342b8f016e230afbe1.md) | 129 | `result-track:b070f4342b8f016e230afbe1562a9c453c5e92e5e7c5422341466a3b2278d484` |
| 23 | `theorem` | [modifyGet_eq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/modifyget-eq--82209ff8fd80d3370f57a8be.md) | 134 | `result-track:82209ff8fd80d3370f57a8be24ee3f28dc6d528ca7f09e01f33337f1bf76a90d` |
| 24 | `theorem` | [modify_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/modify-id--aaf5d13d82f23bb24599b87f.md) | 138 | `result-track:aaf5d13d82f23bb24599b87f13a2fab88db9f4b9bb21998573b893d10931c60c` |
| 25 | `theorem` | [getModify_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/getmodify-id--f6cb101cb20d4e7c3c4ae83c.md) | 141 | `result-track:f6cb101cb20d4e7c3c4ae83cbe922d59e159915067cf8eb1cdf5100a6874d033` |
| 26 | `theorem` | [set_bind_modify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/set-bind-modify--44e64653331c83cc3ba30ec4.md) | 144 | `result-track:44e64653331c83cc3ba30ec484424c890f6f5181545775b0bd3d90dcd285da2a` |
| 27 | `theorem` | [set_bind_modify_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/set-bind-modify-bind--15ec876485b22859fee8d4eb.md) | 147 | `result-track:15ec876485b22859fee8d4eb9768408876e405f15530b746f1e5554b648406b5` |
| 28 | `theorem` | [set_bind_modifyGet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/set-bind-modifyget--c40755563358aa22469904dd.md) | 151 | `result-track:c40755563358aa22469904dd2128be7ba5d1cb04f1706a55350440cade1f7523` |
| 29 | `theorem` | [set_bind_modifyGet_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/set-bind-modifyget-bind--0c0fb9094bf679b2c92fdb17.md) | 154 | `result-track:0c0fb9094bf679b2c92fdb1741f34a6898a5f6a5930617b91a9735806122df94` |
| 30 | `theorem` | [set_bind_getModify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/set-bind-getmodify--904b7d8e45703dc1266b5b92.md) | 157 | `result-track:904b7d8e45703dc1266b5b92eb191fe5987b6de4f20eac9f19c8b44cdd2e1e1c` |
| 31 | `theorem` | [set_bind_getModify_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/set-bind-getmodify-bind--d4364805ee63599800b2cc17.md) | 160 | `result-track:d4364805ee63599800b2cc1713b32fbe0ad540fd991d1809a4729c628d4f4f05` |
| 32 | `theorem` | [modify_bind_modify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/modify-bind-modify--e769a1cac0e74c6308fd0637.md) | 164 | `result-track:e769a1cac0e74c6308fd0637024ed072259dfadee20ebab2abef14eed6bb0c5b` |
| 33 | `theorem` | [modify_bind_modifyGet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/modify-bind-modifyget--167794a43b4a29d43275ba91.md) | 167 | `result-track:167794a43b4a29d43275ba91590828ce872b68aa5d39a370caba0d8d19ed4033` |
| 34 | `theorem` | [getModify_bind_modify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/getmodify-bind-modify--63eb04f4b05b1df915b947d6.md) | 171 | `result-track:63eb04f4b05b1df915b947d6c3a153a1cb494102236472f1f75c856bad2dfb59` |
| 35 | `theorem` | [modify_comm_of_comp_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/modify-comm-of-comp-comm--a057dd899e52df56e65957af.md) | 176 | `result-track:a057dd899e52df56e65957afe562cc8e30ed82bb308aa41c3f0fd5289ffcdaa6` |
| 36 | `theorem` | [modify_bind_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/modify-bind-get--fe8a13681e46d14619a9d944.md) | 180 | `result-track:fe8a13681e46d14619a9d9444583155c66b31ff8f037121a0f003025c3148075` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/instance--7a8dd2663c054158f2c14f6f.md) | 188 | `declaration-track:7a8dd2663c054158f2c14f6f6653f1b9487f9b806ebbf09ca69eb2acf8fd2b42` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/instance--d1ab25efd2485cf154fd8226.md) | 197 | `declaration-track:d1ab25efd2485cf154fd8226755067d9cfa531aa6ddef1096e18c4bbaa83df4c` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/instance--7fe0d353803a01ff41dd258b.md) | 206 | `declaration-track:7fe0d353803a01ff41dd258b953be0056ab7e2286506c9b8c607c62609e14626` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/instance--2d1c63a0773f4a3cd4728ad1.md) | 216 | `declaration-track:2d1c63a0773f4a3cd4728ad15a8f308d5ae41d92fd9265e85926a204d98adf76` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/declarations/instance--a0f1e793a8a6a013f678a59c.md) | 231 | `declaration-track:a0f1e793a8a6a013f678a59cb1b5091a0573cbe9f32e5b3c6e0e76ec9823f026` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
