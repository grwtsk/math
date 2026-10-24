# Verification target: GRWTSK.Algebra.SafePoly.Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3264f215a7b2737b1af72913b3f93a966aef1703",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/index.md) · [Full source](../../../../mathematics/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3264f215a7b2737b1af72913b3f93a966aef1703`.

Source path: `GRWTSK/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.EvalNum` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [applyChar](../../../../mathematics/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/declarations/applychar--e0401c72105178549484ee22.md) | 18 | `declaration-track:e0401c72105178549484ee220cbaa03836b8fa0997071a056a0a33260b459176` |
| 2 | `def` | [addConst](../../../../mathematics/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/declarations/addconst--30b3e1bcd547bff8fdfd70ef.md) | 24 | `declaration-track:30b3e1bcd547bff8fdfd70eff94c2af3cb4800374d04cfc810f93190fb52d09e` |
| 3 | `def` | [mulConst](../../../../mathematics/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/declarations/mulconst--dbd32dec89f944aec9136e21.md) | 27 | `declaration-track:dbd32dec89f944aec9136e210e337d39cbc39f7239ad9199c4f1b49b70aa1712` |
| 4 | `def` | [mulMon](../../../../mathematics/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/declarations/mulmon--5e17f53341e47127b3f24b2f.md) | 30 | `declaration-track:5e17f53341e47127b3f24b2fdfb6b5d401eda238c9f7efdc246747319ba82cb6` |
| 5 | `def` | [combine](../../../../mathematics/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/declarations/combine--447836f258e486c77366687e.md) | 33 | `declaration-track:447836f258e486c77366687e25e03e462fc209af0d1dd708ad88d86a7ce46760` |
| 6 | `def` | [mul](../../../../mathematics/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/declarations/mul--df1e80827cc3e16ddeabc6fd.md) | 49 | `declaration-track:df1e80827cc3e16ddeabc6fda3d1510140c48609fc09831a72b8a06e992aa9cc` |
| 7 | `def` | [pow](../../../../mathematics/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/declarations/pow--f53c95aa3ada7368e83d9aa5.md) | 59 | `declaration-track:f53c95aa3ada7368e83d9aa55aaed0e5a4929474b45b0cb1efb9c8009caf0b06` |
| 8 | `def` | [toPoly](../../../../mathematics/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/declarations/topoly--70f177d7553ab24683607a15.md) | 66 | `declaration-track:70f177d7553ab24683607a153c6d394442e9bec2f756e618a2f69331d5e8405d` |
| 9 | `def` | [_root_.Lean.Grind.CommRing.Expr.toPolyM?](../../../../mathematics/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/declarations/root-lean-grind-commring-expr-topolym--4b343a853187181f05fae6fb.md) | 89 | `declaration-track:4b343a853187181f05fae6fb66715aba367bb1b0509dc68ad1305c55d89fced4` |
| 10 | `def` | [_root_.Lean.Grind.CommRing.Poly.mulConstM](../../../../mathematics/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/declarations/root-lean-grind-commring-poly-mulconstm--57fce8cb152667ec222c6877.md) | 92 | `declaration-track:57fce8cb152667ec222c68775c5e0f3dac3f095f1ae6743e91ed9c2bbdb6c721` |
| 11 | `def` | [_root_.Lean.Grind.CommRing.Poly.mulMonM](../../../../mathematics/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/declarations/root-lean-grind-commring-poly-mulmonm--3feb7762fef4e618c1736828.md) | 95 | `declaration-track:3feb7762fef4e618c17368288b966baf6a44daa95db5419af432e8def437badf` |
| 12 | `def` | [_root_.Lean.Grind.CommRing.Poly.mulM](../../../../mathematics/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/declarations/root-lean-grind-commring-poly-mulm--a5ba8e3aa81d76337ba40fdc.md) | 98 | `declaration-track:a5ba8e3aa81d76337ba40fdce908bd506cd86f17a4fd391166b4ca6ca00f6ef9` |
| 13 | `def` | [_root_.Lean.Grind.CommRing.Poly.combineM](../../../../mathematics/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/declarations/root-lean-grind-commring-poly-combinem--7488a4face4dbe1cc7bf6594.md) | 101 | `declaration-track:7488a4face4dbe1cc7bf6594abd0eca1da971a9956629fb8b004be8851b28ce4` |
| 14 | `def` | [_root_.Lean.Grind.CommRing.Poly.spolM](../../../../mathematics/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/declarations/root-lean-grind-commring-poly-spolm--ac55dc3b15f59ad2022962a4.md) | 104 | `declaration-track:ac55dc3b15f59ad2022962a4077d399abfbcdf4ea92947beffe79e2c83ac4790` |
| 15 | `def` | [_root_.Lean.Grind.CommRing.Mon.findInvNumeralVar?](../../../../mathematics/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/declarations/root-lean-grind-commring-mon-findinvnumeralvar--abf25779cda9479cceef60f7.md) | 120 | `declaration-track:abf25779cda9479cceef60f742ec80af5e26955eb112ad5230e7cb7622791658` |
| 16 | `def` | [_root_.Lean.Grind.CommRing.Poly.findInvNumeralVar?](../../../../mathematics/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/declarations/root-lean-grind-commring-poly-findinvnumeralvar--be247d750b3d656b02ca09f8.md) | 131 | `declaration-track:be247d750b3d656b02ca09f88ceee387b9a2103f29691502d5bc1205ced65718` |
| 17 | `structure` | [SimpResult](../../../../mathematics/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/declarations/simpresult--b258e197367e03cee91ca99e.md) | 144 | `declaration-track:b258e197367e03cee91ca99e0d6248d500aebf7f4433a7d3a8a8cd8332fcbf5b` |
| 18 | `def` | [_root_.Lean.Grind.CommRing.Poly.simpM?](../../../../mathematics/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/declarations/root-lean-grind-commring-poly-simpm--9bac12eb7a5debc8aaa9600e.md) | 165 | `declaration-track:9bac12eb7a5debc8aaa9600eeb00cb118028f8a41d026c8172e22064992670fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
