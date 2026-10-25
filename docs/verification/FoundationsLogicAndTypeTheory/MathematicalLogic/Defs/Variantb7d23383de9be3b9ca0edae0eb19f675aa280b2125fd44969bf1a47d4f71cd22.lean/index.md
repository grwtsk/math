# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "976393f61104e54b5299d1cfd3f531455f08f007",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `976393f61104e54b5299d1cfd3f531455f08f007`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [AddTorsor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/addtorsor--b8a0e89974ef0597fd58d9a6.md) | 47 | `declaration-track:b8a0e89974ef0597fd58d9a62e4bedd3d53f8e3f8d2e3fb71a936375244eb88d` |
| 2 | `instance` | [addGroupIsAddTorsor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/addgroupisaddtorsor--57d6d3550ddaca5850f5e4d8.md) | 61 | `declaration-track:57d6d3550ddaca5850f5e4d8d7432049ce1b2279a1718a0dd1b28e58b5650791` |
| 3 | `theorem` | [vsub_eq_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/vsub-eq-sub--f82952468911cd43ccd9b498.md) | 69 | `result-track:f82952468911cd43ccd9b49835f177286663658944e580f2c0dda68c580c694b` |
| 4 | `theorem` | [vsub_vadd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/vsub-vadd--f9571bd941f8b7d309324f2f.md) | 79 | `result-track:f9571bd941f8b7d309324f2f8c231ef3f415b58c411829138226e3e33a195816` |
| 5 | `theorem` | [vadd_vsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/vadd-vsub--6f75c52c8f34de8409e5ed10.md) | 85 | `result-track:6f75c52c8f34de8409e5ed10e7a53edce0f3348ab438840e4437e63eee8733a3` |
| 6 | `theorem` | [vadd_right_cancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/vadd-right-cancel--c1fc1692d31fe8f0ee994e44.md) | 90 | `result-track:c1fc1692d31fe8f0ee994e4471e7725de3b9add4fd381416bfde135e67201a96` |
| 7 | `theorem` | [vadd_right_cancel_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/vadd-right-cancel-iff--4c77661925a7df41722872d2.md) | 94 | `result-track:4c77661925a7df41722872d20e071f85a4bd6e159f414aaf49866d04a8071b46` |
| 8 | `theorem` | [vadd_right_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/vadd-right-injective--9decfc01ac97d396980766bf.md) | 99 | `result-track:9decfc01ac97d396980766bff614de81ede34a3f633b32916ae2eef9324b4be7` |
| 9 | `theorem` | [vadd_vsub_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/vadd-vsub-assoc--d65c49eb6d0ac3e75d551c5e.md) | 105 | `result-track:d65c49eb6d0ac3e75d551c5ed4d25b6d8d81488839d35e879f2804cc0434826f` |
| 10 | `theorem` | [vsub_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/vsub-self--e6abc6bcb54001591598e5b5.md) | 111 | `result-track:e6abc6bcb54001591598e5b52bdd58413474bdcb6be4084423de51afb3ca02db` |
| 11 | `theorem` | [eq_of_vsub_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/eq-of-vsub-eq-zero--d5c280a692bb8e39cd62df9c.md) | 115 | `result-track:d5c280a692bb8e39cd62df9cac643b481d1e7053ce9c355c961b0f0bb0dd533d` |
| 12 | `theorem` | [vsub_eq_zero_iff_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/vsub-eq-zero-iff-eq--f05a4d36460fbcfc5b70ca7e.md) | 121 | `result-track:f05a4d36460fbcfc5b70ca7e690458c2269e32d4ac0bf7af6449d5b266e994a1` |
| 13 | `theorem` | [vsub_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/vsub-ne-zero--7cd978ef28395844add5d09e.md) | 124 | `result-track:7cd978ef28395844add5d09e84157414874b8d3e4f23c2d2f8c571d3e019bacf` |
| 14 | `theorem` | [vsub_add_vsub_cancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/vsub-add-vsub-cancel--653ecf9502bf159a06908f2e.md) | 129 | `result-track:653ecf9502bf159a06908f2e31300b661d409f6069f3865000ac20b908fd724c` |
| 15 | `theorem` | [neg_vsub_eq_vsub_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/neg-vsub-eq-vsub-rev--dadd929b3080f768ddaa9b6a.md) | 136 | `result-track:dadd929b3080f768ddaa9b6a2b75fbb903fbae0c64541753139dab212ea509a4` |
| 16 | `theorem` | [vadd_vsub_eq_sub_vsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/vadd-vsub-eq-sub-vsub--825c716a0a06d6c704a475ae.md) | 140 | `result-track:825c716a0a06d6c704a475ae85eaf7414000a23a7da95aba5a240ba559764afd` |
| 17 | `theorem` | [vsub_vadd_eq_vsub_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/vsub-vadd-eq-vsub-sub--5609482e204ca2a11126d19d.md) | 145 | `result-track:5609482e204ca2a11126d19d3e1d9a8ced650bd54aececa1dd55f33bae81486f` |
| 18 | `theorem` | [vsub_sub_vsub_cancel_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/vsub-sub-vsub-cancel-right--e085748f625f4c90a150fea1.md) | 151 | `result-track:e085748f625f4c90a150fea1a8a0a8dee2c98903174463ef608d99601bfe3924` |
| 19 | `theorem` | [eq_vadd_iff_vsub_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/eq-vadd-iff-vsub-eq--c0366c9194c76c8b2ec45431.md) | 157 | `result-track:c0366c9194c76c8b2ec45431df8b404c0b19f8741fa460f20c341286a883acb2` |
| 20 | `theorem` | [vadd_eq_vadd_iff_neg_add_eq_vsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/vadd-eq-vadd-iff-neg-add-eq-vsub--fe2e0cef6918a43c5d1440b7.md) | 160 | `result-track:fe2e0cef6918a43c5d1440b787e1db4747de06de80b5f44faafbe9bb2d4392f9` |
| 21 | `theorem` | [vadd_vsub_vadd_cancel_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/vadd-vsub-vadd-cancel-right--f3da9f67b3a6281659f91bdd.md) | 165 | `result-track:f3da9f67b3a6281659f91bddbd8f4a264ff796d459e57e8cc36e4eaee45e81e2` |
| 22 | `def` | [vaddConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/vaddconst--f47d890018d9bb09706beee6.md) | 175 | `declaration-track:f47d890018d9bb09706beee62b232b6944dc5b45579e7866de622264ac8bb513` |
| 23 | `theorem` | [coe_vaddConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/coe-vaddconst--512d80fc1db05fa31a7dc9b2.md) | 182 | `result-track:512d80fc1db05fa31a7dc9b29398881444d4f4aeb05ccebc4f8e686169af5323` |
| 24 | `theorem` | [coe_vaddConst_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/coe-vaddconst-symm--697741ff28c07f1b1e0432de.md) | 186 | `result-track:697741ff28c07f1b1e0432dee1ad5766ff3c231dda318c52c70a0fd6e0f79462` |
| 25 | `def` | [constVSub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/constvsub--a00fb7a08bc031cd0723a9ab.md) | 190 | `declaration-track:a00fb7a08bc031cd0723a9ab659a540719d0d76ca75f4a3ae258f1993d3a5f72` |
| 26 | `lemma` | [coe_constVSub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/coe-constvsub--b760206befef58fe1a693250.md) | 196 | `result-track:b760206befef58fe1a6932500c646694141a5857cf111f60b1807dd98a9b3989` |
| 27 | `theorem` | [coe_constVSub_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/coe-constvsub-symm--3e5e8ba74a9b0bd29c87293b.md) | 199 | `result-track:3e5e8ba74a9b0bd29c87293bc1a7226988f5eb50327c17312d8f86164f13bf20` |
| 28 | `def` | [constVAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/constvadd--6dae3d57ed8463f2ca1f9b93.md) | 205 | `declaration-track:6dae3d57ed8463f2ca1f9b93085535a1e210179706f046461a9de23c87eaa8ee` |
| 29 | `lemma` | [coe_constVAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/coe-constvadd--3c9921705204623aa00f0d55.md) | 211 | `result-track:3c9921705204623aa00f0d55c633fadc39e4277a05ea4716d03e394ea4c52ae4` |
| 30 | `def` | [pointReflection](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/pointreflection--9175eba7d793152633ab2b54.md) | 218 | `declaration-track:9175eba7d793152633ab2b54103557a05295731ab7120222923cd8905902be03` |
| 31 | `theorem` | [pointReflection_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/pointreflection-apply--2dcbb3b649db729145499b18.md) | 221 | `result-track:2dcbb3b649db729145499b18fdd152ce34e04f67b068a97e1effcdf44326e583` |
| 32 | `theorem` | [pointReflection_vsub_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/pointreflection-vsub-left--fced44b5fbc8eefab7d560cc.md) | 225 | `result-track:fced44b5fbc8eefab7d560ccff11c79b8f8779a465335558a6c75c356ed9fa05` |
| 33 | `theorem` | [pointReflection_vsub_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/pointreflection-vsub-right--5c2314990f9baf7b5b2bf760.md) | 229 | `result-track:5c2314990f9baf7b5b2bf7600741d510595656ce0d33cdb2a11072a13f9c3ae2` |
| 34 | `theorem` | [pointReflection_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/pointreflection-symm--43cee32c9630739cbfe76bfc.md) | 233 | `result-track:43cee32c9630739cbfe76bfc23f9bc532583856a95c4a2a9c4b45f3eeaa1cad3` |
| 35 | `theorem` | [pointReflection_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/pointreflection-self--27b5426d0c4ab08899a16583.md) | 237 | `result-track:27b5426d0c4ab08899a16583bd8d39816c91e88e268aad51e13427a00d89c678` |
| 36 | `theorem` | [pointReflection_involutive](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/pointreflection-involutive--104d2fbe292954a8001d6123.md) | 240 | `result-track:104d2fbe292954a8001d6123f6bd0aade5c455010d0d06f35713d9ed9fc784af` |
| 37 | `theorem` | [AddTorsor.subsingleton_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb7d23383de9be3b9ca0edae0eb19f675aa280b2125fd44969bf1a47d4f71cd22.lean/declarations/addtorsor-subsingleton-iff--38557bc1343a46ae90fd1f0d.md) | 245 | `result-track:38557bc1343a46ae90fd1f0db45c84f327f168353d64a3af7673fec8ad8c5f0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
