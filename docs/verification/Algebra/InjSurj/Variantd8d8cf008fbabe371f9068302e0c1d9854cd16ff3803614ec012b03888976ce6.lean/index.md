# Verification target: GRWTSK.Algebra.InjSurj.Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dff9c373954c6bb439d8911b415d04553e430c6",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/index.md) · [Full source](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dff9c373954c6bb439d8911b415d04553e430c6`.

Source path: `GRWTSK/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Opposites` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.InjSurj` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [leftDistribClass](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/leftdistribclass--01fc20cc7f83d22af2420c52.md) | 31 | `result-track:01fc20cc7f83d22af2420c52bea25c52d26b743012eeaf62361398285661d7d8` |
| 2 | `theorem` | [rightDistribClass](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/rightdistribclass--21cee0bff0a23e1e568eca7e.md) | 36 | `result-track:21cee0bff0a23e1e568eca7ee665c4cfceae44d04606203d7a9e99b735250551` |
| 3 | `abbrev` | [distrib](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/distrib--333f339973c785e11887e474.md) | 45 | `declaration-track:333f339973c785e11887e474ce45255f6403e19b71ba0dc592f42cfe2334722e` |
| 4 | `abbrev` | [hasDistribNeg](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/hasdistribneg--0dc16a1ac8010aba617da1ac.md) | 53 | `declaration-track:0dc16a1ac8010aba617da1aca8427a789208092a66f11f296e02fb4a9f02161b` |
| 5 | `abbrev` | [nonUnitalNonAssocSemiring](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/nonunitalnonassocsemiring--b8fbac4ce1f5f0ce22722980.md) | 62 | `declaration-track:b8fbac4ce1f5f0ce2272298033b36de35875ede8601c211f5a9ac8c018e9cc35` |
| 6 | `abbrev` | [nonUnitalSemiring](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/nonunitalsemiring--32d9469a134d4b8f2c4697f6.md) | 71 | `declaration-track:32d9469a134d4b8f2c4697f60658f6b19ad534db67a5a7158a5f7eb46384bd0b` |
| 7 | `abbrev` | [nonAssocSemiring](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/nonassocsemiring--d8500e3edfdb19cb2d915587.md) | 80 | `declaration-track:d8500e3edfdb19cb2d915587ffc4f092337c85341ec9d6e9c2c215d7ca60c015` |
| 8 | `abbrev` | [semiring](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/semiring--0b2b8537f25f3c0872952f08.md) | 90 | `declaration-track:0b2b8537f25f3c0872952f0863e4a868fa1b434661adae79aec57c77af8e5a18` |
| 9 | `abbrev` | [nonUnitalNonAssocRing](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/nonunitalnonassocring--a7e0e072efd07a122cdaf5dd.md) | 100 | `declaration-track:a7e0e072efd07a122cdaf5dd176437ea8830d44214489152c4f3d567abe1b548` |
| 10 | `abbrev` | [nonUnitalRing](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/nonunitalring--2b539bae7a599d4d08f1cefd.md) | 110 | `declaration-track:2b539bae7a599d4d08f1cefd59865a5c80caac168a4cc590ea56329d360495c2` |
| 11 | `abbrev` | [nonAssocRing](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/nonassocring--c1c718e3972433eae0d2afc0.md) | 120 | `declaration-track:c1c718e3972433eae0d2afc0df9713b4bcc26d71b9a194e24317da246cbced32` |
| 12 | `abbrev` | [ring](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/ring--6b562109b3198b0804cffbd7.md) | 132 | `declaration-track:6b562109b3198b0804cffbd7f82656b243ab4290e78511143ec1135b459f7c38` |
| 13 | `abbrev` | [nonUnitalNonAssocCommSemiring](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/nonunitalnonassoccommsemiring--3b9800e4e23d000559a2c4c8.md) | 144 | `declaration-track:3b9800e4e23d000559a2c4c8928a1e721ded26b7844c98317c4fce339d7816b5` |
| 14 | `abbrev` | [nonUnitalCommSemiring](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/nonunitalcommsemiring--79962551bfc57c74a75b6bae.md) | 153 | `declaration-track:79962551bfc57c74a75b6bae80059b56df05b95df9a0376a5c4870c9f4739c0a` |
| 15 | `abbrev` | [commSemiring](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/commsemiring--242df38938cd0cb7ad3e6c28.md) | 164 | `declaration-track:242df38938cd0cb7ad3e6c288a7ce9df1051d48a00e2344fd4a1ea5e76d638fd` |
| 16 | `abbrev` | [nonUnitalNonAssocCommRing](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/nonunitalnonassoccommring--4dc5789917aae88698067a49.md) | 174 | `declaration-track:4dc5789917aae88698067a4982094181452d5c827fc9578a760f541e789c8f9c` |
| 17 | `abbrev` | [nonUnitalCommRing](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/nonunitalcommring--efa7fcbc5cbb0a919e0aaa41.md) | 184 | `declaration-track:efa7fcbc5cbb0a919e0aaa41d6cc5a97e631bf104e61b06ddfdca89ce4d92ac0` |
| 18 | `abbrev` | [commRing](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/commring--4cd7f48c60571a7660ba8d7b.md) | 194 | `declaration-track:4cd7f48c60571a7660ba8d7b4d27a3bdfffe844d7b9bd9691fecdab44ed6cb66` |
| 19 | `theorem` | [leftDistribClass](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/leftdistribclass--a4fa71afc9a52a71f45d5ed0.md) | 212 | `result-track:a4fa71afc9a52a71f45d5ed0ba34ee24e5acff9c2381a8d933b61f1cca07768d` |
| 20 | `theorem` | [rightDistribClass](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/rightdistribclass--04b23e55d33b11028d0d23ec.md) | 217 | `result-track:04b23e55d33b11028d0d23ec1802ebd0683004c94f7dc6f27d8cd48660f73afe` |
| 21 | `abbrev` | [distrib](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/distrib--25ea55a509693cca230bcf96.md) | 223 | `declaration-track:25ea55a509693cca230bcf96c7815b035b7e19fa61fd064378a2970f7a7cc73f` |
| 22 | `abbrev` | [hasDistribNeg](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/hasdistribneg--145334b48970ad41031a04a6.md) | 234 | `declaration-track:145334b48970ad41031a04a6cfd80b89fcb4d6e82923a499b3499e2c310b47bf` |
| 23 | `abbrev` | [nonUnitalNonAssocSemiring](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/nonunitalnonassocsemiring--372c2e8c8d501551b4078bcd.md) | 242 | `declaration-track:372c2e8c8d501551b4078bcd55b959c3a2be277458af04064e5e1817d7e2edd6` |
| 24 | `abbrev` | [nonUnitalSemiring](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/nonunitalsemiring--d1dfe4fa282da94abec25b36.md) | 251 | `declaration-track:d1dfe4fa282da94abec25b365a4a5a7eb61b5d1015556ac2d2331fa617f16d9c` |
| 25 | `abbrev` | [nonAssocSemiring](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/nonassocsemiring--3c008ecfc887c9f862caff19.md) | 259 | `declaration-track:3c008ecfc887c9f862caff1919aad9190f0c26850a695ebb2a37a6b9a0ead86a` |
| 26 | `abbrev` | [semiring](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/semiring--dea1d4393bea8f5b0e5f2ceb.md) | 269 | `declaration-track:dea1d4393bea8f5b0e5f2ceb9560adff8f56a042ba7d7c0d86c11d60b22f65e0` |
| 27 | `abbrev` | [nonUnitalNonAssocRing](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/nonunitalnonassocring--9d21fa27dffb62bc1530efb8.md) | 279 | `declaration-track:9d21fa27dffb62bc1530efb86ea49d498a2e60523a4bfd2ba05c4d64ed1a6912` |
| 28 | `abbrev` | [nonUnitalRing](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/nonunitalring--2ffcb901d84483df973a4113.md) | 289 | `declaration-track:2ffcb901d84483df973a4113b08d35a420870336543361a33c1f783cbd12678e` |
| 29 | `abbrev` | [nonAssocRing](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/nonassocring--cb515633c51fc4d29f337d90.md) | 299 | `declaration-track:cb515633c51fc4d29f337d90f8695a9dbd05fae3d0d46e94a3b48545691204d0` |
| 30 | `abbrev` | [ring](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/ring--3e432c45ba32dd482f001032.md) | 310 | `declaration-track:3e432c45ba32dd482f0010322598621fdea147479cf05203d223eda736b53906` |
| 31 | `abbrev` | [nonUnitalNonAssocCommSemiring](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/nonunitalnonassoccommsemiring--6521344ba36b64884032e34d.md) | 322 | `declaration-track:6521344ba36b64884032e34d6edaa829be112328ca42ba455a227e07ecf736e0` |
| 32 | `abbrev` | [nonUnitalCommSemiring](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/nonunitalcommsemiring--bac34118f0b239ec67d725c9.md) | 330 | `declaration-track:bac34118f0b239ec67d725c9b01a5aed912ddd00c847ec3abde7522c52f47f9b` |
| 33 | `abbrev` | [commSemiring](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/commsemiring--07fd479c1797c0b8e2bf9fde.md) | 338 | `declaration-track:07fd479c1797c0b8e2bf9fde46e7c624e908fe3fe3f5d2d5b612223b495b5be6` |
| 34 | `abbrev` | [nonUnitalNonAssocCommRing](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/nonunitalnonassoccommring--08c57344c3d278e6c7acc87a.md) | 347 | `declaration-track:08c57344c3d278e6c7acc87a67220c0d2b61948ff93ae8f11e4e4faa4499f528` |
| 35 | `abbrev` | [nonUnitalCommRing](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/nonunitalcommring--a3b1a6bf48de3f350a97a75b.md) | 357 | `declaration-track:a3b1a6bf48de3f350a97a75bad3d8efe0d545431935c9ca2405f7af80aad5c1e` |
| 36 | `abbrev` | [commRing](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/commring--4f693f6d77d835b80e5539e0.md) | 367 | `declaration-track:4f693f6d77d835b80e5539e0edd1ceb4fc0e8c427dc5e2ef42912b46210216b9` |
| 37 | `instance` | [AddOpposite.instHasDistribNeg](../../../../mathematics/Algebra/InjSurj/Variantd8d8cf008fbabe371f9068302e0c1d9854cd16ff3803614ec012b03888976ce6.lean/declarations/addopposite-insthasdistribneg--aa5ac6f12c470d62277c3e14.md) | 380 | `declaration-track:aa5ac6f12c470d62277c3e14932bdae93764c158e393689ffbafd610bcc560f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
