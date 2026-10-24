# Verification target: GRWTSK.Algebra.SemiringM.Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9abbd8d5614d2cafd977a4525e0267448d061d5f",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/index.md) · [Full source](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9abbd8d5614d2cafd977a4525e0267448d061d5f`.

Source path: `GRWTSK/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.CommRing.DenoteExpr` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemiringM.Context](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/semiringm-context--39ce3a93baa65b7e98459c96.md) | 16 | `declaration-track:39ce3a93baa65b7e98459c96d2435db334a1a7e6b46ad678b4af5335474cae48` |
| 2 | `abbrev` | [SemiringM](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/semiringm--9625b0f8ec7b220b46882fe4.md) | 19 | `declaration-track:9625b0f8ec7b220b46882fe41800b5963a4444db0c3df59a75d8adb4ac453e58` |
| 3 | `abbrev` | [SemiringM.run](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/semiringm-run--cbccaab6f91d2c120c877868.md) | 21 | `declaration-track:cbccaab6f91d2c120c877868675ff2545a306d412447ce08302abf25d7cda0c8` |
| 4 | `abbrev` | [getSemiringId](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/getsemiringid--2dae4f03b788c119765efabf.md) | 24 | `declaration-track:2dae4f03b788c119765efabf60be2ea529e9851c0366d9c090a3d5fd5bc852b6` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/instance--ea6fcc9024a100411db4cdc1.md) | 27 | `declaration-track:ea6fcc9024a100411db4cdc16ecc60c038d77a84daaff945ab56b814e03421a3` |
| 6 | `def` | [SemiringM.getCommSemiring](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/semiringm-getcommsemiring--d0ca10e2157caac4ff762f9f.md) | 31 | `declaration-track:d0ca10e2157caac4ff762f9f7fac1f46214d64f975fe7a4350339eb8a6e50c4a` |
| 7 | `def` | [SemiringM.modifyCommSemiring](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/semiringm-modifycommsemiring--4008519f6b1c4991b8443bb3.md) | 39 | `declaration-track:4008519f6b1c4991b8443bb34b0078a13224193a2cb08f9f32f24e54a560a38d` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/instance--920bc0305d451e5ce22581c9.md) | 43 | `declaration-track:920bc0305d451e5ce22581c954817c7e1909b4dda2d7d61bbed130dbc863d4d2` |
| 9 | `def` | [SemiringM.getCommRing](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/semiringm-getcommring--31998b2c7d3d4cc0e7cfb3bc.md) | 47 | `declaration-track:31998b2c7d3d4cc0e7cfb3bc514799207de28b7c2c68d02e21affb2a649d3002` |
| 10 | `def` | [SemiringM.modifyCommRing](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/semiringm-modifycommring--f2b02caea727c5a0cfdf2fe8.md) | 55 | `declaration-track:f2b02caea727c5a0cfdf2fe89d257cb3183e379d4089b098a380c9a9e50ddad0` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/instance--935e4c7e8e45be0e59a9c488.md) | 59 | `declaration-track:935e4c7e8e45be0e59a9c488979df28070d74bb47331edd42ae1cd150a927a65` |
| 12 | `def` | [getToQFn](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/gettoqfn--ad75bb979c38b22a6d21d274.md) | 63 | `declaration-track:ad75bb979c38b22a6d21d274b5e63324dc20c72b6448465de889e12c3feda37a` |
| 13 | `def` | [mkAddRightCancelInst?](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/mkaddrightcancelinst--6b7aaddb79edb0ed213aaf87.md) | 70 | `declaration-track:6b7aaddb79edb0ed213aaf87ed3e828a115318d09fb77248dbada3fbbfc3c018` |
| 14 | `def` | [getAddRightCancelInst?](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/getaddrightcancelinst--79741f3d7373c07ea0ed680b.md) | 76 | `declaration-track:79741f3d7373c07ea0ed680b638d619d98c6b642ebf8aecd1319e5817ab01c05` |
| 15 | `def` | [getAddFn'](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/getaddfn--2cf2ed3c0b21497b20aeee6f.md) | 86 | `declaration-track:2cf2ed3c0b21497b20aeee6f0f3e395d81b6d6c9a54126c1492a7d7260bb7582` |
| 16 | `def` | [getMulFn'](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/getmulfn--fcb52003692088573edbd087.md) | 94 | `declaration-track:fcb52003692088573edbd087f5f8e9136434b8d8273d2363f7903996161bf1f7` |
| 17 | `def` | [getPowFn'](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/getpowfn--3d60629c700c2a6d0a702215.md) | 102 | `declaration-track:3d60629c700c2a6d0a702215e4032c458d56282ec459107b0b996b9396305f5b` |
| 18 | `def` | [getNatCastFn'](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/getnatcastfn--79840379271eb7b8cdaf2b3d.md) | 109 | `declaration-track:79840379271eb7b8cdaf2b3d4a594ae496c1a4d6fe8d550350470b84fdac49ad` |
| 19 | `def` | [getTermSemiringId?](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/gettermsemiringid--b842cdb84ee5451d1f19c214.md) | 118 | `declaration-track:b842cdb84ee5451d1f19c2145d1d3d97427a15897b7b75188f4262b373a451da` |
| 20 | `def` | [setTermSemiringId](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/settermsemiringid--1216d4d5a4f672ea5feb9de6.md) | 121 | `declaration-track:1216d4d5a4f672ea5feb9de608aa5b52b36ffa9feb7a9f59971f3f5adacf94d9` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/instance--c5cbf3f6b05f0578ad9f9795.md) | 129 | `declaration-track:c5cbf3f6b05f0578ad9f9795fbea473749b1455f902ac21ad9655a536f78debe` |
| 22 | `def` | [mkSVarCore](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/mksvarcore--c259b49655e9a16a31fc9c12.md) | 133 | `declaration-track:c259b49655e9a16a31fc9c12774c4a824bb9a140ea2d8d66d293d8c0e33a0648` |
| 23 | `def` | [mkSVar](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/mksvar--e30074390d6dfd94cd37b381.md) | 146 | `declaration-track:e30074390d6dfd94cd37b381d9474fc92c90077a78411aea7028f731cfd4e337` |
| 24 | `def` | [_root_.Lean.Grind.CommRing.Expr.denoteAsRingExpr](../../../../mathematics/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/declarations/root-lean-grind-commring-expr-denoteasringexpr--38376f5c5519f0bd6e6d2202.md) | 149 | `declaration-track:38376f5c5519f0bd6e6d22020ecf6b48825141665320259a696a3d231ddfcbb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
