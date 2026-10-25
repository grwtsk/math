# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Defs.Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c5f7a6a761f308a0bd17ec295e0e66f22aa0c8b",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c5f7a6a761f308a0bd17ec295e0e66f22aa0c8b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SplitIfs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.OfNat` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nat.unaryCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/nat-unarycast--0d08a8da1d47c0f2414ed70b.md) | 37 | `declaration-track:0d08a8da1d47c0f2414ed70b90a3453c42960ac95d39eff6b0c606ad77797171` |
| 2 | `class` | [Nat.AtLeastTwo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/nat-atleasttwo--96c5a2a0f7ba5657b22f59a2.md) | 45 | `declaration-track:96c5a2a0f7ba5657b22f59a2abbf4927c9bc3111b11acc2d9dcec17c88b76a17` |
| 3 | `instance` | [instNatAtLeastTwo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/instnatatleasttwo--d3fcfacb23f08502b7895114.md) | 48 | `declaration-track:d3fcfacb23f08502b7895114c6474f7763ee0efab0cc97d37c938345b442e39f` |
| 4 | `lemma` | [one_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/one-lt--3412884a08c4f95702c5f328.md) | 55 | `result-track:3412884a08c4f95702c5f328f2da9f28452ada9da1fc5438515be1ce60e89df2` |
| 5 | `lemma` | [ne_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/ne-one--e3be4d92336e4729ed777c53.md) | 56 | `result-track:e3be4d92336e4729ed777c530d4f9b3252d33f87616e18f18dfe4c26f16d7407` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/instance--600fed9b75e031b1abd124a8.md) | 65 | `declaration-track:600fed9b75e031b1abd124a84905d53d1b219492dad626b3891c548178a5b287` |
| 7 | `theorem` | [Nat.cast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/nat-cast-ofnat--400fe1cd8d745c51429220c7.md) | 80 | `result-track:400fe1cd8d745c51429220c7dd3f4b9ee03b1ec710b0bc59b8f519c8fec3c995` |
| 8 | `theorem` | [Nat.cast_eq_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/nat-cast-eq-ofnat--cf5df0b8f1d208ac1b10f6a3.md) | 84 | `result-track:cf5df0b8f1d208ac1b10f6a3e256e4e567931f7cd8dabfcf25c8df80da44ba5f` |
| 9 | `class` | [AddMonoidWithOne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/addmonoidwithone--61fb2a3c0253f37aa4da960d.md) | 92 | `declaration-track:61fb2a3c0253f37aa4da960dc97f356d015cc6bd096bb8f031f75d1d72080e74` |
| 10 | `class` | [AddCommMonoidWithOne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/addcommmonoidwithone--dde28f23f502faaa4c32b690.md) | 100 | `declaration-track:dde28f23f502faaa4c32b6908a203fcc8768b3a7c0f9b4438a28dca8986c4ee2` |
| 11 | `theorem` | [cast_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/cast-zero--5980aaebac8a4426cc6593b9.md) | 123 | `result-track:5980aaebac8a4426cc6593b92b5a240ca5f0a830e666ad0fedfb887876c0a53b` |
| 12 | `theorem` | [cast_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/cast-succ--e6b8e7c8445e40443ace8c2c.md) | 130 | `result-track:e6b8e7c8445e40443ace8c2c13185295ca1f884be3e3fd2e87b4fb682bde946c` |
| 13 | `theorem` | [cast_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/cast-add-one--d52a22a0216d3da09e8e4fad.md) | 133 | `result-track:d52a22a0216d3da09e8e4fadf3f18043317ffc021b2b495724de17c1698a0493` |
| 14 | `theorem` | [cast_ite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/cast-ite--3c86383a1e342fe44bb01b50.md) | 137 | `result-track:3c86383a1e342fe44bb01b50dc7083b722bf066c90b672e1f9b70bc61e1a6250` |
| 15 | `theorem` | [cast_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/cast-one--a59fe0bd26da63d7801a4aa2.md) | 146 | `result-track:a59fe0bd26da63d7801a4aa294ac2e38117426eb3a0d499c571c3fa8d3fce306` |
| 16 | `theorem` | [cast_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/cast-add--776fef16b662244f3def77ed.md) | 150 | `result-track:776fef16b662244f3def77ede5d29dda3b9b4c77cd32fb9bb887d96d8d74e4ca` |
| 17 | `def` | [binCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/bincast--5e9c15f42ad73b3af031bbe2.md) | 156 | `declaration-track:5e9c15f42ad73b3af031bbe2e8b143384fb2f2e6aed0abe4796bc40c91e7efc2` |
| 18 | `theorem` | [binCast_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/bincast-eq--be28d05b7589cbc963dca8f1.md) | 163 | `result-track:be28d05b7589cbc963dca8f1b01b6f9ca6657ab6fe665f5cf45339a7e7ad5258` |
| 19 | `theorem` | [cast_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/cast-two--a1f29fb9eea4a82a75cc48a9.md) | 180 | `result-track:a1f29fb9eea4a82a75cc48a9f346ce664220f501f9c30d1851a43d8a3ec2a04d` |
| 20 | `theorem` | [cast_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/cast-three--60291e4d15e337a220b602d5.md) | 182 | `result-track:60291e4d15e337a220b602d5f8a5b7561f3d007a47dfdd02aa5248055cf77ce8` |
| 21 | `theorem` | [cast_four](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/cast-four--ca23ed7d90bc8925778d51c5.md) | 184 | `result-track:ca23ed7d90bc8925778d51c5ef34b5a46cc6aca9bb96d9f1a41bcf64d1285dc7` |
| 22 | `abbrev` | [AddMonoidWithOne.unary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/addmonoidwithone-unary--a20bf8486ee6fe8629004be4.md) | 191 | `declaration-track:a20bf8486ee6fe8629004be45e59bcb4f2cbec806f1263e77c4d3ce9454851b2` |
| 23 | `abbrev` | [AddMonoidWithOne.binary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/addmonoidwithone-binary--3ea989c53c8211edd635b3fc.md) | 195 | `declaration-track:3ea989c53c8211edd635b3fce15f0a79bd9787e276bf2dfce1d8f4c886f854fb` |
| 24 | `theorem` | [one_add_one_eq_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/one-add-one-eq-two--003aceb877656d1c43881740.md) | 203 | `result-track:003aceb877656d1c43881740762919a7f4900125fe216af3229c1bb94d2d6950` |
| 25 | `theorem` | [two_add_one_eq_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/two-add-one-eq-three--d56afeeaa2cdb82b39a75e50.md) | 208 | `result-track:d56afeeaa2cdb82b39a75e50820c927ddbf608f5c6f1ad72a71a44320a8193f5` |
| 26 | `theorem` | [three_add_one_eq_four](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/three-add-one-eq-four--1a78cd48d54f67c38bc4f1a4.md) | 213 | `result-track:1a78cd48d54f67c38bc4f1a4d823a0280163e1681795f3d51c2e23cc2e989f51` |
| 27 | `theorem` | [two_add_two_eq_four](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/two-add-two-eq-four--b25d8029a98dc1b42eca270a.md) | 219 | `result-track:b25d8029a98dc1b42eca270aa8729f9f57dcc0ed5f1717b0518db0f675123030` |
| 28 | `lemma` | [nsmul_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantde59d58763596f43ae8273ae83bff405314bafb66601e064a09cd555c056d812.lean/declarations/nsmul-one--4a13e79ee664d7864588d13b.md) | 225 | `result-track:4a13e79ee664d7864588d13b362ea946ac5be4bcd9134a0a7d40451665773007` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
